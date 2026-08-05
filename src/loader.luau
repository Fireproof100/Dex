
local s = {
	Init = function()
		local cloneref = cloneref or function(...) return (...) end
		if game:GetService("CoreGui") == nil then
			script.Parent.Parent = cloneref(game.Players).LocalPlayer.PlayerGui
		elseif gethui == nil then
			script.Parent.Parent = cloneref(game.CoreGui)
		else
			script.Parent.Parent = gethui()
		end
		
		
		local Apps = {}
		local module = {}
		local Main = {Apps = {}}
		local NeedContainer = {} --{["Explorer"] = true,["Properties"] = true}
		require(script.Parent.UI.Normal.Window).Init()
		local Enviorment = require(script.Parent.Modules.Enviorment)(Apps)
		local Intro = require(script.Parent.UI.Normal.Intro).CreateIntro("Loading")
		local AppsL = #script.Parent.Apps:GetChildren()
		local Signal = require(script.Parent.Modules.Signal)
		local LoadSettings = LoadSettings or {}
		Main.LoadAsContainer = function(m : ModuleScript)
			local container = Instance.new("ScreenGui",script.Parent)
			container.Name = "Window"
			local frm = Instance.new("Frame",container)
			frm.BackgroundColor3 = Enviorment.Settings.Theme.Main1
			frm.BorderSizePixel = 0
			frm.Visible = true
			return require(m).Init(true,frm)
		end
		
		
		Intro.SetProgress("Fetching API",1/(AppsL + 2)*1)
		Enviorment.API = Enviorment.FetchAPI()
		Intro.SetProgress("Fetching RMD",1/(AppsL + 2)*2)
		Enviorment.RMD = Enviorment.FetchRMD()
		for i,v  in script.Parent.Apps:GetChildren() do
			Intro.SetProgress("Loading App: " .. v.Name,1/(AppsL + 2)*(i+2))
			local result = table.pack(true,NeedContainer[v.Name] == true and Main.LoadAsContainer(v) or require(v).Init())
			Apps[v.Name] = result[2];warn("App ",result)

			if result[1] ~= true then
				Intro.SetProgress("Failed Loading App: " .. v.Name,1/(AppsL+2)*(i+2))
				task.wait(5)
			else
				Intro.SetProgress("Loaded App: " .. v.Name,1/(AppsL+2)*(i+2))
				task.wait(0.25)
			end

		end
		Main.CreateApp = function(data)
			if Main.Apps[data.Name] then return end -- TODO: Handle conflict
			local control = {}

			local app = Main.AppTemplate:Clone()

			local iconIndex = data.Icon
			if data.IconMap and iconIndex then
				if type(iconIndex) == "number" then
					data.IconMap:Display(app.Main.Icon,iconIndex)
				elseif type(iconIndex) == "string" then
					data.IconMap:DisplayByKey(app.Main.Icon,iconIndex)
				end
			elseif type(iconIndex) == "string" then
				app.Main.Icon.Image = iconIndex
			else
				app.Main.Icon.Image = ""
			end

			local function updateState()
				app.Main.BackgroundTransparency = data.Open and 0 or (Enviorment.CheckMouseInGui(app.Main) and 0 or 1)
				app.Main.Highlight.Visible = data.Open
			end

			local function enable(silent)
				if data.Open then return end
				data.Open = true
				updateState()
				if not silent then
					if data.Window then data.Window:Show() end
					if data.OnClick then data.OnClick(data.Open) end
				end
			end

			local function disable(silent)
				if not data.Open then return end
				data.Open = false
				updateState()
				if not silent then
					if data.Window then data.Window:Hide() end
					if data.OnClick then data.OnClick(data.Open) end
				end
			end

			updateState()

			local ySize = Enviorment.service.TextService:GetTextSize(data.Name,14,Enum.Font.SourceSans,Vector2.new(62,999999)).Y
			app.Main.Size = UDim2.new(1,0,0,math.clamp(46+ySize,60,74))
			app.Main.AppName.Text = data.Name

			app.Main.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					app.Main.BackgroundTransparency = 0
					app.Main.BackgroundColor3 = Enviorment.Settings.Theme.ButtonHover
				end
			end)

			app.Main.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					app.Main.BackgroundTransparency = data.Open and 0 or 1
					app.Main.BackgroundColor3 = Enviorment.Settings.Theme.Button
				end
			end)

			app.Main.MouseButton1Click:Connect(function()
				if data.Open then disable() else enable() end
			end)

			local window = data.Window
			if window then
				window.OnActivate:Connect(function() enable(true) end)
				window.OnDeactivate:Connect(function() disable(true) end)
			end

			app.Visible = true
			app.Parent = Main.AppsContainer
			Main.AppsFrame.CanvasSize = UDim2.new(0,0,0,Main.AppsContainerGrid.AbsoluteCellCount.Y*82 + 8)

			control.Enable = enable
			control.Disable = disable
			Main.Apps[data.Name] = control
			return control
		end
		--MainGuiCloseTime = 2
		Main.SetMainGuiOpen = function(val)
			Main.MainGuiOpen = val

			Main.MainGui.OpenButton.Text = val and "X" or "Dex"
			if val then Main.MainGui.OpenButton.MainFrame.Visible = true end
			Main.MainGui.OpenButton.MainFrame:TweenSize(val and UDim2.new(0,224,0,200) or UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.2,true)
			--Main.MainGui.OpenButton.BackgroundTransparency = val and 0 or (Lib.CheckMouseInGui(Main.MainGui.OpenButton) and 0 or 0.2)
			Enviorment.TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = val and 0 or (Enviorment.CheckMouseInGui(Main.MainGui.OpenButton) and 0 or 0.2)}):Play()

			if Main.MainGuiMouseEvent then Main.MainGuiMouseEvent:Disconnect() end

			if not val then
				local startTime = tick()
				Main.MainGuiCloseTime = startTime
				coroutine.wrap(function()
					Enviorment.FastWait(0.2)
					if not Main.MainGuiOpen and startTime == Main.MainGuiCloseTime then Main.MainGui.OpenButton.MainFrame.Visible = false end
				end)()
			else
				Main.MainGuiMouseEvent = Enviorment.service.UserInputService.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and not Enviorment.CheckMouseInGui(Main.MainGui.OpenButton) and not Enviorment.CheckMouseInGui(Main.MainGui.OpenButton.MainFrame) then
						Main.SetMainGuiOpen(false)
					end
				end)
			end
		end
		CreateMainGui = function()
			local gui = create({
				{1,"ScreenGui",{IgnoreGuiInset=true,Name="MainMenu",}},
				{2,"TextButton",{AnchorPoint=Vector2.new(0.5,0),AutoButtonColor=false,BackgroundColor3=Color3.new(0.17647059261799,0.17647059261799,0.17647059261799),BorderSizePixel=0,Font=4,Name="OpenButton",Parent={1},Position=UDim2.new(0.5,0,0,2),Size=UDim2.new(0,32,0,32),Text="Dex",TextColor3=Color3.new(1,1,1),TextSize=16,TextTransparency=0.20000000298023,}},
				{3,"UICorner",{CornerRadius=UDim.new(0,4),Parent={2},}},
				{4,"Frame",{AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.new(0.17647059261799,0.17647059261799,0.17647059261799),ClipsDescendants=true,Name="MainFrame",Parent={2},Position=UDim2.new(0.5,0,1,-4),Size=UDim2.new(0,224,0,200),}},
				{5,"UICorner",{CornerRadius=UDim.new(0,4),Parent={4},}},
				{6,"Frame",{BackgroundColor3=Color3.new(0.20392157137394,0.20392157137394,0.20392157137394),Name="BottomFrame",Parent={4},Position=UDim2.new(0,0,1,-24),Size=UDim2.new(1,0,0,24),}},
				{7,"UICorner",{CornerRadius=UDim.new(0,4),Parent={6},}},
				{8,"Frame",{BackgroundColor3=Color3.new(0.20392157137394,0.20392157137394,0.20392157137394),BorderSizePixel=0,Name="CoverFrame",Parent={6},Size=UDim2.new(1,0,0,4),}},
				{9,"Frame",{BackgroundColor3=Color3.new(0.1294117718935,0.1294117718935,0.1294117718935),BorderSizePixel=0,Name="Line",Parent={8},Position=UDim2.new(0,0,0,-1),Size=UDim2.new(1,0,0,1),}},
				{10,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Settings",Parent={6},Position=UDim2.new(1,-48,0,0),Size=UDim2.new(0,24,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,}},
				{11,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://6578871732",ImageTransparency=0.20000000298023,Name="Icon",Parent={10},Position=UDim2.new(0,4,0,4),Size=UDim2.new(0,16,0,16),}},
				{12,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Information",Parent={6},Position=UDim2.new(1,-24,0,0),Size=UDim2.new(0,24,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,}},
				{13,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://6578933307",ImageTransparency=0.20000000298023,Name="Icon",Parent={12},Position=UDim2.new(0,4,0,4),Size=UDim2.new(0,16,0,16),}},
				{14,"ScrollingFrame",{Active=true,AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.1294117718935,0.1294117718935,0.1294117718935),BorderSizePixel=0,Name="AppsFrame",Parent={4},Position=UDim2.new(0.5,0,0,0),ScrollBarImageColor3=Color3.new(0,0,0),ScrollBarThickness=4,Size=UDim2.new(0,222,1,-25),}},
				{15,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Container",Parent={14},Position=UDim2.new(0,7,0,8),Size=UDim2.new(1,-14,0,2),}},
				{16,"UIGridLayout",{CellSize=UDim2.new(0,66,0,74),Parent={15},SortOrder=2,}},
				{17,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="App",Parent={1},Size=UDim2.new(0,100,0,100),Visible=false,}},
				{18,"TextButton",{AutoButtonColor=false,BackgroundColor3=Color3.new(0.2352941185236,0.2352941185236,0.2352941185236),BorderSizePixel=0,Font=3,Name="Main",Parent={17},Size=UDim2.new(1,0,0,60),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,}},
				{19,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://6579106223",ImageRectSize=Vector2.new(32,32),Name="Icon",Parent={18},Position=UDim2.new(0.5,-16,0,4),ScaleType=4,Size=UDim2.new(0,32,0,32),}},
				{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="AppName",Parent={18},Position=UDim2.new(0,2,0,38),Size=UDim2.new(1,-4,1,-40),Text="Explorer",TextColor3=Color3.new(1,1,1),TextSize=14,TextTransparency=0.10000000149012,TextTruncate=1,TextWrapped=true,TextYAlignment=0,}},
				{21,"Frame",{BackgroundColor3=Color3.new(0,0.66666668653488,1),BorderSizePixel=0,Name="Highlight",Parent={18},Position=UDim2.new(0,0,1,-2),Size=UDim2.new(1,0,0,2),}},
			})
			Main.MainGui = gui
			Main.AppsFrame = gui.OpenButton.MainFrame.AppsFrame
			Main.AppsContainer = Main.AppsFrame.Container
			Main.AppsContainerGrid = Main.AppsContainer.UIGridLayout
			Main.AppTemplate = gui.App
			Main.MainGuiOpen = false

			local openButton = gui.OpenButton
			openButton.BackgroundTransparency = 0.2
			openButton.MainFrame.Size = UDim2.new(0,0,0,0)
			openButton.MainFrame.Visible = false
			openButton.MouseButton1Click:Connect(function()
				Main.SetMainGuiOpen(not Main.MainGuiOpen)
			end)

			openButton.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					Enviorment.TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
				end
			end)

			openButton.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					Enviorment.TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = Main.MainGuiOpen and 0 or 0.2}):Play()
				end
			end)

			-- Create Main Apps
			Main.CreateApp({Name = "Explorer", IconMap = Enviorment.LargeIcons, Icon = "Explorer", Open = true, Window = Apps.Explorer.Window})

			Main.CreateApp({Name = "Properties", IconMap = Enviorment.LargeIcons, Icon = "Properties", Open = true, Window = Apps.Properties.Window})

			Main.CreateApp({Name = "Script Viewer", IconMap = Enviorment.LargeIcons, Icon = "Script_Viewer", Window = Apps.ScriptViewer.Window})
			

			local cptsOnMouseClick = nil
			Main.CreateApp({Name = "Click part to select", IconMap = Enviorment.LargeIcons, Icon = "Book", OnClick = function(callback)
				if callback then
					local mouse = Enviorment.Mouse
					cptsOnMouseClick = mouse.Button1Down:Connect(function()
						pcall(function()
							local object = mouse.Target
							Apps.Explorer.Window:Show()
							Apps.Explorer.StopSearch()
							Apps.Explorer.ViewObject(object)
						end)
					end)
				else if cptsOnMouseClick ~= nil then cptsOnMouseClick:Disconnect() cptsOnMouseClick = nil end end
			end})
			
			Main.CreateApp({Name = "Console", IconMap = Enviorment.LargeIcons, Icon = "Output", Window = Apps.Console.Window})
			
			Main.CreateApp({Name = "Save Instance", IconMap = Enviorment.LargeIcons, Icon = "Watcher", Window = Apps.SaveInstance.Window})
			
			if LoadSettings.Beta then
				Main.CreateApp({Name = "Function Interface", IconMap = Enviorment.LargeIcons, Icon = "Watcher", Window = Apps.Interface.Window})
			end
			
			
			
			--Main.CreateApp({Name = "Remote Spy", IconMap = Enviorment.LargeIcons, Icon = "Script_Viewer", Window = Apps.RemoteSpy.Window})
			--Lib.ShowGui(gui)
			gui.Parent = script.Parent
		end
		CreateMainGui()
		Enviorment.AppSignal:Connect(function(appName,callback)
			if appName == "Loader" then
				return callback(Apps,Main)
			end
		end)
		Enviorment.UsePluginAPI = true
		local PluginAPI = require(script.Parent.Modules.PluginAPI)
		if getgenv ~= nil then
			getgenv().Dex = PluginAPI
		else
			_G.Dex = PluginAPI
		end
		Enviorment.PluginAPI = PluginAPI
		Apps.Explorer.Window:Show({ Align = "right", Pos = 1, Size = 0.5, Silent = true })
		Apps.Properties.Window:Show({ Align = "right", Pos = 2, Size = 0.5, Silent = true })
		if Apps.ExplorerDex then
			Apps.ExplorerDex.Window:Show({ Align = "right", Pos = 1, Size = 0.5, Silent = true })
		end
		Intro.SetProgress("Done",1)
		task.wait(1)
		Intro.Close()
	end
}
return s
