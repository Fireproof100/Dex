--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 41 | Scripts: 0 | Modules: 34 | Tags: 0
local G2L = {};

-- StarterGui.dex
local cloneref = cloneref or function(...) return (...) end
local gethui = gethui or function() local s,_ = pcall(function() cloneref(game.CoreGui):GetFullName() end); if s then return cloneref(game.CoreGui) end;return cloneref(game.Players).LocalPlayer.PlayerGui; end
G2L["1"] = Instance.new("ScreenGui", gethui());
G2L["1"]["Enabled"] = false;
G2L["1"]["Name"] = [[dex]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.dex.Loader
G2L["2"] = Instance.new("ModuleScript", G2L["1"]);
G2L["2"]["Name"] = [[Loader]];


-- StarterGui.dex.UI
G2L["3"] = Instance.new("Folder", G2L["1"]);
G2L["3"]["Name"] = [[UI]];


-- StarterGui.dex.UI.Info
G2L["4"] = Instance.new("ModuleScript", G2L["3"]);
G2L["4"]["Name"] = [[Info]];


-- StarterGui.dex.UI.Base
G2L["5"] = Instance.new("Folder", G2L["3"]);
G2L["5"]["Name"] = [[Base]];


-- StarterGui.dex.UI.Base.Label
G2L["6"] = Instance.new("ModuleScript", G2L["5"]);
G2L["6"]["Name"] = [[Label]];


-- StarterGui.dex.UI.Base.IconMap
G2L["7"] = Instance.new("ModuleScript", G2L["5"]);
G2L["7"]["Name"] = [[IconMap]];


-- StarterGui.dex.UI.Base.Set
G2L["8"] = Instance.new("ModuleScript", G2L["5"]);
G2L["8"]["Name"] = [[Set]];


-- StarterGui.dex.UI.Base.ViewportTextBox
G2L["9"] = Instance.new("ModuleScript", G2L["5"]);
G2L["9"]["Name"] = [[ViewportTextBox]];


-- StarterGui.dex.UI.Base.ClickSystem
G2L["a"] = Instance.new("ModuleScript", G2L["5"]);
G2L["a"]["Name"] = [[ClickSystem]];


-- StarterGui.dex.UI.Base.Button
G2L["b"] = Instance.new("ModuleScript", G2L["5"]);
G2L["b"]["Name"] = [[Button]];


-- StarterGui.dex.UI.Base.SmallCodeBox
G2L["c"] = Instance.new("ModuleScript", G2L["5"]);
G2L["c"]["Name"] = [[SmallCodeBox]];


-- StarterGui.dex.UI.Base.Checkbox
G2L["d"] = Instance.new("ModuleScript", G2L["5"]);
G2L["d"]["Name"] = [[Checkbox]];


-- StarterGui.dex.UI.Base.Frame
G2L["e"] = Instance.new("ModuleScript", G2L["5"]);
G2L["e"]["Name"] = [[Frame]];


-- StarterGui.dex.UI.Normal
G2L["f"] = Instance.new("Folder", G2L["3"]);
G2L["f"]["Name"] = [[Normal]];


-- StarterGui.dex.UI.Normal.TreeView
G2L["10"] = Instance.new("ModuleScript", G2L["f"]);
G2L["10"]["Name"] = [[TreeView]];


-- StarterGui.dex.UI.Normal.ScrollBar
G2L["11"] = Instance.new("ModuleScript", G2L["f"]);
G2L["11"]["Name"] = [[ScrollBar]];


-- StarterGui.dex.UI.Normal.Window
G2L["12"] = Instance.new("ModuleScript", G2L["f"]);
G2L["12"]["Name"] = [[Window]];


-- StarterGui.dex.UI.Normal.ContextMenu
G2L["13"] = Instance.new("ModuleScript", G2L["f"]);
G2L["13"]["Name"] = [[ContextMenu]];


-- StarterGui.dex.UI.Normal.Intro
G2L["14"] = Instance.new("ModuleScript", G2L["f"]);
G2L["14"]["Name"] = [[Intro]];


-- StarterGui.dex.UI.Normal.SSI
G2L["15"] = Instance.new("ModuleScript", G2L["f"]);
G2L["15"]["Name"] = [[SSI]];


-- StarterGui.dex.UI.Normal.ArgumentPrompt
G2L["16"] = Instance.new("ModuleScript", G2L["f"]);
G2L["16"]["Name"] = [[ArgumentPrompt]];


-- StarterGui.dex.UI.Normal.FunctionResult
G2L["17"] = Instance.new("ModuleScript", G2L["f"]);
G2L["17"]["Name"] = [[FunctionResult]];


-- StarterGui.dex.UI.Normal.CodeFrame
G2L["18"] = Instance.new("ModuleScript", G2L["f"]);
G2L["18"]["Name"] = [[CodeFrame]];


-- StarterGui.dex.UI.Normal.DropDown
G2L["19"] = Instance.new("ModuleScript", G2L["f"]);
G2L["19"]["Name"] = [[DropDown]];


-- StarterGui.dex.UI.Normal.ColorPicker
G2L["1a"] = Instance.new("ModuleScript", G2L["f"]);
G2L["1a"]["Name"] = [[ColorPicker]];


-- StarterGui.dex.UI.Normal.ColorSequenceEditor
G2L["1b"] = Instance.new("ModuleScript", G2L["f"]);
G2L["1b"]["Name"] = [[ColorSequenceEditor]];


-- StarterGui.dex.UI.Icons
G2L["1c"] = Instance.new("Folder", G2L["3"]);
G2L["1c"]["Name"] = [[Icons]];


-- StarterGui.dex.UI.Icons.NewDark
G2L["1d"] = Instance.new("ModuleScript", G2L["1c"]);
G2L["1d"]["Name"] = [[NewDark]];


-- StarterGui.dex.Modules
G2L["1e"] = Instance.new("Folder", G2L["1"]);
G2L["1e"]["Name"] = [[Modules]];


-- StarterGui.dex.Modules.Enviorment
G2L["1f"] = Instance.new("ModuleScript", G2L["1e"]);
G2L["1f"]["Name"] = [[Enviorment]];


-- StarterGui.dex.Modules.Functions
G2L["20"] = Instance.new("ModuleScript", G2L["1e"]);
G2L["20"]["Name"] = [[Functions]];


-- StarterGui.dex.Modules.Signal
G2L["21"] = Instance.new("ModuleScript", G2L["1e"]);
G2L["21"]["Name"] = [[Signal]];


-- StarterGui.dex.Modules.Highlighter
G2L["22"] = Instance.new("ModuleScript", G2L["1e"]);
G2L["22"]["Name"] = [[Highlighter]];


-- StarterGui.dex.Modules.PluginAPI
G2L["23"] = Instance.new("ModuleScript", G2L["1e"]);
G2L["23"]["Name"] = [[PluginAPI]];


-- StarterGui.dex.Apps
G2L["24"] = Instance.new("Folder", G2L["1"]);
G2L["24"]["Name"] = [[Apps]];


-- StarterGui.dex.Apps.Explorer
G2L["25"] = Instance.new("ModuleScript", G2L["24"]);
G2L["25"]["Name"] = [[Explorer]];


-- StarterGui.dex.Apps.ScriptViewer
G2L["26"] = Instance.new("ModuleScript", G2L["24"]);
G2L["26"]["Name"] = [[ScriptViewer]];


-- StarterGui.dex.Apps.Properties
G2L["27"] = Instance.new("ModuleScript", G2L["24"]);
G2L["27"]["Name"] = [[Properties]];


-- StarterGui.dex.Apps.Console
G2L["28"] = Instance.new("ModuleScript", G2L["24"]);
G2L["28"]["Name"] = [[Console]];


-- StarterGui.dex.Apps.SaveInstance
G2L["29"] = Instance.new("ModuleScript", G2L["24"]);
G2L["29"]["Name"] = [[SaveInstance]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["2"]] = {
Closure = function()
    local script = G2L["2"];-- Console, Enviorment SaveInstance, Loader, Explorer, Properties, ScriptViewer
--require(game.Players.LocalPlayer.PlayerGui.dex.Loader).Init()
--print(workspace:GetTags())
local s = {
	Init = function()
		local Apps = {}
		local module = {}
		local Main = {Apps = {}}



		require(script.Parent.UI.Normal.Window).Init()
		local Enviorment = require(script.Parent.Modules.Enviorment)(Apps)








		local Intro = require(script.Parent.UI.Normal.Intro).CreateIntro("Loading")
		local AppsL = #script.Parent.Apps:GetChildren()
		Intro.SetProgress("Fetching API",1/(AppsL + 2)*1)
		Enviorment.API = Enviorment.FetchAPI()
		Intro.SetProgress("Fetching RMD",1/(AppsL + 2)*2)
		Enviorment.RMD = Enviorment.FetchRMD()
		for i,v  in script.Parent.Apps:GetChildren() do
			Intro.SetProgress("Loading App: " .. v.Name,1/(AppsL + 2)*(i+2))
			--task.spawn(function()
			local result = table.pack(true,require(v).Init())--table.pack(pcall(require(v).Init))
			Apps[v.Name] = result[2];warn("App ",result)
			--end)
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
				app.Main.BackgroundTransparency = data.Open and 0 or (Lib.CheckMouseInGui(app.Main) and 0 or 1)
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

			local ySize = service.TextService:GetTextSize(data.Name,14,Enum.Font.SourceSans,Vector2.new(62,999999)).Y
			app.Main.Size = UDim2.new(1,0,0,math.clamp(46+ySize,60,74))
			app.Main.AppName.Text = data.Name

			app.Main.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					app.Main.BackgroundTransparency = 0
					app.Main.BackgroundColor3 = Settings.Theme.ButtonHover
				end
			end)

			app.Main.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					app.Main.BackgroundTransparency = data.Open and 0 or 1
					app.Main.BackgroundColor3 = Settings.Theme.Button
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
			TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = val and 0 or (Lib.CheckMouseInGui(Main.MainGui.OpenButton) and 0 or 0.2)}):Play()

			if Main.MainGuiMouseEvent then Main.MainGuiMouseEvent:Disconnect() end

			if not val then
				local startTime = tick()
				Main.MainGuiCloseTime = startTime
				coroutine.wrap(function()
					Lib.FastWait(0.2)
					if not Main.MainGuiOpen and startTime == Main.MainGuiCloseTime then Main.MainGui.OpenButton.MainFrame.Visible = false end
				end)()
			else
				Main.MainGuiMouseEvent = service.UserInputService.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and not Lib.CheckMouseInGui(Main.MainGui.OpenButton) and not Lib.CheckMouseInGui(Main.MainGui.OpenButton.MainFrame) then
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
					TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play()
				end
			end)

			openButton.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					TweenS:Create(Main.MainGui.OpenButton,TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency = Main.MainGuiOpen and 0 or 0.2}):Play()
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
							Apps.Explorer.ViewObject(object)
						end)
					end)
				else if cptsOnMouseClick ~= nil then cptsOnMouseClick:Disconnect() cptsOnMouseClick = nil end end
			end})
			
			Main.CreateApp({Name = "Console", IconMap = Enviorment.LargeIcons, Icon = "Output", Window = Apps.Console.Window})
			
			Main.CreateApp({Name = "Save Instance", IconMap = Enviorment.LargeIcons, Icon = "Watcher", Window = Apps.SaveInstance.Window})

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
		local PluginAPI = require(script.Parent.Modules.PluginAPI)
		if getgenv ~= nil then
			getgenv().Dex = PluginAPI
		else
			_G.Dex = PluginAPI
		end
		Apps.Explorer.Window:Show({ Align = "right", Pos = 1, Size = 0.5, Silent = true })
		Apps.Properties.Window:Show({ Align = "right", Pos = 2, Size = 0.5, Silent = true })
		if Apps.ExplorerDex then
			Apps.ExplorerDex.Window:Show({ Align = "right", Pos = 1, Size = 0.5, Silent = true })
		end
		Intro.SetProgress("Done",1)
		task.wait(1)
		Intro.Close()
	end,
}
return s
end;
};
G2L_MODULES[G2L["4"]] = {
Closure = function()
    local script = G2L["4"];local module = {}
module.Icons = {
	Topbar_Minimize = 	"rbxassetid://5034768003",
	Topbar_Maximize = "rbxassetid://5060023708",
	Topbar_Close = "rbxassetid://5054663650"
} 
module.Topbar_Accent = Color3.fromRGB(38,38,38)
module.BackgroundColor = Color3.fromRGB(43,43,43)
module.MoreAccent = Color3.fromRGB(24,24,24)
module.SelectionColor = Color3.fromRGB(12, 91, 176)
module.Explorer_IndentSeparation = 20 --18
module.Window_ShowTitleOnMiddle = true
module.Window_CornerRadius = 0
module.Window_AnimationTime = 0.2
module.IconPack = "NewDark"
module.BackgroundTransparency = 0.2
return module

end;
};
G2L_MODULES[G2L["6"]] = {
Closure = function()
    local script = G2L["6"];local module = {}
module.New = function(data)
	local data = data or {}
	local new = Instance.new("TextLabel",data.Parent)
	new.BackgroundTransparency = 1
	new.TextXAlignment = Enum.TextXAlignment.Left
	new.Text = data.Text or "???"
	new.Size = data.Size or UDim2.new(0,100,0,20)
	new.TextColor3 = data.Color or Color3.new(1,1,1)
	new.FontFace = Font.fromName("SourceSansPro")
	new.TextSize = 14
	return new
end
module.new = module.New
return module

end;
};
G2L_MODULES[G2L["7"]] = {
Closure = function()
    local script = G2L["7"];local funcs = {}

function funcs:GetLabel()
	local label = Instance.new("ImageLabel")
	self:SetupLabel(label)
	return label
end

function funcs:SetupLabel(label)
	label.BackgroundTransparency = 1
	label.ImageRectOffset = Vector2.new(0, 0)
	label.ImageRectSize = Vector2.new(self.IconSizeX, self.IconSizeY)
	label.ScaleType = Enum.ScaleType.Crop
	label.Size = UDim2.new(0, self.IconSizeX, 0, self.IconSizeY)
end

function funcs:Display(label, index)
	label.Image = self.MapId
	if self.NumX then
		label.ImageRectOffset =
			Vector2.new(self.IconSizeX * (index % self.NumX), self.IconSizeY * math.floor(index / self.NumX))
	else
		label.ImageRectOffset = Vector2.new(self.IconSizeX * index, 0)
	end
end

function funcs:DisplayByKey(label, key)
	local index = self.IndexDict[key]
	if index then
		self:Display(label, index)
	end
end

function funcs:SetDict(dict)
	self.IndexDict = dict
end

local mt = {}
mt.__index = funcs

local function new(mapId, mapSizeX, mapSizeY, iconSizeX, iconSizeY)
	local obj = setmetatable({
		MapId = mapId,
		MapSizeX = mapSizeX,
		MapSizeY = mapSizeY,
		IconSizeX = iconSizeX,
		IconSizeY = iconSizeY,
		NumX = mapSizeX / iconSizeX,
		IndexDict = {},
	}, mt)
	return obj
end

local function newLinear(mapId, iconSizeX, iconSizeY)
	local obj = setmetatable({
		MapId = mapId,
		IconSizeX = iconSizeX,
		IconSizeY = iconSizeY,
		IndexDict = {},
	}, mt)
	return obj
end

return { new = new, newLinear = newLinear }
end;
};
G2L_MODULES[G2L["8"]] = {
Closure = function()
    local script = G2L["8"];local Signal = require(script.Parent.Parent.Parent.Modules.Signal)

local funcs = {}

function funcs:Add(obj)
	if self.Map[obj] then
		return
	end

	local list = self.List
	list[#list + 1] = obj
	self.Map[obj] = true
	self.Changed:Fire()
end

function funcs:AddTable(objects)
	local hasChanged = false
	local list, map = self.List, self.Map
	for _, obj in objects do
		if not map[obj] then
			list[#list + 1] = obj
			map[obj] = true
			hasChanged = true
		end
	end
	if hasChanged then
		self.Changed:Fire()
	end
end

function funcs:Remove(obj)
	if not self.Map[obj] then
		return
	end

	local list = self.List
	local position = table.find(list, obj)
	if position then
		table.remove(list, position)
	end
	self.Map[obj] = nil
	self.Changed:Fire()
end

function funcs:RemoveTable(objects)
	local hasChanged = false
	local list, map = self.List, self.Map
	local removalSet = {}
	for _, obj in objects do
		map[obj] = nil
		removalSet[obj] = true
	end

	for i = #list, 1, -1 do
		local obj = list[i]
		if removalSet[obj] then
			table.remove(list, i)
			hasChanged = true
		end
	end
	if hasChanged then
		self.Changed:Fire()
	end
end

function funcs:Set(obj)
	if #self.List == 1 and self.List[1] == obj then
		return
	end

	self.List = { obj }
	self.Map = { [obj] = true }
	self.Changed:Fire()
end

function funcs:SetTable(objects)
	local newList, newMap = {}, {}
	self.List, self.Map = newList, newMap
	table.move(objects, 1, #objects, 1, newList)
	for _, obj in objects do
		newMap[obj] = true
	end
	self.Changed:Fire()
end

function funcs:Clear()
	if #self.List == 0 then
		return
	end
	self.List = {}
	self.Map = {}
	self.Changed:Fire()
end

local mt = { __index = funcs }

local function new()
	local obj = setmetatable({
		List = {},
		Map = {},
		Changed = Signal.new(),
	}, mt)

	return obj
end

return { new = new }
end;
};
G2L_MODULES[G2L["9"]] = {
Closure = function()
    local script = G2L["9"];require(script.Parent.Parent.Parent.Modules.Enviorment)()

local textService = TextService

local function initObj(props, mt)
	local function copy(t)
		local res = {}
		for i, v in pairs(t) do
			if type(v) == "table" then
				res[i] = copy(v)
			else
				res[i] = v
			end
		end
		return res
	end

	local newObj = copy(props)
	return setmetatable(newObj, mt)
end
local function getGuiMT(props, funcs)
	return {
		__index = function(self, ind)
			if not props[ind] then
				return funcs[ind] or self.Gui[ind]
			end
		end,
		__newindex = function(self, ind, val)
			if not props[ind] then
				self.Gui[ind] = val
			else
				rawset(self, ind, val)
			end
		end,
	}
end

local props = {
	OffsetX = 0,
	TextBox = newproxy(),
	CursorPos = -1,
	Gui = newproxy(),
	View = newproxy(),
}
local funcs = {}
funcs.Update = function(self)
	local cursorPos = self.CursorPos or -1
	local text = self.TextBox.Text
	if text == "" then
		self.TextBox.Position = UDim2.new(0, 0, 0, 0)
		return
	end
	if cursorPos == -1 then
		return
	end

	local cursorText = text:sub(1, cursorPos - 1)
	local pos = nil
	local leftEnd = -self.TextBox.Position.X.Offset
	local rightEnd = leftEnd + self.View.AbsoluteSize.X

	local totalTextSize =
		textService:GetTextSize(text, self.TextBox.TextSize, self.TextBox.Font, Vector2.new(999999999, 100)).X
	local cursorTextSize =
		textService:GetTextSize(cursorText, self.TextBox.TextSize, self.TextBox.Font, Vector2.new(999999999, 100)).X

	if cursorTextSize > rightEnd then
		pos = math.max(-1, cursorTextSize - self.View.AbsoluteSize.X + 2)
	elseif cursorTextSize < leftEnd then
		pos = math.max(-1, cursorTextSize - 2)
	elseif totalTextSize < rightEnd then
		pos = math.max(-1, totalTextSize - self.View.AbsoluteSize.X + 2)
	end

	if pos then
		self.TextBox.Position = UDim2.new(0, -pos, 0, 0)
		self.TextBox.Size = UDim2.new(1, pos, 1, 0)
	end
end

funcs.GetText = function(self)
	return self.TextBox.Text
end

funcs.SetText = function(self, text)
	self.TextBox.Text = text
end

local mt = getGuiMT(props, funcs)

local function convert(textbox)
	local obj = initObj(props, mt)

	local view = Instance.new("Frame")
	view.BackgroundTransparency = textbox.BackgroundTransparency
	view.BackgroundColor3 = textbox.BackgroundColor3
	view.BorderSizePixel = textbox.BorderSizePixel
	view.BorderColor3 = textbox.BorderColor3
	view.Position = textbox.Position
	view.Size = textbox.Size
	view.ClipsDescendants = true
	view.Name = textbox.Name
	textbox.BackgroundTransparency = 1
	textbox.Position = UDim2.new(0, 0, 0, 0)
	textbox.Size = UDim2.new(1, 0, 1, 0)
	textbox.TextXAlignment = Enum.TextXAlignment.Left
	textbox.Name = "Input"

	obj.TextBox = textbox
	obj.View = view
	obj.Gui = view

	textbox.Changed:Connect(function(prop)
		if prop == "Text" or prop == "CursorPosition" or prop == "AbsoluteSize" then
			local cursorPos = obj.TextBox.CursorPosition
			if cursorPos ~= -1 then
				obj.CursorPos = cursorPos
			end
			obj:Update()
		end
	end)

	obj:Update()

	view.Parent = textbox.Parent
	textbox.Parent = view

	return obj
end

local function new()
	local textBox = Instance.new("TextBox")
	textBox.Size = UDim2.new(0, 100, 0, 20)
	textBox.BackgroundColor3 = Settings.Theme.TextBox
	textBox.BorderColor3 = Settings.Theme.Outline3
	textBox.ClearTextOnFocus = false
	textBox.TextColor3 = Settings.Theme.Text
	textBox.Font = Enum.Font.SourceSans
	textBox.TextSize = 14
	textBox.Text = ""
	return convert(textBox)
end

return { new = new, convert = convert }
end;
};
G2L_MODULES[G2L["a"]] = {
Closure = function()
    local script = G2L["a"];local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Env = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local UserInputService: UserInputService = UIS


local funcs = {
	LastItem = newproxy(),
	OnDown = Signal.new(),
	OnRelease = Signal.new(),
	AllowedButtons = { 1 },
	Combo = 0,
	MaxCombo = 2,
	ComboTime = 0.5,
	Items = {},
	ItemCons = {},
	ClickId = -1,
	LastButton = "",
}

funcs.Trigger = function(self, item, button)
	if table.find(self.AllowedButtons, button) then
		if
			self.LastButton ~= button
			or self.LastItem ~= item
			or self.Combo == self.MaxCombo
			or tick() - self.ClickId > self.ComboTime
		then
			self.Combo = 0
			self.LastButton = button
			self.LastItem = item
		end
		self.Combo = self.Combo + 1
		self.ClickId = tick()

		local release
		release = UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType["MouseButton" .. button] then
				release:Disconnect()
				if Lib.CheckMouseInGui(item) and self.LastButton == button and self.LastItem == item then
					self["OnRelease"]:Fire(item, self.Combo, button)
				end
			end
		end)

		self["OnDown"]:Fire(item, self.Combo, button)
	end
end

funcs.Add = function(self, item)
	if table.find(self.Items, item) then
		return
	end

	local cons = {}
	cons[1] = item.MouseButton1Down:Connect(function()
		self:Trigger(item, 1)
	end)
	cons[2] = item.MouseButton2Down:Connect(function()
		self:Trigger(item, 2)
	end)

	self.ItemCons[item] = cons
	self.Items[#self.Items + 1] = item
end

funcs.Remove = function(self, item)
	local ind = table.find(self.Items, item)
	if not ind then
		return
	end

	for i, v in self.ItemCons[item] do
		v:Disconnect()
	end
	self.ItemCons[item] = nil
	table.remove(self.Items, ind)
end

local function new()
	return setmetatable(funcs, {})
end

return { new = new }
end;
};
G2L_MODULES[G2L["b"]] = {
Closure = function()
    local script = G2L["b"];local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)

local Button = {}
Button.__index = Button


function Button.new(mode : number?)
	local b = Instance.new("TextButton")
	local self = setmetatable({}, Button)

	
	b.AutoButtonColor = false
	b.TextColor3 = Enviorment.Settings.Theme.Text
	b.TextTransparency = 0.1
	b.Size = UDim2.new(0, 100, 0, 20)
	b.Font = Enum.Font.SourceSans
	b.TextSize = 14
	b.BackgroundColor3 = Enviorment.Settings.Theme.Button
	b.BorderColor3 = Enviorment.Settings.Theme.Outline2

	self.Gui = b
	self.Anim = Enviorment.ButtonAnim(b, {
		Mode = mode or 2,
		StartColor = Enviorment.Settings.Theme.Button,
		HoverColor = Enviorment.Settings.Theme.ButtonHover,
		PressColor = Enviorment.Settings.Theme.ButtonPress,
		OutlineColor = Enviorment.Settings.Theme.Outline2,
	})
	self.Disabled = false
	self.OnClick = Signal.new()
	self.OnDown = Signal.new()
	self.OnUp = Signal.new()
	self.AllowedButtons = { 1 }

	b.MouseButton1Click:Connect(function()
		self:Trigger("Click", 1)
	end)
	b.MouseButton1Down:Connect(function()
		self:Trigger("Down", 1)
	end)
	b.MouseButton1Up:Connect(function()
		self:Trigger("Up", 1)
	end)

	b.MouseButton2Click:Connect(function()
		self:Trigger("Click", 2)
	end)
	b.MouseButton2Down:Connect(function()
		self:Trigger("Down", 2)
	end)
	b.MouseButton2Up:Connect(function()
		self:Trigger("Up", 2)
	end)

	return self
end

-- Method to trigger events
function Button:Trigger(event, button)
	if not self.Disabled and table.find(self.AllowedButtons, button) then
		if self["On" .. event] then
			self["On" .. event]:Fire(button)
		else
			warn("Attempt to call missing method 'On" .. event .. "' of table")
		end
	end
end

-- Method to set disabled state
function Button:SetDisabled(dis)
	self.Disabled = dis

	if dis then
		self.Anim:Disable()
		self.Gui.TextTransparency = 0.5
	else
		self.Anim:Enable()
		self.Gui.TextTransparency = 0
	end
end

return {
	new = Button.new,
}
end;
};
G2L_MODULES[G2L["c"]] = {
Closure = function()
    local script = G2L["c"];local funcs = {}
funcs.__index = funcs
local static = {}
local ViewportTextBox = require(script.Parent.ViewportTextBox)
funcs.GetText = function(self)
	return self.GuiElems.Int_Box.Text
end
funcs.SetText = function(self,text)
	self.GuiElems.Int_Box.Text = text
end
local highlighter = require(script.Parent.Parent.Parent.Modules.Highlighter)
static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {}	
	},funcs)
	local textbox = ViewportTextBox.new()
	local int_box = textbox.TextBox
	local new_label = Instance.new("TextLabel")
	task.spawn(function()
		while task.wait(0.1) and textbox.Parent ~= nil do
			for _, prop in {"FontFace","TextSize","Size","Position","Parent","TextWrapped","TextStrokeTransparency","TextStrokeColor3","TextColor3","TextScaled","Visible"} do
				new_label[prop] = int_box[prop]
			end
		end
	end)
	int_box.TextTransparency = 0.2
	new_label.RichText = true
	task.spawn(function()
		while task.wait() and textbox.Parent ~= nil do
			new_label.Text = highlighter.run(int_box.Text)
		end
	end)
	new_label.TextXAlignment = Enum.TextXAlignment.Left
	new_label.BackgroundTransparency = 1
	--textbox.BackgroundTransparency =1 
	obj.GuiElems.TextBox = textbox
	obj.GuiElems.Int_Box = int_box
	obj.GuiElems.Label = new_label
	return obj
	
end
return static
end;
};
G2L_MODULES[G2L["d"]] = {
Closure = function()
    local script = G2L["d"];local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Debris: Debris, TweenService: TweenService, UserInputService: UserInputService = Enviorment.service.Debris, Enviorment.TweenS, Enviorment.UIS
local funcs = {}
local c3 = Color3.fromRGB
local v2 = Vector2.new
local ud2s = UDim2.fromScale
local ud2o = UDim2.fromOffset
local ud = UDim.new
local max = math.max
local TweenSize = Instance.new("Frame").TweenSize
local ti = TweenInfo.new
local delay = delay

local function ripple(object, color)
	local circle = Instance.new("Frame")
	circle.BackgroundColor3 = color
	circle.BackgroundTransparency = 0.75
	circle.BorderSizePixel = 0
	circle.AnchorPoint = v2(0.5, 0.5)
	circle.Size = ud2o()
	circle.Position = ud2s(0.5, 0.5)
	circle.Parent = object
	local rounding = Instance.new("UICorner")
	rounding.CornerRadius = ud(1)
	rounding.Parent = circle

	local abssz = object.AbsoluteSize
	local size = max(abssz.X, abssz.Y) * 5 / 3

	TweenSize(circle, ud2o(size, size), "Out", "Quart", 0.4)
	TweenService
		:Create(circle, ti(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { BackgroundTransparency = 1 })
		:Play()

	Debris:AddItem(circle, 0.4)
end

local function initGui(self, frame)
	local checkbox = frame
		or create({
			{
				1,
				"Frame",
				{
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Name = "Checkbox",
					Position = UDim2.new(0, 3, 0, 3),
					Size = UDim2.new(0, 16, 0, 16),
				},
			},
			{
				2,
				"Frame",
				{
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Name = "ripples",
					Parent = { 1 },
					Size = UDim2.new(1, 0, 1, 0),
				},
			},
			{
				3,
				"Frame",
				{
					BackgroundColor3 = Color3.new(0.10196078568697, 0.10196078568697, 0.10196078568697),
					BorderSizePixel = 0,
					Name = "outline",
					Parent = { 1 },
					Size = UDim2.new(0, 16, 0, 16),
				},
			},
			{
				4,
				"Frame",
				{
					BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
					BorderSizePixel = 0,
					Name = "filler",
					Parent = { 3 },
					Position = UDim2.new(0, 1, 0, 1),
					Size = UDim2.new(0, 14, 0, 14),
				},
			},
			{
				5,
				"Frame",
				{
					BackgroundColor3 = Color3.new(0.90196084976196, 0.90196084976196, 0.90196084976196),
					BorderSizePixel = 0,
					Name = "top",
					Parent = { 4 },
					Size = UDim2.new(0, 16, 0, 0),
				},
			},
			{
				6,
				"Frame",
				{
					AnchorPoint = Vector2.new(0, 1),
					BackgroundColor3 = Color3.new(0.90196084976196, 0.90196084976196, 0.90196084976196),
					BorderSizePixel = 0,
					Name = "bottom",
					Parent = { 4 },
					Position = UDim2.new(0, 0, 0, 14),
					Size = UDim2.new(0, 16, 0, 0),
				},
			},
			{
				7,
				"Frame",
				{
					BackgroundColor3 = Color3.new(0.90196084976196, 0.90196084976196, 0.90196084976196),
					BorderSizePixel = 0,
					Name = "left",
					Parent = { 4 },
					Size = UDim2.new(0, 0, 0, 16),
				},
			},
			{
				8,
				"Frame",
				{
					AnchorPoint = Vector2.new(1, 0),
					BackgroundColor3 = Color3.new(0.90196084976196, 0.90196084976196, 0.90196084976196),
					BorderSizePixel = 0,
					Name = "right",
					Parent = { 4 },
					Position = UDim2.new(0, 14, 0, 0),
					Size = UDim2.new(0, 0, 0, 16),
				},
			},
			{
				9,
				"Frame",
				{
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ClipsDescendants = true,
					Name = "checkmark",
					Parent = { 4 },
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 0, 0, 20),
				},
			},
			{
				10,
				"ImageLabel",
				{
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Image = "rbxassetid://6234266378",
					Parent = { 9 },
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ScaleType = 3,
					Size = UDim2.new(0, 15, 0, 11),
				},
			},
			{
				11,
				"ImageLabel",
				{
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					Image = "rbxassetid://6401617475",
					ImageColor3 = Color3.new(0.20784313976765, 0.69803923368454, 0.98431372642517),
					Name = "checkmark2",
					Parent = { 4 },
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 12, 0, 12),
					Visible = false,
				},
			},
			{
				12,
				"ImageLabel",
				{
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 1,
					Image = "rbxassetid://6425281788",
					ImageTransparency = 0.20000000298023,
					Name = "middle",
					Parent = { 4 },
					ScaleType = 2,
					Size = UDim2.new(1, 0, 1, 0),
					TileSize = UDim2.new(0, 2, 0, 2),
					Visible = false,
				},
			},
			{ 13, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 3 } } },
		})
	local outline = checkbox.outline
	local filler = outline.filler
	local checkmark = filler.checkmark
	local ripples_container = checkbox.ripples

	-- walls
	local top, bottom, left, right = filler.top, filler.bottom, filler.left, filler.right

	self.Gui = checkbox
	self.GuiElems = {
		Top = top,
		Bottom = bottom,
		Left = left,
		Right = right,
		Outline = outline,
		Filler = filler,
		Checkmark = checkmark,
		Checkmark2 = filler.checkmark2,
		Middle = filler.middle,
	}

	checkbox.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			local release
			release = UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					release:Disconnect()

					if Lib.CheckMouseInGui(checkbox) then
						if self.Style == 0 then
							ripple(ripples_container, self.Disabled and self.Colors.Disabled or self.Colors.Primary)
						end

						if not self.Disabled then
							self:SetState(not self.Toggled, true)
						else
							self:Paint()
						end

						self.OnInput:Fire()
					end
				end
			end)
		end
	end)

	self:Paint()
end

funcs.Collapse = function(self, anim)
	local guiElems = self.GuiElems
	if anim then
		TweenSize(guiElems.Top, ud2o(14, 14), "In", "Quart", 4 / 15, true)
		TweenSize(guiElems.Bottom, ud2o(14, 14), "In", "Quart", 4 / 15, true)
		TweenSize(guiElems.Left, ud2o(14, 14), "In", "Quart", 4 / 15, true)
		TweenSize(guiElems.Right, ud2o(14, 14), "In", "Quart", 4 / 15, true)
	else
		guiElems.Top.Size = ud2o(14, 14)
		guiElems.Bottom.Size = ud2o(14, 14)
		guiElems.Left.Size = ud2o(14, 14)
		guiElems.Right.Size = ud2o(14, 14)
	end
end

funcs.Expand = function(self, anim)
	local guiElems = self.GuiElems
	if anim then
		TweenSize(guiElems.Top, ud2o(14, 0), "InOut", "Quart", 4 / 15, true)
		TweenSize(guiElems.Bottom, ud2o(14, 0), "InOut", "Quart", 4 / 15, true)
		TweenSize(guiElems.Left, ud2o(0, 14), "InOut", "Quart", 4 / 15, true)
		TweenSize(guiElems.Right, ud2o(0, 14), "InOut", "Quart", 4 / 15, true)
	else
		guiElems.Top.Size = ud2o(14, 0)
		guiElems.Bottom.Size = ud2o(14, 0)
		guiElems.Left.Size = ud2o(0, 14)
		guiElems.Right.Size = ud2o(0, 14)
	end
end

funcs.Paint = function(self)
	local guiElems = self.GuiElems

	if self.Style == 0 then
		local color_base = self.Disabled and self.Colors.Disabled
		guiElems.Outline.BackgroundColor3 = color_base
			or (self.Toggled and self.Colors.Primary)
			or self.Colors.Secondary
		local walls_color = color_base or self.Colors.Primary
		guiElems.Top.BackgroundColor3 = walls_color
		guiElems.Bottom.BackgroundColor3 = walls_color
		guiElems.Left.BackgroundColor3 = walls_color
		guiElems.Right.BackgroundColor3 = walls_color
	else
		guiElems.Outline.BackgroundColor3 = self.Disabled and self.Colors.Disabled or self.Colors.Secondary
		guiElems.Filler.BackgroundColor3 = self.Disabled and self.Colors.DisabledBackground or self.Colors.Background
		guiElems.Checkmark2.ImageColor3 = self.Disabled and self.Colors.DisabledCheck or self.Colors.Primary
	end
end

funcs.SetState = function(self, val, anim)
	self.Toggled = val

	if self.OutlineColorTween then
		self.OutlineColorTween:Cancel()
	end
	local setStateTime = tick()
	self.LastSetStateTime = setStateTime

	if self.Toggled then
		if self.Style == 0 then
			if anim then
				self.OutlineColorTween = TweenService:Create(
					self.GuiElems.Outline,
					ti(4 / 15, Enum.EasingStyle.Circular, Enum.EasingDirection.Out),
					{ BackgroundColor3 = self.Colors.Primary }
				)
				self.OutlineColorTween:Play()
				delay(0.15, function()
					if setStateTime ~= self.LastSetStateTime then
						return
					end
					self:Paint()
					TweenSize(self.GuiElems.Checkmark, ud2o(14, 20), "Out", "Bounce", 2 / 15, true)
				end)
			else
				self.GuiElems.Outline.BackgroundColor3 = self.Colors.Primary
				self:Paint()
				self.GuiElems.Checkmark.Size = ud2o(14, 20)
			end
			self:Collapse(anim)
		else
			self:Paint()
			self.GuiElems.Checkmark2.Visible = true
			self.GuiElems.Middle.Visible = false
		end
	else
		if self.Style == 0 then
			if anim then
				self.OutlineColorTween = TweenService:Create(
					self.GuiElems.Outline,
					ti(4 / 15, Enum.EasingStyle.Circular, Enum.EasingDirection.In),
					{ BackgroundColor3 = self.Colors.Secondary }
				)
				self.OutlineColorTween:Play()
				delay(0.15, function()
					if setStateTime ~= self.LastSetStateTime then
						return
					end
					self:Paint()
					TweenSize(self.GuiElems.Checkmark, ud2o(0, 20), "Out", "Quad", 1 / 15, true)
				end)
			else
				self.GuiElems.Outline.BackgroundColor3 = self.Colors.Secondary
				self:Paint()
				self.GuiElems.Checkmark.Size = ud2o(0, 20)
			end
			self:Expand(anim)
		else
			self:Paint()
			self.GuiElems.Checkmark2.Visible = false
			self.GuiElems.Middle.Visible = self.Toggled == nil
		end
	end
end

local mt = { __index = funcs }

local function new(style)
	local obj = setmetatable({
		Toggled = false,
		Disabled = false,
		OnInput = Signal.new(),
		Style = style or 0,
		Colors = {
			Background = c3(36, 36, 36),
			Primary = c3(49, 176, 230),
			Secondary = c3(25, 25, 25),
			Disabled = c3(64, 64, 64),
			DisabledBackground = c3(52, 52, 52),
			DisabledCheck = c3(80, 80, 80),
		},
	}, mt)
	initGui(obj)
	return obj
end

local function fromFrame(frame)
	local obj = setmetatable({
		Toggled = false,
		Disabled = false,
		Colors = {
			Background = c3(36, 36, 36),
			Primary = c3(49, 176, 230),
			Secondary = c3(25, 25, 25),
			Disabled = c3(64, 64, 64),
			DisabledBackground = c3(52, 52, 52),
		},
	}, mt)
	initGui(obj, frame)
	return obj
end

return { new = new, fromFrame }
end;
};
G2L_MODULES[G2L["e"]] = {
Closure = function()
    local script = G2L["e"];local module = {}

module.new = function()
	local new = {
		Gui = Instance.new("Frame")
	}
	return new
end
module.New = module.new

return module

end;
};
G2L_MODULES[G2L["10"]] = {
Closure = function()
    local script = G2L["10"];function CreateInstance(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end
local TreeView do
	TreeView = {}

	local treeMt = {
		__index = {
			Length = function(self)
				return #self.Tree
			end
		}
	}

	function TreeView.new()
			

		local newMt = setmetatable({
			Index = 0,
			Tree = {},
			Expanded = {},
			NodeTemplate = nil,
			DisplayFrame = nil,
			Entries = {},
			Height = 18,
			OffX = 1,
			OffY = 1
		},treeMt)
		local function createDNodeTemplate()
			if newMt.EntryTemplate then
				return newMt.EntryTemplate:Clone()
			end

			local DNodeTemplate = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.37647062540054,0.54901963472366,0.82745105028152),BackgroundTransparency=1,BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,1,0,2),Rotation=0,Selectable=true,Size=UDim2.new(1,-18,0,18),SizeConstraint=0,Visible=true,ZIndex=1,Name="Entry",})
			local DNodeTemplate2 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=1,BorderColor3=Color3.new(0.14509804546833,0.20784315466881,0.21176472306252),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,18,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-18,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Indent",Parent = DNodeTemplate})
			local DNodeTemplate3 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Item",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,22,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-22,0,18),SizeConstraint=0,Visible=true,ZIndex=1,Name="EntryName",Parent = DNodeTemplate2})
			local DNodeTemplate4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,2,0.5,-8),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="IconFrame",Parent = DNodeTemplate2})
			local DNodeTemplate5 = CreateInstance("ImageLabel",{Image="rbxassetid://529659138",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-5.811999797821,0,-1.3120000362396,0),Rotation=0,Selectable=false,Size=UDim2.new(16,0,16,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Icon",Parent = DNodeTemplate4})
			local DNodeTemplate6 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,-16,0.5,-8),Rotation=0,Selectable=true,Size=UDim2.new(0,16,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Expand",Parent = DNodeTemplate2})
			local DNodeTemplate7 = CreateInstance("ImageLabel",{Image="rbxassetid://529659138",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-12.562000274658,0,-12.562000274658,0),Rotation=0,Selectable=false,Size=UDim2.new(16,0,16,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Icon",Parent = DNodeTemplate6})
			return DNodeTemplate
		end
		local dNodeTemplate = createDNodeTemplate()	
		
		local function refresh(self)
			if not self.DisplayFrame then warn("Tree: No Display Frame") return end
			newMt.NodeTemplate = newMt.NodeTemplate or createDNodeTemplate()
			if self.PreUpdate then self:PreUpdate() end

			local displayFrame = self.DisplayFrame
			local entrySpace = math.ceil(displayFrame.AbsoluteSize.Y / (self.Height + 1))

			for i = 1,entrySpace do
				local node = self.Tree[i + self.Index]
				if node then
					local entry = self.Entries[i]
					if not entry then
						entry = self.NodeTemplate:Clone()
						entry.Position = UDim2.new(0,self.OffX,0,self.OffY + (self.Height + 1) * #displayFrame:GetChildren())
						entry.Parent = displayFrame
						self.Entries[i] = entry
						if self.NodeCreate then self:NodeCreate(entry,i) end
					end
					entry.Visible = true
					if self.NodeDraw then self:NodeDraw(entry,node) end
				else
					local entry = self.Entries[i]
					if entry then
						entry.Visible = false
					end
				end
			end

			for i = entrySpace+1,#self.Entries do
				if self.Entries[i] then
					self.Entries[i]:Destroy()
					self.Entries[i] = nil
				end
			end

			if self.OnUpdate then self:OnUpdate() end
			if self.RefreshNeeded then self.RefreshNeeded = false self:Refresh() end
		end
		newMt.Refresh = refresh

		local function expand(self,item)
			self.Expanded[item] = not self.Expanded[item]
			if self.TreeUpdate then self:TreeUpdate() end
			self:Refresh()
		end
		newMt.Expand = expand

		local Selection do
			Selection = {
				List = {},
				Selected = {}
			}

			function Selection:Add(obj)
				if Selection.Selected[obj] then return end

				Selection.Selected[obj] = true
				table.insert(Selection.List,obj)
			end

			function Selection:Set(objs)
				for i,v in pairs(Selection.List) do
					Selection.Selected[v] = nil
				end
				Selection.List = {}

				for i,v in pairs(objs) do
					if not Selection.Selected[v] then
						Selection.Selected[v] = true
						table.insert(Selection.List,v)
					end
				end
			end

			function Selection:Remove(obj)
				if not Selection.Selected[obj] then return end

				Selection.Selected[obj] = false
				for i,v in pairs(Selection.List) do
					if v == obj then table.remove(Selection.List,i) break end
				end
			end
		end
		newMt.Selection = Selection

		return newMt
	end
end
return TreeView
end;
};
G2L_MODULES[G2L["11"]] = {
Closure = function()
    local script = G2L["11"];local EnviormentModule = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local f = setmetatable({},{__index = function(f,k)
	if rawget(f,k) ~= nil then return rawget(f,k) else return EnviormentModule[k] end
end,})
function f.buttonArrows(size,num,dir)
	local max = num
	local arrowFrame = CreateInstance("Frame",{
		BackgroundTransparency = 1,
		Name = "Arrow",
		Size = UDim2.new(0,size,0,size)
	})
	if dir == "up" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)+i-math.floor(max/2)-1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "down" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)-i+math.floor(max/2)+1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "left" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)+i-math.floor(max/2)-1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "right" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-i+math.floor(max/2)+1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	end
	error("r u ok")
end

local ScrollBar do
	ScrollBar = {}

	local user = EnviormentModule.UIS
	local mouse = EnviormentModule.Mouse
	local function check(s)
		if s.ScrollFrame == nil then return true end
		return s.ScrollFrame.Interactable
	end
	ScrollMt = {
		__index = {
			AddMarker = function(self,ind,color)
				self.Markers[ind] = color or Color3.new(0,0,0)
			end,
			ScrollTo = function(self,ind)
				if check(self) == false then return end
				self.Index = ind
				self:Update()
			end,
			ScrollUp = function(self)
				if check(self) == false then return end
				self.Index = self.Index - self.Increment
				self:Update()
			end,
			ScrollDown = function(self)
				if check(self) == false then return end
				self.Index = self.Index + self.Increment
				self:Update()
			end,
			CanScrollUp = function(self)
				return self.Index > 0
			end,
			CanScrollDown = function(self)
				return self.Index + self.VisibleSpace < self.TotalSpace
			end,
			GetScrollPercent = function(self)
				return self.Index/(self.TotalSpace-self.VisibleSpace)
			end,
			SetScrollPercent = function(self,perc)
				if check(self) == false then return end
				self.Index = math.floor(perc*(self.TotalSpace-self.VisibleSpace))
				self:Update()
			end
		}
	}

	function ScrollBar.new(hor)
		local newFrame = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollBar",})
		local button1 = nil
		local button2 = nil

		local lastTotalSpace = 0

		if hor then
			newFrame.Size = UDim2.new(1,0,0,16)
			button1 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Left",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"left").Parent = button1
			button2 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Right",
				Position = UDim2.new(1,-16,0,0),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"right").Parent = button2
		else
			newFrame.Size = UDim2.new(0,16,1,0)
			button1 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Up",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"up").Parent = button1
			button2 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Down",
				Position = UDim2.new(0,0,1,-16),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"down").Parent = button2
		end

		local scrollThumbFrame = CreateInstance("Frame",{
			BackgroundTransparency = 1,
			Parent = newFrame
		})
		if hor then
			scrollThumbFrame.Position = UDim2.new(0,16,0,0)
			scrollThumbFrame.Size = UDim2.new(1,-32,1,0)
		else
			scrollThumbFrame.Position = UDim2.new(0,0,0,16)
			scrollThumbFrame.Size = UDim2.new(1,0,1,-32)
		end

		local scrollThumb = CreateInstance("Frame",{
			BackgroundColor3 = Color3.new(120/255,120/255,120/255),
			BorderSizePixel = 0,
			Parent = scrollThumbFrame
		})

		local markerFrame = CreateInstance("Frame",{
			BackgroundTransparency = 1,
			Name = "Markers",
			Size = UDim2.new(1,0,1,0),
			Parent = scrollThumbFrame
		})

		local newMt = setmetatable({
			Gui = newFrame,
			Index = 0,
			VisibleSpace = 0,
			TotalSpace = 0,
			Increment = 1,
			Markers = {},
			Scrolled = require(script.Parent.Parent.Parent.Modules.Signal).new(),
		},ScrollMt)

		local function drawThumb()
			local total = newMt.TotalSpace
			local visible = newMt.VisibleSpace
			local index = newMt.Index

			if not (newMt:CanScrollUp()	or newMt:CanScrollDown()) then
				scrollThumb.Visible = false
			else
				scrollThumb.Visible = true
			end

			if hor then
				scrollThumb.Size = UDim2.new(visible/total,0,1,0)
				if scrollThumb.AbsoluteSize.X < 16 then
					scrollThumb.Size = UDim2.new(0,16,1,0)
				end
				local fs = scrollThumbFrame.AbsoluteSize.X
				local bs = scrollThumb.AbsoluteSize.X
				scrollThumb.Position = UDim2.new(newMt:GetScrollPercent()*(fs-bs)/fs,0,0,0)
			else
				scrollThumb.Size = UDim2.new(1,0,visible/total,0)
				if scrollThumb.AbsoluteSize.Y < 16 then
					scrollThumb.Size = UDim2.new(1,0,0,16)
				end
				local fs = scrollThumbFrame.AbsoluteSize.Y
				local bs = scrollThumb.AbsoluteSize.Y
				scrollThumb.Position = UDim2.new(0,0,newMt:GetScrollPercent()*(fs-bs)/fs,0)
			end
		end

		local function updateMarkers()
			markerFrame:ClearAllChildren()

			for i,v in pairs(newMt.Markers) do
				if i < newMt.TotalSpace then
					CreateInstance("Frame",{
						BackgroundTransparency = 0,
						BackgroundColor3 = v,
						BorderSizePixel = 0,
						Position = hor and UDim2.new(i/newMt.TotalSpace,0,1,-6) or UDim2.new(1,-6,i/newMt.TotalSpace,0),
						Size = hor and UDim2.new(0,1,0,6) or UDim2.new(0,6,0,1),
						Name = "Marker"..tostring(i),
						Parent = markerFrame
					})
				end
			end
		end
		newMt.UpdateMarkers = updateMarkers

		local function update()
			local total = newMt.TotalSpace
			local visible = newMt.VisibleSpace
			local index = newMt.Index

			if visible <= total then
				if index > 0 then
					if index + visible > total then
						newMt.Index = total - visible
					end
				else
					newMt.Index = 0
				end
			else
				newMt.Index = 0
			end

			if lastTotalSpace ~= newMt.TotalSpace then
				lastTotalSpace = newMt.TotalSpace
				updateMarkers()
			end

			if newMt.OnUpdate then newMt:OnUpdate() end

			if newMt:CanScrollUp() then
				for i,v in pairs(button1.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0
				end
			else
				button1.BackgroundTransparency = 1
				for i,v in pairs(button1.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0.5
				end
			end
			if newMt:CanScrollDown() then
				for i,v in pairs(button2.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0
				end
			else
				button2.BackgroundTransparency = 1
				for i,v in pairs(button2.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0.5
				end
			end

			drawThumb()
			newMt.Scrolled:Fire()
		end

		local buttonPress = false
		local thumbPress = false
		local thumbFramePress = false

		local thumbColor = Color3.new(120/255,120/255,120/255)
		local thumbSelectColor = Color3.new(140/255,140/255,140/255)
		button1.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and newMt:CanScrollUp() then button1.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not newMt:CanScrollUp() then return end
			buttonPress = true
			button1.BackgroundTransparency = 0.5
			if newMt:CanScrollUp() then newMt:ScrollUp() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if f.checkMouseInGui(button1) and newMt:CanScrollUp() then button1.BackgroundTransparency = 0.8 else button1.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and newMt:CanScrollUp() then
					newMt:ScrollUp()
				end
				wait()
			end
		end)
		button1.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button1.BackgroundTransparency = 1 end
		end)
		button2.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and newMt:CanScrollDown() then button2.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not newMt:CanScrollDown() then return end
			buttonPress = true
			button2.BackgroundTransparency = 0.5
			if newMt:CanScrollDown() then newMt:ScrollDown() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if f.checkMouseInGui(button2) and newMt:CanScrollDown() then button2.BackgroundTransparency = 0.8 else button2.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and newMt:CanScrollDown() then
					newMt:ScrollDown()
				end
				wait()
			end
		end)
		button2.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button2.BackgroundTransparency = 1 end
		end)

		scrollThumb.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0.2 scrollThumb.BackgroundColor3 = thumbSelectColor end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end

			local dir = hor and "X" or "Y"
			local lastThumbPos = nil

			buttonPress = false
			thumbFramePress = false			
			thumbPress = true
			scrollThumb.BackgroundTransparency = 0
			local mouseOffset = mouse[dir] - scrollThumb.AbsolutePosition[dir]
			local mouseStart = mouse[dir]
			local releaseEvent
			local mouseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if mouseEvent then mouseEvent:Disconnect() end
				if f.checkMouseInGui(scrollThumb) then scrollThumb.BackgroundTransparency = 0.2 else scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = thumbColor end
				thumbPress = false
			end)
			newMt:Update()
			--while math.abs(mouse[dir] - mouseStart) == 0 do wait() end
			mouseEvent = user.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement and thumbPress and releaseEvent.Connected then
					local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
					local pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - mouseOffset
					if pos > thumbFrameSize then
						pos = thumbFrameSize
					elseif pos < 0 then
						pos = 0
					end
					if lastThumbPos ~= pos then
						lastThumbPos = pos
						newMt:ScrollTo(math.floor(pos/thumbFrameSize*(newMt.TotalSpace-newMt.VisibleSpace)))
					end
					wait()
				end
			end)
		end)
		scrollThumb.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = thumbColor end
		end)
		scrollThumbFrame.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or f.checkMouseInGui(scrollThumb) then return end

			local dir = hor and "X" or "Y"

			local function doTick()
				local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
				local thumbFrameDist = scrollThumb.AbsolutePosition[dir] - scrollThumbFrame.AbsolutePosition[dir]
				local pos = thumbFrameDist + (mouse[dir] < scrollThumb.AbsolutePosition[dir] + math.floor(scrollThumb.AbsoluteSize[dir]/2) and -50 or 50)
				if pos > thumbFrameSize then
					pos = thumbFrameSize
				elseif pos < 0 then
					pos = 0
				end
				if pos < thumbFrameDist and scrollThumbFrame.AbsolutePosition[dir] + pos + math.floor(scrollThumb.AbsoluteSize[dir]/2) <= mouse[dir] then
					pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - math.floor(scrollThumb.AbsoluteSize[dir]/2)
				elseif pos > thumbFrameDist and scrollThumbFrame.AbsolutePosition[dir] + pos + math.floor(scrollThumb.AbsoluteSize[dir]/2) >= mouse[dir] then
					pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - math.floor(scrollThumb.AbsoluteSize[dir]/2)
				end
				newMt:ScrollTo(math.floor(pos/thumbFrameSize*(newMt.TotalSpace-newMt.VisibleSpace)))
			end

			thumbPress = false			
			thumbFramePress = true
			doTick()
			local thumbFrameTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				thumbFramePress = false
			end)
			while thumbFramePress and not f.checkMouseInGui(scrollThumb) do
				if tick() - thumbFrameTick >= 0.3 then
					doTick()
				end
				wait()
			end
		end)

		local function texture(self,data)
			thumbColor = data.ThumbColor or Color3.new(0,0,0)
			thumbSelectColor = data.ThumbSelectColor or Color3.new(0,0,0)
			scrollThumb.BackgroundColor3 = data.ThumbColor or Color3.new(0,0,0)
			newFrame.BackgroundColor3 = data.FrameColor or Color3.new(0,0,0)
			button1.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
			button2.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
			for i,v in pairs(button1.Arrow:GetChildren()) do
				v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
			end
			for i,v in pairs(button2.Arrow:GetChildren()) do
				v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
			end
		end
		newMt.Texture = texture

		local wheelIncrement = 1
		local scrollOverlay = Instance.new("ScrollingFrame")
		scrollOverlay.BackgroundTransparency = 1
		scrollOverlay.Size = UDim2.new(1,0,1,0)
		scrollOverlay.ScrollBarThickness = 0
		scrollOverlay.CanvasSize = UDim2.new(0,0,0,0)
		local scrollOverlayFrame = Instance.new("Frame",scrollOverlay)
		scrollOverlayFrame.BackgroundTransparency = 1
		scrollOverlayFrame.Size = UDim2.new(1,0,1,0)
		scrollOverlayFrame.MouseWheelForward:Connect(function()newMt:ScrollTo(newMt.Index - wheelIncrement)end)
		scrollOverlayFrame.MouseWheelBackward:Connect(function()newMt:ScrollTo(newMt.Index + wheelIncrement)end)

		local scrollUpEvent,scrollDownEvent

		local function setScrollFrame(self,frame,inc)
			wheelIncrement = inc or self.Increment
			if scrollUpEvent then scrollUpEvent:Disconnect() scrollUpEvent = nil end
			if scrollDownEvent then scrollDownEvent:Disconnect() scrollDownEvent = nil end
			scrollUpEvent = frame.MouseWheelForward:Connect(function()newMt:ScrollTo(newMt.Index - wheelIncrement)end)
			scrollDownEvent = frame.MouseWheelBackward:Connect(function()newMt:ScrollTo(newMt.Index + wheelIncrement)end)
			newMt.ScrollFrame = frame
			--scrollOverlay.Parent = frame
		end
		newMt.SetScrollFrame = setScrollFrame

		newMt.Update = update
		newMt:Texture({
			--FrameColor = Color3.new(80/255,80/255,80/255),
			--ThumbColor = Color3.new(120/255,120/255,120/255),
			--ThumbSelectColor = Color3.new(140/255,140/255,140/255),
			--ButtonColor = Color3.new(163/255,162/255,165/255),
			--ArrowColor = Color3.new(220/255,220/255,220/255)
			ThumbColor = Color3.fromRGB(60,60,60),
			ThumbSelectColor = Color3.fromRGB(75,75,75),
			ArrowColor = Color3.new(1,1,1),
			FrameColor = Color3.fromRGB(40,40,40),
			ButtonColor = Color3.fromRGB(75,75,75)
		})
		update()
		return newMt
	end
end
return ScrollBar
end;
};
G2L_MODULES[G2L["12"]] = {
Closure = function()
    local script = G2L["12"];--local Services = require(script.Parent.Parent.Parent.utils.Services)
--local Signal = require(script.Parent.Parent.Parent.Packages.Signal)
local Lib = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Players: Players, TweenService: TweenService, UserInputService: UserInputService, RunService: RunService = Lib.Players, Lib.TweenS, Lib.UIS, Lib.RunService
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)


local funcs = {}
local static = { MinWidth = 200, FreeWidth = 200 }
local sidesGui, alignIndicator
local visibleWindows = {}
local leftSide = { Width = 300, Windows = {}, ResizeCons = {}, Hidden = true }
local rightSide = { Width = 300, Windows = {}, ResizeCons = {}, Hidden = true }

local displayOrderStart
local sideDisplayOrder
local sideTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tweens = {}
local isA = game.IsA

local theme = {
	MainColor1 = Lib.Settings.Theme.Main1,
	MainColor2 = Lib.Settings.Theme.Main2,
	Button = Lib.Settings.Theme.Button,
}

local function stopTweens()
	for i = 1, #tweens do
		tweens[i]:Cancel()
	end
	tweens = {}
end

local function resizeHook(self, resizer, dir)
	local guiMain = self.GuiElems.Main
	resizer.InputBegan:Connect(function(input)
		if not self.Dragging and not self.Resizing and self.Resizable and self.ResizableInternal then
			local isH = dir:find("[WE]") and true
			local isV = dir:find("[NS]") and true
			local signX = dir:find("W", 1, true) and -1 or 1
			local signY = dir:find("N", 1, true) and -1 or 1

			if self.Minimized and isV then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseMovement then
				resizer.BackgroundTransparency = 0.5
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent, mouseEvent

				local offX = mouse.X - resizer.AbsolutePosition.X
				local offY = mouse.Y - resizer.AbsolutePosition.Y

				self.Resizing = resizer
				resizer.BackgroundTransparency = 1

				releaseEvent = UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						self.Resizing = false
						resizer.BackgroundTransparency = 1
					end
				end)

				mouseEvent = UserInputService.InputChanged:Connect(function(input)
					if
						self.Resizable
						and self.ResizableInternal
						and input.UserInputType == Enum.UserInputType.MouseMovement
					then
						self:StopTweens()
						local deltaX = input.Position.X - resizer.AbsolutePosition.X - offX
						local deltaY = input.Position.Y - resizer.AbsolutePosition.Y - offY

						if guiMain.AbsoluteSize.X + deltaX * signX < self.MinX then
							deltaX = signX * (self.MinX - guiMain.AbsoluteSize.X)
						end
						if guiMain.AbsoluteSize.Y + deltaY * signY < self.MinY then
							deltaY = signY * (self.MinY - guiMain.AbsoluteSize.Y)
						end
						if signY < 0 and guiMain.AbsolutePosition.Y + deltaY < 0 then
							deltaY = -guiMain.AbsolutePosition.Y
						end

						guiMain.Position = guiMain.Position
							+ UDim2.new(0, (signX < 0 and deltaX or 0), 0, (signY < 0 and deltaY or 0))
						self.SizeX = self.SizeX + (isH and deltaX * signX or 0)
						self.SizeY = self.SizeY + (isV and deltaY * signY or 0)
						guiMain.Size = UDim2.new(0, self.SizeX, 0, self.Minimized and 20 or self.SizeY)
					end
				end)
			end
		end
	end)

	resizer.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and self.Resizing ~= resizer then
			resizer.BackgroundTransparency = 1
		end
	end)
end

local updateWindows

local function moveToTop(window)
	local found = table.find(visibleWindows, window)
	if found then
		table.remove(visibleWindows, found)
		table.insert(visibleWindows, 1, window)
		updateWindows()
	end
end

local function sideHasRoom(side, neededSize)
	local maxY = sidesGui.AbsoluteSize.Y - (math.max(0, #side.Windows - 1) * 4)
	local inc = 0
	for i, v in side.Windows do
		inc = inc + (v.MinY or 100)
		if inc > maxY - neededSize then
			return false
		end
	end

	return true
end

local function getSideInsertPos(side, curY)
	local pos = #side.Windows + 1
	local range = { 0, sidesGui.AbsoluteSize.Y }

	for i, v in side.Windows do
		local midPos = v.PosY + v.SizeY / 2
		if curY <= midPos then
			pos = i
			range[2] = midPos
			break
		else
			range[1] = midPos
		end
	end

	return pos, range
end

local function focusInput(self, obj)
	if isA(obj, "GuiButton") then
		obj.MouseButton1Down:Connect(function()
			moveToTop(self)
		end)
	elseif isA(obj, "TextBox") then
		obj.Focused:Connect(function()
			moveToTop(self)
		end)
	end
end

local createGui = function(self)
	local gui = create({
		{ 1, "ScreenGui", { Name = "Window" } },
		{
			2,
			"Frame",
			{
				Active = true,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "Main",
				Parent = { 1 },
				Position = UDim2.new(0.40000000596046, 0, 0.40000000596046, 0),
				Size = UDim2.new(0, 300, 0, 300),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				BorderSizePixel = 0,
				BackgroundTransparency = Lib.Settings.Window.BackgroundTransparency,
				Name = "Content",
				Parent = { 2 },
				Position = UDim2.new(0, 0, 0, 20),
				Size = UDim2.new(1, 0, 1, -20),
				ClipsDescendants = true,
			},
		},
		{
			4,
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(33, 33, 33),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 3 },
				Size = UDim2.new(1, 0, 0, 1),
			},
		},
		{
			5,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BorderSizePixel = 0,
				Name = "TopBar",
				Parent = { 2 },
				Size = UDim2.new(1, 0, 0, 20),
			},
		},
		{
			6,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 5 },
				Position = UDim2.new(0, 5, 0, 0),
				Size = UDim2.new(1, -10, 0, 20),
				Text = "Window",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			7,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Close",
				Parent = { 5 },
				Position = UDim2.new(1, -18, 0, 2),
				Size = UDim2.new(0, 16, 0, 16),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
		{
			8,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5054663650",
				Parent = { 7 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 10, 0, 10),
			},
		},
		{ 9, "UICorner", { CornerRadius = UDim.new(0, 4), Parent = { 7 } } },
		{
			10,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Minimize",
				Parent = { 5 },
				Position = UDim2.new(1, -36, 0, 2),
				Size = UDim2.new(0, 16, 0, 16),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
		{
			11,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5034768003",
				Parent = { 10 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 10, 0, 10),
			},
		},
		{ 12, "UICorner", { CornerRadius = UDim.new(0, 4), Parent = { 10 } } },
		{
			13,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "rbxassetid://1427967925",
				Name = "Outlines",
				Parent = { 2 },
				Position = UDim2.new(0, -5, 0, -5),
				ScaleType = 1,
				Size = UDim2.new(1, 10, 1, 10),
				SliceCenter = Rect.new(6, 6, 25, 25),
				TileSize = UDim2.new(0, 20, 0, 20),
			},
		},
		{
			14,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Name = "ResizeControls",
				Parent = { 2 },
				Position = UDim2.new(0, -5, 0, -5),
				Size = UDim2.new(1, 10, 1, 10),
			},
		},
		{
			15,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "North",
				Parent = { 14 },
				Position = UDim2.new(0, 5, 0, 0),
				Size = UDim2.new(1, -10, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			16,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "South",
				Parent = { 14 },
				Position = UDim2.new(0, 5, 1, -5),
				Size = UDim2.new(1, -10, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			17,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "NorthEast",
				Parent = { 14 },
				Position = UDim2.new(1, -5, 0, 0),
				Size = UDim2.new(0, 5, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			18,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "East",
				Parent = { 14 },
				Position = UDim2.new(1, -5, 0, 5),
				Size = UDim2.new(0, 5, 1, -10),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			19,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "West",
				Parent = { 14 },
				Position = UDim2.new(0, 0, 0, 5),
				Size = UDim2.new(0, 5, 1, -10),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			20,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "SouthEast",
				Parent = { 14 },
				Position = UDim2.new(1, -5, 1, -5),
				Size = UDim2.new(0, 5, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			21,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "NorthWest",
				Parent = { 14 },
				Size = UDim2.new(0, 5, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			22,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.27450981736183, 0.27450981736183, 0.27450981736183),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "SouthWest",
				Parent = { 14 },
				Position = UDim2.new(0, 0, 1, -5),
				Size = UDim2.new(0, 5, 0, 5),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
	})

	local guiMain = gui.Main
	local guiTopBar = guiMain.TopBar
	local guiResizeControls = guiMain.ResizeControls

	self.GuiElems.Main = guiMain
	self.GuiElems.TopBar = guiMain.TopBar
	self.GuiElems.Content = guiMain.Content
	self.GuiElems.Line = guiMain.Content.Line
	self.GuiElems.Outlines = guiMain.Outlines
	self.GuiElems.Title = guiTopBar.Title
	self.GuiElems.Close = guiTopBar.Close
	self.GuiElems.Minimize = guiTopBar.Minimize
	self.GuiElems.ResizeControls = guiResizeControls
	self.ContentPane = guiMain.Content

	guiTopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and self.Draggable then
			local releaseEvent, mouseEvent

			local maxX = sidesGui.AbsoluteSize.X
			local initX = guiMain.AbsolutePosition.X
			local initY = guiMain.AbsolutePosition.Y
			local offX = mouse.X - initX
			local offY = mouse.Y - initY

			local alignInsertPos, alignInsertSide

			guiDragging = true

			releaseEvent = game:GetService("UserInputService").InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
					guiDragging = false
					alignIndicator.Parent = nil
					if alignInsertSide then
						local targetSide = (alignInsertSide == "left" and leftSide)
							or (alignInsertSide == "right" and rightSide)
						self:AlignTo(targetSide, alignInsertPos)
					end
				end
			end)

			mouseEvent = game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement and self.Draggable and not self.Closed then
					if self.Aligned then
						if leftSide.Resizing or rightSide.Resizing then
							return
						end
						local posX, posY = input.Position.X - offX, input.Position.Y - offY
						local delta = math.sqrt((posX - initX) ^ 2 + (posY - initY) ^ 2)
						if delta >= 5 then
							self:SetAligned(false)
						end
					else
						local inputX, inputY = input.Position.X, input.Position.Y
						local posX, posY = inputX - offX, inputY - offY
						if posY < 0 then
							posY = 0
						end
						guiMain.Position = UDim2.new(0, posX, 0, posY)

						if self.Resizable and self.Alignable then
							if inputX < 25 then
								if sideHasRoom(leftSide, self.MinY or 100) then
									local insertPos, range = getSideInsertPos(leftSide, inputY)
									alignIndicator.Indicator.Position = UDim2.new(0, -15, 0, range[1])
									alignIndicator.Indicator.Size = UDim2.new(0, 40, 0, range[2] - range[1])
									Lib.ShowGui(alignIndicator)
									alignInsertPos = insertPos
									alignInsertSide = "left"
									return
								end
							elseif inputX >= maxX - 25 then
								if sideHasRoom(rightSide, self.MinY or 100) then
									local insertPos, range = getSideInsertPos(rightSide, inputY)
									alignIndicator.Indicator.Position = UDim2.new(0, maxX - 25, 0, range[1])
									alignIndicator.Indicator.Size = UDim2.new(0, 40, 0, range[2] - range[1])
									Lib.ShowGui(alignIndicator)
									alignInsertPos = insertPos
									alignInsertSide = "right"
									return
								end
							end
						end
						alignIndicator.Parent = nil
						alignInsertPos = nil
						alignInsertSide = nil
					end
				end
			end)
		end
	end)

	guiTopBar.Close.MouseButton1Click:Connect(function()
		if self.Closed then
			return
		end
		self:Close()
	end)

	guiTopBar.Minimize.MouseButton1Click:Connect(function()
		if self.Closed then
			return
		end
		if self.Aligned then
			self:SetAligned(false)
		else
			self:SetMinimized()
		end
	end)

	guiTopBar.Minimize.MouseButton2Click:Connect(function()
		if self.Closed then
			return
		end
		if not self.Aligned then
			self:SetMinimized(nil, 2)
			guiTopBar.Minimize.BackgroundTransparency = 1
		end
	end)

	guiMain.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and not self.Aligned and not self.Closed then
			moveToTop(self)
		end
	end)

	guiMain:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
		local absPos = guiMain.AbsolutePosition
		self.PosX = absPos.X
		self.PosY = absPos.Y
	end)

	resizeHook(self, guiResizeControls.North, "N")
	resizeHook(self, guiResizeControls.NorthEast, "NE")
	resizeHook(self, guiResizeControls.East, "E")
	resizeHook(self, guiResizeControls.SouthEast, "SE")
	resizeHook(self, guiResizeControls.South, "S")
	resizeHook(self, guiResizeControls.SouthWest, "SW")
	resizeHook(self, guiResizeControls.West, "W")
	resizeHook(self, guiResizeControls.NorthWest, "NW")

	guiMain.Size = UDim2.new(0, self.SizeX, 0, self.SizeY)

	gui.DescendantAdded:Connect(function(obj)
		focusInput(self, obj)
	end)
	local descs = gui:GetDescendants()
	for i = 1, #descs do
		focusInput(self, descs[i])
	end

	self.MinimizeAnim = Lib.ButtonAnim(guiTopBar.Minimize)
	self.CloseAnim = Lib.ButtonAnim(guiTopBar.Close)

	return gui
end

local function updateSideFrames(noTween)
	stopTweens()
	leftSide.Frame.Size = UDim2.new(0, leftSide.Width, 1, 0)
	rightSide.Frame.Size = UDim2.new(0, rightSide.Width, 1, 0)
	leftSide.Frame.Resizer.Position = UDim2.new(0, leftSide.Width, 0, 0)
	rightSide.Frame.Resizer.Position = UDim2.new(0, -5, 0, 0)

	local leftHidden = #leftSide.Windows == 0 or leftSide.Hidden
	local rightHidden = #rightSide.Windows == 0 or rightSide.Hidden
	local leftPos = (leftHidden and UDim2.new(0, -leftSide.Width - 10, 0, 0) or UDim2.new(0, 0, 0, 0))
	local rightPos = (rightHidden and UDim2.new(1, 10, 0, 0) or UDim2.new(1, -rightSide.Width, 0, 0))

	sidesGui.LeftToggle.Text = leftHidden and ">" or "<"
	sidesGui.RightToggle.Text = rightHidden and "<" or ">"

	if not noTween then
		local function insertTween(...)
			local tween = TweenService:Create(...)
			tweens[#tweens + 1] = tween
			tween:Play()
		end
		insertTween(leftSide.Frame, sideTweenInfo, { Position = leftPos })
		insertTween(rightSide.Frame, sideTweenInfo, { Position = rightPos })
		insertTween(
			sidesGui.LeftToggle,
			sideTweenInfo,
			{ Position = UDim2.new(0, #leftSide.Windows == 0 and -16 or 0, 0, -36) }
		)
		insertTween(
			sidesGui.RightToggle,
			sideTweenInfo,
			{ Position = UDim2.new(1, #rightSide.Windows == 0 and 0 or -16, 0, -36) }
		)
	else
		leftSide.Frame.Position = leftPos
		rightSide.Frame.Position = rightPos
		sidesGui.LeftToggle.Position = UDim2.new(0, #leftSide.Windows == 0 and -16 or 0, 0, -36)
		sidesGui.RightToggle.Position = UDim2.new(1, #rightSide.Windows == 0 and 0 or -16, 0, -36)
	end
end

local function getSideFramePos(side)
	local leftHidden = #leftSide.Windows == 0 or leftSide.Hidden
	local rightHidden = #rightSide.Windows == 0 or rightSide.Hidden
	if side == leftSide then
		return (leftHidden and UDim2.new(0, -leftSide.Width - 10, 0, 0) or UDim2.new(0, 0, 0, 0))
	else
		return (rightHidden and UDim2.new(1, 10, 0, 0) or UDim2.new(1, -rightSide.Width, 0, 0))
	end
end

local function sideResized(side)
	local currentPos = 0
	local sideFramePos = getSideFramePos(side)
	for i, v in side.Windows do
		v.SizeX = side.Width
		v.GuiElems.Main.Size = UDim2.new(0, side.Width, 0, v.SizeY)
		v.GuiElems.Main.Position = UDim2.new(sideFramePos.X.Scale, sideFramePos.X.Offset, 0, currentPos)
		currentPos = currentPos + v.SizeY + 4
	end
end

local function sideResizerHook(resizer, dir, side, pos)
	local mouse = Mouse
	local windows = side.Windows

	resizer.InputBegan:Connect(function(input)
		if not side.Resizing then
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				resizer.BackgroundColor3 = theme.MainColor2
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent, mouseEvent

				local offX = mouse.X - resizer.AbsolutePosition.X
				local offY = mouse.Y - resizer.AbsolutePosition.Y

				side.Resizing = resizer
				resizer.BackgroundColor3 = theme.MainColor2

				releaseEvent = UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						side.Resizing = false
						resizer.BackgroundColor3 = theme.Button
					end
				end)

				mouseEvent = UserInputService.InputChanged:Connect(function(input)
					if not resizer.Parent then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						side.Resizing = false
						return
					end
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						if dir == "V" then
							local delta = input.Position.Y - resizer.AbsolutePosition.Y - offY

							if delta > 0 then
								local neededSize = delta
								for i = pos + 1, #windows do
									local window = windows[i]
									local newSize = math.max(window.SizeY - neededSize, (window.MinY or 100))
									neededSize = neededSize - (window.SizeY - newSize)
									window.SizeY = newSize
								end
								windows[pos].SizeY = windows[pos].SizeY + math.max(0, delta - neededSize)
							else
								local neededSize = -delta
								for i = pos, 1, -1 do
									local window = windows[i]
									local newSize = math.max(window.SizeY - neededSize, (window.MinY or 100))
									neededSize = neededSize - (window.SizeY - newSize)
									window.SizeY = newSize
								end
								windows[pos + 1].SizeY = windows[pos + 1].SizeY + math.max(0, -delta - neededSize)
							end

							updateSideFrames()
							sideResized(side)
						elseif dir == "H" then
							local maxWidth = math.max(300, sidesGui.AbsoluteSize.X - static.FreeWidth)
							local otherSide = (side == leftSide and rightSide or leftSide)
							local delta = input.Position.X - resizer.AbsolutePosition.X - offX
							delta = (side == leftSide and delta or -delta)

							local proposedSize = math.max(static.MinWidth, side.Width + delta)
							if proposedSize + otherSide.Width <= maxWidth then
								side.Width = proposedSize
							else
								local newOtherSize = maxWidth - proposedSize
								if newOtherSize >= static.MinWidth then
									side.Width = proposedSize
									otherSide.Width = newOtherSize
								else
									side.Width = maxWidth - static.MinWidth
									otherSide.Width = static.MinWidth
								end
							end

							updateSideFrames(true)
							sideResized(side)
							sideResized(otherSide)
						end
					end
				end)
			end
		end
	end)

	resizer.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and side.Resizing ~= resizer then
			resizer.BackgroundColor3 = theme.Button
		end
	end)
end

local function renderSide(side, noTween) -- TODO: Use existing resizers
	local currentPos = 0
	local sideFramePos = getSideFramePos(side)
	local template = side.WindowResizer:Clone()
	for i, v in side.ResizeCons do
		v:Disconnect()
	end
	for i, v in side.Frame:GetChildren() do
		if v.Name == "WindowResizer" then
			v:Destroy()
		end
	end
	side.ResizeCons = {}
	side.Resizing = nil

	for i, v in side.Windows do
		v.SidePos = i
		local isEnd = i == #side.Windows
		local size = UDim2.new(0, side.Width, 0, v.SizeY)
		local pos = UDim2.new(sideFramePos.X.Scale, sideFramePos.X.Offset, 0, currentPos)
		Lib.ShowGui(v.Gui)
		if noTween then
			v.GuiElems.Main.Size = size
			v.GuiElems.Main.Position = pos
		else
			local tween = TweenService:Create(v.GuiElems.Main, sideTweenInfo, { Size = size, Position = pos })
			tweens[#tweens + 1] = tween
			tween:Play()
		end
		currentPos = currentPos + v.SizeY + 4

		if not isEnd then
			local newTemplate = template:Clone()
			newTemplate.Position = UDim2.new(1, -side.Width, 0, currentPos - 4)
			side.ResizeCons[#side.ResizeCons + 1] = v.Gui.Main:GetPropertyChangedSignal("Size"):Connect(function()
				newTemplate.Position =
					UDim2.new(1, -side.Width, 0, v.GuiElems.Main.Position.Y.Offset + v.GuiElems.Main.Size.Y.Offset)
			end)
			side.ResizeCons[#side.ResizeCons + 1] = v.Gui.Main:GetPropertyChangedSignal("Position"):Connect(function()
				newTemplate.Position =
					UDim2.new(1, -side.Width, 0, v.GuiElems.Main.Position.Y.Offset + v.GuiElems.Main.Size.Y.Offset)
			end)
			sideResizerHook(newTemplate, "V", side, i)
			newTemplate.Parent = side.Frame
		end
	end
end

local function updateSide(side, noTween)
	local oldHeight = 0
	local currentPos = 0
	local neededSize = 0
	local windows = side.Windows
	local height = sidesGui.AbsoluteSize.Y - (math.max(0, #windows - 1) * 4)

	for i, v in windows do
		oldHeight = oldHeight + v.SizeY
	end
	for i, v in windows do
		if i == #windows then
			v.SizeY = height - currentPos
			neededSize = math.max(0, (v.MinY or 100) - v.SizeY)
		else
			v.SizeY = math.max(math.floor(v.SizeY / oldHeight * height), v.MinY or 100)
		end
		currentPos = currentPos + v.SizeY
	end

	if neededSize > 0 then
		for i = #windows - 1, 1, -1 do
			local window = windows[i]
			local newSize = math.max(window.SizeY - neededSize, (window.MinY or 100))
			neededSize = neededSize - (window.SizeY - newSize)
			window.SizeY = newSize
		end
		local lastWindow = windows[#windows]
		lastWindow.SizeY = (lastWindow.MinY or 100) - neededSize
	end
	renderSide(side, noTween)
end

updateWindows = function(noTween)
	updateSideFrames(noTween)
	updateSide(leftSide, noTween)
	updateSide(rightSide, noTween)
	local count = 0
	for i = #visibleWindows, 1, -1 do
		visibleWindows[i].Gui.DisplayOrder = displayOrderStart + count
		Lib.ShowGui(visibleWindows[i].Gui)
		count = count + 1
	end
end

funcs.SetMinimized = function(self, set, mode)
	local oldVal = self.Minimized
	local newVal
	if set == nil then
		newVal = not self.Minimized
	else
		newVal = set
	end
	self.Minimized = newVal
	if not mode then
		mode = 1
	end

	local resizeControls = self.GuiElems.ResizeControls
	local minimizeControls = { "North", "NorthEast", "NorthWest", "South", "SouthEast", "SouthWest" }
	for i = 1, #minimizeControls do
		local control = resizeControls:FindFirstChild(minimizeControls[i])
		if control then
			control.Visible = not newVal
		end
	end

	if mode == 1 or mode == 2 then
		self:StopTweens()
		if mode == 1 then
			self.GuiElems.Main:TweenSize(
				UDim2.new(0, self.SizeX, 0, newVal and 20 or self.SizeY),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quart,
				0.25,
				true
			)
		else
			local maxY = sidesGui.AbsoluteSize.Y
			local newPos = UDim2.new(
				0,
				self.PosX,
				0,
				newVal and math.min(maxY - 20, self.PosY + self.SizeY - 20) or math.max(0, self.PosY - self.SizeY + 20)
			)

			self.GuiElems.Main:TweenPosition(newPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
			self.GuiElems.Main:TweenSize(
				UDim2.new(0, self.SizeX, 0, newVal and 20 or self.SizeY),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quart,
				0.25,
				true
			)
		end
		self.GuiElems.Minimize.ImageLabel.Image = newVal and "rbxassetid://5060023708" or "rbxassetid://5034768003"
	end

	if oldVal ~= newVal then
		if newVal then
			self.OnMinimize:Fire()
		else
			self.OnRestore:Fire()
		end
	end
end

funcs.Resize = function(self, sizeX, sizeY)
	self.SizeX = sizeX or self.SizeX
	self.SizeY = sizeY or self.SizeY
	self.GuiElems.Main.Size = UDim2.new(0, self.SizeX, 0, self.SizeY)
end

funcs.SetSize = funcs.Resize

funcs.SetTitle = function(self, title)
	self.GuiElems.Title.Text = title
end

funcs.SetResizable = function(self, val)
	self.Resizable = val
	self.GuiElems.ResizeControls.Visible = self.Resizable and self.ResizableInternal
end

funcs.SetResizableInternal = function(self, val)
	self.ResizableInternal = val
	self.GuiElems.ResizeControls.Visible = self.Resizable and self.ResizableInternal
end

funcs.SetAligned = function(self, val)
	self.Aligned = val
	self:SetResizableInternal(not val)
	self.GuiElems.Main.Active = not val
	self.GuiElems.Main.Outlines.Visible = not val
	if not val then
		for i, v in leftSide.Windows do
			if v == self then
				table.remove(leftSide.Windows, i)
				break
			end
		end
		for i, v in rightSide.Windows do
			if v == self then
				table.remove(rightSide.Windows, i)
				break
			end
		end
		if not table.find(visibleWindows, self) then
			table.insert(visibleWindows, 1, self)
		end
		self.GuiElems.Minimize.ImageLabel.Image = "rbxassetid://5034768003"
		self.Side = nil
		updateWindows()
	else
		self:SetMinimized(false, 3)
		for i, v in visibleWindows do
			if v == self then
				table.remove(visibleWindows, i)
				break
			end
		end
		self.GuiElems.Minimize.ImageLabel.Image = "rbxassetid://5448127505"
	end
end

funcs.Add = function(self, obj, name)
	if type(obj) == "table" and obj.Gui and obj.Gui:IsA("GuiObject") then
		obj.Gui.Parent = self.ContentPane
	else
		obj.Parent = self.ContentPane
	end
	if name then
		self.Elements[name] = obj
	end
end

funcs.GetElement = function(self, obj, name)
	return self.Elements[name]
end

funcs.AlignTo = function(self, side, pos, size, silent)
	if table.find(side.Windows, self) or self.Closed then
		return
	end

	size = size or self.SizeY
	if size > 0 and size <= 1 then
		local totalSideHeight = 0
		for i, v in side.Windows do
			totalSideHeight = totalSideHeight + v.SizeY
		end
		self.SizeY = (totalSideHeight > 0 and totalSideHeight * size * 2) or size
	else
		self.SizeY = (size > 0 and size or 100)
	end

	self:SetAligned(true)
	self.Side = side
	self.SizeX = side.Width
	self.Gui.DisplayOrder = sideDisplayOrder + 1
	for i, v in side.Windows do
		v.Gui.DisplayOrder = sideDisplayOrder
	end
	pos = math.min(#side.Windows + 1, pos or 1)
	self.SidePos = pos
	table.insert(side.Windows, pos, self)

	if not silent then
		side.Hidden = false
	end
	updateWindows(silent)
end

funcs.Close = function(self)
	self.Closed = true
	self:SetResizableInternal(false)

	Lib.FindAndRemove(leftSide.Windows, self)
	Lib.FindAndRemove(rightSide.Windows, self)
	Lib.FindAndRemove(visibleWindows, self)

	self.MinimizeAnim.Disable()
	self.CloseAnim.Disable()
	self.ClosedSide = self.Side
	self.Side = nil
	self.OnDeactivate:Fire()

	if not self.Aligned then
		self:StopTweens()
		local ti = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local closeTime = tick()
		self.LastClose = closeTime

		self:DoTween(self.GuiElems.Main, ti, { Size = UDim2.new(0, self.SizeX, 0, 20) })
		self:DoTween(self.GuiElems.Title, ti, { TextTransparency = 1 })
		self:DoTween(self.GuiElems.Minimize.ImageLabel, ti, { ImageTransparency = 1 })
		self:DoTween(self.GuiElems.Close.ImageLabel, ti, { ImageTransparency = 1 })
		Lib.FastWait(0.2)
		if closeTime ~= self.LastClose then
			return
		end

		self:DoTween(self.GuiElems.TopBar, ti, { BackgroundTransparency = 1 })
		self:DoTween(self.GuiElems.Outlines, ti, { ImageTransparency = 1 })
		Lib.FastWait(0.2)
		if closeTime ~= self.LastClose then
			return
		end
	end

	self.Aligned = false
	self.Gui.Parent = nil
	updateWindows(true)
end

funcs.Hide = funcs.Close

funcs.IsVisible = function(self)
	return not self.Closed and ((self.Side and not self.Side.Hidden) or not self.Side)
end

funcs.IsContentVisible = function(self)
	return self:IsVisible() and not self.Minimized
end

funcs.Focus = function(self)
	moveToTop(self)
end

funcs.MoveInBoundary = function(self)
	local posX, posY = self.PosX, self.PosY
	local maxX, maxY = sidesGui.AbsoluteSize.X, sidesGui.AbsoluteSize.Y
	posX = math.min(posX, maxX - self.SizeX)
	posY = math.min(posY, maxY - 20)
	self.GuiElems.Main.Position = UDim2.new(0, posX, 0, posY)
end

funcs.DoTween = function(self, ...)
	local tween = TweenService:Create(...)
	self.Tweens[#self.Tweens + 1] = tween
	tween:Play()
end

funcs.StopTweens = function(self)
	for i, v in self.Tweens do
		v:Cancel()
	end
	self.Tweens = {}
end

funcs.Show = function(self, data)
	return static.ShowWindow(self, data)
end

funcs.ShowAndFocus = function(self, data)
	static.ShowWindow(self, data)
	RunService.RenderStepped:Wait()
	self:Focus()
end

static.ShowWindow = function(window, data)
	data = data or {}
	local align = data.Align
	local pos = data.Pos
	local size = data.Size
	local targetSide = (align == "left" and leftSide) or (align == "right" and rightSide)

	if not window.Closed then
		if not window.Aligned then
			window:SetMinimized(false)
		elseif window.Side and not data.Silent then
			static.SetSideVisible(window.Side, true)
		end
		return
	end

	window.Closed = false
	window.LastClose = tick()
	window.GuiElems.Title.TextTransparency = 0
	window.GuiElems.Minimize.ImageLabel.ImageTransparency = 0
	window.GuiElems.Close.ImageLabel.ImageTransparency = 0
	window.GuiElems.TopBar.BackgroundTransparency = 0
	window.GuiElems.Outlines.ImageTransparency = 0
	window.GuiElems.Minimize.ImageLabel.Image = "rbxassetid://5034768003"
	window.GuiElems.Main.Active = true
	window.GuiElems.Main.Outlines.Visible = true
	window:SetMinimized(false, 3)
	window:SetResizableInternal(true)
	window.MinimizeAnim.Enable()
	window.CloseAnim.Enable()

	if align then
		window:AlignTo(targetSide, pos, size, data.Silent)
	else
		if align == nil and window.ClosedSide then -- Regular open
			window:AlignTo(window.ClosedSide, window.SidePos, size, true)
			static.SetSideVisible(window.ClosedSide, true)
		else
			if table.find(visibleWindows, window) then
				return
			end

			-- TODO: make better
			window.GuiElems.Main.Size = UDim2.new(0, window.SizeX, 0, 20)
			local ti = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			window:StopTweens()
			window:DoTween(window.GuiElems.Main, ti, { Size = UDim2.new(0, window.SizeX, 0, window.SizeY) })

			window.SizeY = size or window.SizeY
			table.insert(visibleWindows, 1, window)
			updateWindows()
		end
	end

	window.ClosedSide = nil
	window.OnActivate:Fire()
end

static.ToggleSide = function(name)
	local side = (name == "left" and leftSide or rightSide)
	side.Hidden = not side.Hidden
	for i, v in side.Windows do
		if side.Hidden then
			v.OnDeactivate:Fire()
		else
			v.OnActivate:Fire()
		end
	end
	updateWindows()
end

static.SetSideVisible = function(s, vis)
	local side = (type(s) == "table" and s) or (s == "left" and leftSide or rightSide)
	side.Hidden = not vis
	for i, v in side.Windows do
		if side.Hidden then
			v.OnDeactivate:Fire()
		else
			v.OnActivate:Fire()
		end
	end
	updateWindows()
end

static.Init = function()
	displayOrderStart = DisplayOrders.Window
	sideDisplayOrder = DisplayOrders.SideWindow

	sidesGui = Instance.new("ScreenGui")
	local leftFrame = create({
		{
			1,
			"Frame",
			{
				Active = true,
				Name = "LeftSide",
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				BorderSizePixel = 0,
			},
		},
		{
			2,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2549019753933, 0.2549019753933, 0.2549019753933),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Resizer",
				Parent = { 1 },
				Size = UDim2.new(0, 5, 1, 0),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 2 },
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0, 1, 1, 0),
			},
		},
		{
			4,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2549019753933, 0.2549019753933, 0.2549019753933),
				BorderSizePixel = 0,
				Font = 3,
				Name = "WindowResizer",
				Parent = { 1 },
				Position = UDim2.new(1, -300, 0, 0),
				Size = UDim2.new(1, 0, 0, 4),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			5,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 4 },
				Size = UDim2.new(1, 0, 0, 1),
			},
		},
	})
	leftSide.Frame = leftFrame
	leftFrame.Position = UDim2.new(0, -leftSide.Width - 10, 0, 0)
	leftSide.WindowResizer = leftFrame.WindowResizer
	leftFrame.WindowResizer.Parent = nil
	leftFrame.Parent = sidesGui

	local rightFrame = create({
		{
			1,
			"Frame",
			{
				Active = true,
				Name = "RightSide",
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				BorderSizePixel = 0,
			},
		},
		{
			2,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2549019753933, 0.2549019753933, 0.2549019753933),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Resizer",
				Parent = { 1 },
				Size = UDim2.new(0, 5, 1, 0),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 2 },
				Position = UDim2.new(0, 4, 0, 0),
				Size = UDim2.new(0, 1, 1, 0),
			},
		},
		{
			4,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2549019753933, 0.2549019753933, 0.2549019753933),
				BorderSizePixel = 0,
				Font = 3,
				Name = "WindowResizer",
				Parent = { 1 },
				Position = UDim2.new(1, -300, 0, 0),
				Size = UDim2.new(1, 0, 0, 4),
				Text = "",
				TextColor3 = Color3.new(0, 0, 0),
				TextSize = 14,
			},
		},
		{
			5,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 4 },
				Size = UDim2.new(1, 0, 0, 1),
			},
		},
	})
	rightSide.Frame = rightFrame
	rightFrame.Position = UDim2.new(1, 10, 0, 0)
	rightSide.WindowResizer = rightFrame.WindowResizer
	rightFrame.WindowResizer.Parent = nil
	rightFrame.Parent = sidesGui

	sideResizerHook(leftFrame.Resizer, "H", leftSide)
	sideResizerHook(rightFrame.Resizer, "H", rightSide)

	alignIndicator = Instance.new("ScreenGui")
	alignIndicator.DisplayOrder = DisplayOrders.Core
	local indicator = Instance.new("Frame", alignIndicator)
	indicator.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	indicator.BorderSizePixel = 0
	indicator.BackgroundTransparency = 0.8
	indicator.Name = "Indicator"
	local corner = Instance.new("UICorner", indicator)
	corner.CornerRadius = UDim.new(0, 10)

	local leftToggle = create({
		{
			1,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BorderColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderMode = 2,
				Font = 10,
				Name = "LeftToggle",
				Position = UDim2.new(0, 0, 0, -36),
				Size = UDim2.new(0, 16, 0, 36),
				Text = "<",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
	})
	local rightToggle = leftToggle:Clone()
	rightToggle.Name = "RightToggle"
	rightToggle.Position = UDim2.new(1, -16, 0, -36)
	Lib.ButtonAnim(leftToggle, { Mode = 2, PressColor = Color3.fromRGB(32, 32, 32) })
	Lib.ButtonAnim(rightToggle, { Mode = 2, PressColor = Color3.fromRGB(32, 32, 32) })

	leftToggle.MouseButton1Click:Connect(function()
		static.ToggleSide("left")
	end)

	rightToggle.MouseButton1Click:Connect(function()
		static.ToggleSide("right")
	end)

	leftToggle.Parent = sidesGui
	rightToggle.Parent = sidesGui

	sidesGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		local maxWidth = math.max(300, sidesGui.AbsoluteSize.X - static.FreeWidth)
		leftSide.Width = math.max(static.MinWidth, math.min(leftSide.Width, maxWidth - rightSide.Width))
		rightSide.Width = math.max(static.MinWidth, math.min(rightSide.Width, maxWidth - leftSide.Width))
		for i = 1, #visibleWindows do
			visibleWindows[i]:MoveInBoundary()
		end
		updateWindows(true)
	end)

	sidesGui.DisplayOrder = sideDisplayOrder - 1
	Lib.ShowGui(sidesGui)
	updateSideFrames()
end

local mt = { __index = funcs }
static.new = function()
	local obj = setmetatable({
		Minimized = false,
		Dragging = false,
		Resizing = false,
		Aligned = false,
		Draggable = true,
		Resizable = true,
		ResizableInternal = true,
		Alignable = true,
		Closed = true,
		SizeX = 300,
		SizeY = 300,
		MinX = 200,
		MinY = 200,
		PosX = 0,
		PosY = 0,
		GuiElems = {},
		Tweens = {},
		Elements = {},
		OnActivate = Signal.new(),
		OnDeactivate = Signal.new(),
		OnMinimize = Signal.new(),
		OnRestore = Signal.new(),
	}, mt)
	obj.Gui = createGui(obj)
	return obj
end

return static
end;
};
G2L_MODULES[G2L["13"]] = {
Closure = function()
    local script = G2L["13"];
local Lib = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Players: Players, TextService: TextService, UserInputService: UserInputService = Lib.Players,Lib.TextService,Lib.UIS
local funcs = {}
local mouse

local function createGui(self)
	local contextGui = create({
		{ 1, "ScreenGui", { DisplayOrder = 1000000, Name = "Context", ZIndexBehavior = 1 } },
		{
			2,
			"Frame",
			{
				Active = true,
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				Name = "Main",
				Parent = { 1 },
				Position = UDim2.new(0.5, -100, 0.5, -150),
				Size = UDim2.new(0, 200, 0, 100),
			},
		},
		{ 3, "UICorner", { CornerRadius = UDim.new(0, 4), Parent = { 2 } } },
		{
			4,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				Name = "Container",
				Parent = { 2 },
				Position = UDim2.new(0, 1, 0, 1),
				Size = UDim2.new(1, -2, 1, -2),
			},
		},
		{ 5, "UICorner", { CornerRadius = UDim.new(0, 4), Parent = { 4 } } },
		{
			6,
			"ScrollingFrame",
			{
				Active = true,
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				Name = "List",
				Parent = { 4 },
				Position = UDim2.new(0, 2, 0, 2),
				ScrollBarImageColor3 = Color3.new(0, 0, 0),
				ScrollBarThickness = 4,
				Size = UDim2.new(1, -4, 1, -4),
				VerticalScrollBarInset = 1,
			},
		},
		{ 7, "UIListLayout", { Parent = { 6 }, SortOrder = 2 } },
		{
			8,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BorderSizePixel = 0,
				Name = "SearchFrame",
				Parent = { 4 },
				Size = UDim2.new(1, 0, 0, 24),
				Visible = false,
			},
		},
		{
			9,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14901961386204, 0.14901961386204, 0.14901961386204),
				BorderColor3 = Color3.new(0.1176470592618, 0.1176470592618, 0.1176470592618),
				BorderSizePixel = 0,
				Name = "SearchContainer",
				Parent = { 8 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(1, -6, 0, 18),
			},
		},
		{
			10,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "SearchBox",
				Parent = { 9 },
				PlaceholderColor3 = Color3.new(0.39215689897537, 0.39215689897537, 0.39215689897537),
				PlaceholderText = "Search",
				Position = UDim2.new(0, 4, 0, 0),
				Size = UDim2.new(1, -8, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{ 11, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 9 } } },
		{
			12,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14117647707462),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 8 },
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 1),
			},
		},
		{
			13,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.new(0.33725491166115, 0.49019610881805, 0.73725491762161),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Entry",
				Parent = { 1 },
				Size = UDim2.new(1, 0, 0, 22),
				Text = "",
				TextSize = 14,
				Visible = false,
			},
		},
		{
			14,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "EntryName",
				Parent = { 13 },
				Position = UDim2.new(0, 24, 0, 0),
				Size = UDim2.new(1, -24, 1, 0),
				Text = "Duplicate",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			15,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Shortcut",
				Parent = { 13 },
				Position = UDim2.new(0, 24, 0, 0),
				Size = UDim2.new(1, -30, 1, 0),
				Text = "Ctrl+D",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			16,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ImageRectOffset = Vector2.new(304, 0),
				ImageRectSize = Vector2.new(16, 16),
				Name = "Icon",
				Parent = { 13 },
				Position = UDim2.new(0, 2, 0, 3),
				ScaleType = 4,
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{ 17, "UICorner", { CornerRadius = UDim.new(0, 4), Parent = { 13 } } },
		{
			18,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.21568629145622, 0.21568629145622, 0.21568629145622),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "Divider",
				Parent = { 1 },
				Position = UDim2.new(0, 0, 0, 20),
				Size = UDim2.new(1, 0, 0, 7),
				Visible = false,
			},
		},
		{
			19,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 18 },
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 1),
			},
		},
		{
			20,
			"TextLabel",
			{
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "DividerName",
				Parent = { 18 },
				Position = UDim2.new(0, 2, 0.5, 0),
				Size = UDim2.new(1, -4, 1, 0),
				Text = "Objects",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextTransparency = 0.60000002384186,
				TextXAlignment = 0,
				Visible = false,
			},
		},
	})
	self.GuiElems.Main = contextGui.Main
	self.GuiElems.List = contextGui.Main.Container.List
	self.GuiElems.Entry = contextGui.Entry
	self.GuiElems.Divider = contextGui.Divider
	self.GuiElems.SearchFrame = contextGui.Main.Container.SearchFrame
	self.GuiElems.SearchBar = self.GuiElems.SearchFrame.SearchContainer.SearchBox
	--require(script.Parent.ViewportTextBox).convert(self.GuiElems.SearchBar)

	self.GuiElems.SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
		local lower, find = string.lower, string.find
		local searchText = lower(self.GuiElems.SearchBar.Text)
		local items = self.Items
		local map = self.ItemToEntryMap

		if searchText ~= "" then
			local results = {}
			local count = 1
			for i = 1, #items do
				local item = items[i]
				local entry = map[item]
				if entry then
					if not item.Divider and find(lower(item.Name), searchText, 1, true) then
						results[count] = item
						count = count + 1
					else
						entry.Visible = false
					end
				end
			end
			table.sort(results, function(a, b)
				return a.Name < b.Name
			end)
			for i = 1, #results do
				local entry = map[results[i]]
				entry.LayoutOrder = i
				entry.Visible = true
			end
		else
			for i = 1, #items do
				local entry = map[items[i]]
				if entry then
					entry.LayoutOrder = i
					entry.Visible = true
				end
			end
		end

		local toSize = self.GuiElems.List.UIListLayout.AbsoluteContentSize.Y + 6
		self.GuiElems.List.CanvasSize = UDim2.new(0, 0, 0, toSize - 6)
	end)

	return contextGui
end

funcs.Add = function(self, item)
	local newItem = {
		Name = item.Name or "Item",
		Icon = item.Icon or "",
		Shortcut = item.Shortcut or "",
		OnClick = item.OnClick,
		OnHover = item.OnHover,
		Disabled = item.Disabled or false,
		DisabledIcon = item.DisabledIcon or "",
		IconMap = item.IconMap,
		OnRightClick = item.OnRightClick,
	}
	if self.QueuedDivider then
		local text = self.QueuedDividerText and #self.QueuedDividerText > 0
		self:AddDivider(text)
	end
	self.Items[#self.Items + 1] = newItem
	self.Updated = nil
end

funcs.AddRegistered = function(self, name, disabled)
	if not self.Registered[name] then
		error(name .. " is not registered")
	end

	if self.QueuedDivider then
		local text = self.QueuedDividerText and #self.QueuedDividerText > 0
		self:AddDivider(text)
	end
	self.Registered[name].Disabled = disabled
	self.Items[#self.Items + 1] = self.Registered[name]
	self.Updated = nil
end

funcs.Register = function(self, name, item)
	self.Registered[name] = {
		Name = item.Name or "Item",
		Icon = item.Icon or "",
		Shortcut = item.Shortcut or "",
		OnClick = item.OnClick,
		OnHover = item.OnHover,
		DisabledIcon = item.DisabledIcon or "",
		IconMap = item.IconMap,
		OnRightClick = item.OnRightClick,
	}
end

funcs.UnRegister = function(self, name)
	self.Registered[name] = nil
end

funcs.AddDivider = function(self, text)
	self.QueuedDivider = false
	local textWidth = text and TextService:GetTextSize(text, 14, Enum.Font.SourceSans, Vector2.new(999999999, 20)).X
		or nil
	table.insert(self.Items, { Divider = true, Text = text, TextSize = textWidth and textWidth + 4 })
	self.Updated = nil
end

funcs.QueueDivider = function(self, text)
	self.QueuedDivider = true
	self.QueuedDividerText = text or ""
end

funcs.Clear = function(self)
	self.Items = {}
	self.Updated = nil
end

funcs.Refresh = function(self)
	for i, v in self.GuiElems.List:GetChildren() do
		if not v:IsA("UIListLayout") then
			v:Destroy()
		end
	end
	local map = {}
	self.ItemToEntryMap = map

	local dividerFrame = self.GuiElems.Divider
	local contextList = self.GuiElems.List
	local entryFrame = self.GuiElems.Entry
	local items = self.Items

	for i = 1, #items do
		local item = items[i]
		if item.Divider then
			local newDivider = dividerFrame:Clone()
			newDivider.Line.BackgroundColor3 = self.Theme.DividerColor
			if item.Text then
				newDivider.Size = UDim2.new(1, 0, 0, 20)
				newDivider.Line.Position = UDim2.new(0, item.TextSize, 0.5, 0)
				newDivider.Line.Size = UDim2.new(1, -item.TextSize, 0, 1)
				newDivider.DividerName.TextColor3 = self.Theme.TextColor
				newDivider.DividerName.Text = item.Text
				newDivider.DividerName.Visible = true
			end
			newDivider.Visible = true
			map[item] = newDivider
			newDivider.Parent = contextList
		else
			local newEntry = entryFrame:Clone()
			newEntry.BackgroundColor3 = self.Theme.HighlightColor
			newEntry.EntryName.TextColor3 = self.Theme.TextColor
			newEntry.EntryName.Text = item.Name
			newEntry.Shortcut.Text = item.Shortcut
			if item.Disabled then
				newEntry.EntryName.TextColor3 = Color3.new(150 / 255, 150 / 255, 150 / 255)
				newEntry.Shortcut.TextColor3 = Color3.new(150 / 255, 150 / 255, 150 / 255)
			end

			if self.Iconless then
				newEntry.EntryName.Position = UDim2.new(0, 2, 0, 0)
				newEntry.EntryName.Size = UDim2.new(1, -4, 0, 20)
				newEntry.Icon.Visible = false
			else
				local iconIndex = item.Disabled and item.DisabledIcon or item.Icon
				if item.IconMap then
					if type(iconIndex) == "number" then
						item.IconMap:Display(newEntry.Icon, iconIndex)
					elseif type(iconIndex) == "string" then
						item.IconMap:DisplayByKey(newEntry.Icon, iconIndex)
					end
				elseif type(iconIndex) == "string" then
					newEntry.Icon.Image = iconIndex
				end
			end

			if not item.Disabled then
				if item.OnClick then
					newEntry.MouseButton1Click:Connect(function()
						item.OnClick(item.Name)
						if not item.NoHide then
							self:Hide()
						end
					end)
				end

				if item.OnRightClick then
					newEntry.MouseButton2Click:Connect(function()
						item.OnRightClick(item.Name)
						if not item.NoHide then
							self:Hide()
						end
					end)
				end
			end

			newEntry.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					newEntry.BackgroundTransparency = 0
				end
			end)

			newEntry.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					newEntry.BackgroundTransparency = 1
				end
			end)

			newEntry.Visible = true
			map[item] = newEntry
			newEntry.Parent = contextList
		end
	end
	self.Updated = true
end

funcs.Show = function(self, x, y)
	-- Initialize Gui
	local elems = self.GuiElems
	elems.SearchFrame.Visible = self.SearchEnabled
	elems.List.Position = UDim2.new(0, 2, 0, 2 + (self.SearchEnabled and 24 or 0))
	elems.List.Size = UDim2.new(1, -4, 1, -4 - (self.SearchEnabled and 24 or 0))
	if self.SearchEnabled and self.ClearSearchOnShow then
		elems.SearchBar.Text = ""
	end
	self.GuiElems.List.CanvasPosition = Vector2.new(0, 0)

	if not self.Updated then
		self:Refresh() -- Create entries
	end

	-- Vars
	local reverseY = false
	local mouse = Lib.LocalPlayer:GetMouse()
	x, y = x or mouse.X, y or mouse.Y
	local maxX, maxY = mouse.ViewSizeX, mouse.ViewSizeY

	-- Position and show
	if x + self.Width > maxX then
		x = self.ReverseX and x - self.Width or maxX - self.Width
	end
	elems.Main.Position = UDim2.new(0, x, 0, y)
	elems.Main.Size = UDim2.new(0, self.Width, 0, 0)
	self.Gui.DisplayOrder = DisplayOrders.Menu
	Lib.ShowGui(self.Gui)

	-- Size adjustment
	local toSize = elems.List.UIListLayout.AbsoluteContentSize.Y + 6 -- Padding
	if self.MaxHeight and toSize > self.MaxHeight then
		elems.List.CanvasSize = UDim2.new(0, 0, 0, toSize - 6)
		toSize = self.MaxHeight
	else
		elems.List.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
	if y + toSize > maxY then
		reverseY = true
	end

	-- Close event
	local closable
	if self.CloseEvent then
		self.CloseEvent:Disconnect()
	end
	self.CloseEvent = UserInputService.InputBegan:Connect(function(input)
		if not closable or input.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		if not Lib.CheckMouseInGui(elems.Main) then
			self.CloseEvent:Disconnect()
			self:Hide()
		end
	end)

	-- Resize
	if reverseY then
		elems.Main.Position = UDim2.new(0, x, 0, y - (self.ReverseYOffset or 0))
		local newY = y - toSize - (self.ReverseYOffset or 0)
		y = newY >= 0 and newY or 0
		elems.Main:TweenSizeAndPosition(
			UDim2.new(0, self.Width, 0, toSize),
			UDim2.new(0, x, 0, y),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			0.2,
			true
		)
	else
		elems.Main:TweenSize(
			UDim2.new(0, self.Width, 0, toSize),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			0.2,
			true
		)
	end

	-- Close debounce
	Lib.FastWait()
	if self.SearchEnabled and self.FocusSearchOnShow then
		elems.SearchBar:CaptureFocus()
	end
	closable = true
end

funcs.Hide = function(self)
	self.Gui.Parent = nil
end

funcs.ApplyTheme = function(self, data)
	local theme = self.Theme
	theme.ContentColor = data.ContentColor or Settings.Theme.Menu
	theme.OutlineColor = data.OutlineColor or Settings.Theme.Menu
	theme.DividerColor = data.DividerColor or Settings.Theme.Outline2
	theme.TextColor = data.TextColor or Settings.Theme.Text
	theme.HighlightColor = data.HighlightColor or Settings.Theme.Main1

	self.GuiElems.Main.BackgroundColor3 = theme.OutlineColor
	self.GuiElems.Main.Container.BackgroundColor3 = theme.ContentColor
end

local mt = { __index = funcs }
local function new()

	local obj = setmetatable({
		Width = 200,
		MaxHeight = nil,
		Iconless = false,
		SearchEnabled = false,
		ClearSearchOnShow = true,
		FocusSearchOnShow = true,
		Updated = false,
		QueuedDivider = false,
		QueuedDividerText = "",
		Items = {},
		Registered = {},
		GuiElems = {},
		Theme = {},
	}, mt)
	obj.Gui = createGui(obj)
	obj:ApplyTheme({})
	return obj
end

return { new = new }
end;
};
G2L_MODULES[G2L["14"]] = {
Closure = function()
    local script = G2L["14"];
local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local module = {}
-- TODO:
-- Must Show errors
module.CreateIntro = function(initStatus)
	local gui = create({
		{1,"ScreenGui",{Name="Intro",}},
		{2,"Frame",
			{Active=true,
				BackgroundColor3=Enviorment.Settings.Theme.Main1,
				BorderSizePixel=0,Name="Main",
				Parent={1},
				Position=UDim2.new(0.5,-175,0.5,-100),
				Size=UDim2.new(0,350,0,200),
			}},
		{3,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Main2,
			BorderSizePixel=0,
			ClipsDescendants=true,
			Name="Holder",
			Parent={2},
			Size=UDim2.new(1,0,1,0),}},
		{4,"UIGradient",{
			Parent={3},
			Rotation=30,
			Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,1,0),}),}},
		{5,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=4,
			Name="Title",
			Parent={3},
			Position=UDim2.new(0,-190,0,15),
			Size=UDim2.new(0,100,0,50),
			Text="Dex",
			TextColor3=Color3.new(1,1,1),
			TextSize=50,
			TextTransparency=1,}},
		{6,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="Desc",
			Parent={3},
			Position=UDim2.new(0,-230,0,60),
			Size=UDim2.new(0,180,0,25),
			Text="Ultimate Debugging Suite",
			TextColor3=Color3.new(1,1,1),
			TextSize=18,
			TextTransparency=1,}},
		{7,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="StatusText",
			Parent={3},
			Position=UDim2.new(0,20,0,110),
			Size=UDim2.new(0,180,0,25),
			Text="Fetching API",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=1,}},
		{8,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Main1,
			BorderSizePixel=0,
			Name="ProgressBar",
			Parent={3},
			Position=UDim2.new(0,110,0,145),
			Size=UDim2.new(0,0,0,4),}},
		{9,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.ListSelection2,
			BorderSizePixel=0,
			Name="Bar",
			Parent={8},
			Size=UDim2.new(0,0,1,0),}},
		{10,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://2764171053",
			ImageColor3=Enviorment.Settings.Theme.Main2,
			Parent={8},
			ScaleType=1,
			Size=UDim2.new(1,0,1,0),
			SliceCenter=Rect.new(2,2,254,254),}},
		{11,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="Creator",
			Parent={2},
			Position=UDim2.new(1,-110,1,-20),
			Size=UDim2.new(0,105,0,20),
			Text=""
			,TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextXAlignment=1,}},
		{12,"UIGradient",{
			Parent={11},
			Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,1,0),}),}},
		{13,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="Version",
			Parent={2},
			Position=UDim2.new(1,-110,1,-35),
			Size=UDim2.new(0,105,0,20),
			Text=Enviorment.Version,
			TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=1,}},
		{14,"UIGradient",{
			Parent={13},
			Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,1,0),}),}},
		{15,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Image="rbxassetid://1427967925",
			Name="Outlines",
			Parent={2},
			Position=UDim2.new(0,-5,0,-5),
			ScaleType=1,
			Size=UDim2.new(1,10,1,10),
			SliceCenter=Rect.new(6,6,25,25),
			TileSize=UDim2.new(0,20,0,20),}},
		{16,"UIGradient",{
			Parent={15},
			Rotation=-30,
			Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,1,0),}),}},
		{17,"UIGradient",
			{Parent={2},
				Rotation=-30,
				Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,1,0),}),}},
	})
	Enviorment.Functions.protectgui(gui)
	gui.Parent = Instance.new("ScreenGui",script.Parent.Parent)
	local backGradient = gui.Main.UIGradient
	local outlinesGradient = gui.Main.Outlines.UIGradient
	local holderGradient = gui.Main.Holder.UIGradient
	local titleText = gui.Main.Holder.Title
	local descText = gui.Main.Holder.Desc
	local versionText = gui.Main.Version
	local versionGradient = versionText.UIGradient
	local creatorText = gui.Main.Creator
	local creatorGradient = creatorText.UIGradient
	local statusText = gui.Main.Holder.StatusText
	local progressBar = gui.Main.Holder.ProgressBar
	local tweenS = Enviorment.TweenS

	local renderStepped = Enviorment.RunService.RenderStepped
	local signalWait = renderStepped.wait
	local fastwait = function(s)
		if not s then return signalWait(renderStepped) end
		local start = tick()
		while tick() - start < s do signalWait(renderStepped) end
	end

	statusText.Text = initStatus

	local function tweenNumber(n,ti,func)
		local tweenVal = Instance.new("IntValue")
		tweenVal.Value = 0
		tweenVal.Changed:Connect(func)
		local tween = tweenS:Create(tweenVal,ti,{Value = n})
		tween:Play()
		tween.Completed:Connect(function()
			tweenVal:Destroy()
		end)
	end

	local ti = TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
	tweenNumber(100,ti,function(val)
		val = val/200
		local start = NumberSequenceKeypoint.new(0,0)
		local a1 = NumberSequenceKeypoint.new(val,0)
		local a2 = NumberSequenceKeypoint.new(math.min(0.5,val+math.min(0.05,val)),1)
		if a1.Time == a2.Time then a2 = a1 end
		local b1 = NumberSequenceKeypoint.new(1-val,0)
		local b2 = NumberSequenceKeypoint.new(math.max(0.5,1-val-math.min(0.05,val)),1)
		if b1.Time == b2.Time then b2 = b1 end
		local goal = NumberSequenceKeypoint.new(1,0)
		backGradient.Transparency = NumberSequence.new({start,a1,a2,b2,b1,goal})
		outlinesGradient.Transparency = NumberSequence.new({start,a1,a2,b2,b1,goal})
	end)

	fastwait(0.4)

	tweenNumber(100,ti,function(val)
		val = val/166.66
		local start = NumberSequenceKeypoint.new(0,0)
		local a1 = NumberSequenceKeypoint.new(val,0)
		local a2 = NumberSequenceKeypoint.new(val+0.01,1)
		local goal = NumberSequenceKeypoint.new(1,1)
		holderGradient.Transparency = NumberSequence.new({start,a1,a2,goal})
	end)

	tweenS:Create(titleText,ti,{Position = UDim2.new(0,60,0,15), TextTransparency = 0}):Play()
	tweenS:Create(descText,ti,{Position = UDim2.new(0,20,0,60), TextTransparency = 0}):Play()

	local function rightTextTransparency(obj)
		tweenNumber(100,ti,function(val)
			val = val/100
			local a1 = NumberSequenceKeypoint.new(1-val,0)
			local a2 = NumberSequenceKeypoint.new(math.max(0,1-val-0.01),1)
			if a1.Time == a2.Time then a2 = a1 end
			local start = NumberSequenceKeypoint.new(0,a1 == a2 and 0 or 1)
			local goal = NumberSequenceKeypoint.new(1,0)
			obj.Transparency = NumberSequence.new({start,a2,a1,goal})
		end)
	end
	rightTextTransparency(versionGradient)
	rightTextTransparency(creatorGradient)

	fastwait(0.9)

	local progressTI = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)

	tweenS:Create(statusText,progressTI,{Position = UDim2.new(0,20,0,120), TextTransparency = 0}):Play()
	tweenS:Create(progressBar,progressTI,{Position = UDim2.new(0,60,0,145), Size = UDim2.new(0,100,0,4)}):Play()

	fastwait(0.25)

	local function setProgress(text,n)
		statusText.Text = text
		tweenS:Create(progressBar.Bar,progressTI,{Size = UDim2.new(n,0,1,0)}):Play()
	end

	local function close()
		tweenS:Create(titleText,progressTI,{TextTransparency = 1}):Play()
		tweenS:Create(descText,progressTI,{TextTransparency = 1}):Play()
		tweenS:Create(versionText,progressTI,{TextTransparency = 1}):Play()
		tweenS:Create(creatorText,progressTI,{TextTransparency = 1}):Play()
		tweenS:Create(statusText,progressTI,{TextTransparency = 1}):Play()
		tweenS:Create(progressBar,progressTI,{BackgroundTransparency = 1}):Play()
		tweenS:Create(progressBar.Bar,progressTI,{BackgroundTransparency = 1}):Play()
		tweenS:Create(progressBar.ImageLabel,progressTI,{ImageTransparency = 1}):Play()

		tweenNumber(100,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),function(val)
			val = val/250
			local start = NumberSequenceKeypoint.new(0,0)
			local a1 = NumberSequenceKeypoint.new(0.6+val,0)
			local a2 = NumberSequenceKeypoint.new(math.min(1,0.601+val),1)
			if a1.Time == a2.Time then a2 = a1 end
			local goal = NumberSequenceKeypoint.new(1,a1 == a2 and 0 or 1)
			holderGradient.Transparency = NumberSequence.new({start,a1,a2,goal})
		end)

		fastwait(0.5)
		gui.Main.BackgroundTransparency = 1
		outlinesGradient.Rotation = 30

		tweenNumber(100,ti,function(val)
			val = val/100
			local start = NumberSequenceKeypoint.new(0,1)
			local a1 = NumberSequenceKeypoint.new(val,1)
			local a2 = NumberSequenceKeypoint.new(math.min(1,val+math.min(0.05,val)),0)
			if a1.Time == a2.Time then a2 = a1 end
			local goal = NumberSequenceKeypoint.new(1,a1 == a2 and 1 or 0)
			outlinesGradient.Transparency = NumberSequence.new({start,a1,a2,goal})
			holderGradient.Transparency = NumberSequence.new({start,a1,a2,goal})
		end)

		fastwait(0.45)
		gui:Destroy()
	end

	return {SetProgress = setProgress, Close = close}
end
return module
end;
};
G2L_MODULES[G2L["15"]] = {
Closure = function()
    local script = G2L["15"];-- Simple Save Instance
local static = {}
local funcs = {}
local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Window)
local Button = require(script.Parent.Parent.Base.Button)
local Label = require(script.Parent.Parent.Base.Label)
local TextBox = require(script.Parent.Parent.Base.ViewportTextBox)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
--local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local mt = {__index = funcs}
funcs.SetText = function(self,text)
	self.GuiElems.TextBox:SetText(text)
end
funcs.Show = function(self)
	self.Window:Show()
end
static.new = function()
	local obj;
	obj = setmetatable({
		Window = Window.new(),
		OnSave = Signal.new(),
		OnCancel = Signal.new(),
		GuiElems = {},
	},mt)
	obj.Window:SetTitle("Save Instance")
	obj.Window.SizeX = 472
	obj.Window.SizeY = 200
	local save = Button.new()
	local cancel = Button.new()
	local box = TextBox.new()
	box.Parent = obj.Window.GuiElems.Content
	box.Size = UDim2.new(1,0,0,20)
	save.OnClick:Connect(function()
		obj.OnSave:Fire(box:GetText())
		obj.Window.Hide(obj.Window)
	end)
	save.Gui.Text = "Save"
	save.Gui.Parent = obj.Window.GuiElems.Content
	save.Gui.Size = UDim2.new(0.5,-20,0,20)
	save.Gui.Position = UDim2.new(0.5,10,1,-20)
	
	cancel.OnClick:Connect(function()
		obj.OnCancel:Fire()
		obj.Window.Hide(obj.Window)
	end)
	
	cancel.Gui.Text = "Cancel"
	cancel.Gui.Parent = obj.Window.GuiElems.Content
	cancel.Gui.Size = UDim2.new(0.5,-20,0,20)
	cancel.Gui.Position = UDim2.new(0,10,1,-20)
	obj.GuiElems.Window = obj.Window
	obj.GuiElems.TextBox = box
	obj.GuiElems.Cancel = cancel
	obj.GuiElems.Save = save
	obj.Window.OnDeactivate:Connect(function()
		obj.OnCancel:Fire()
	end)
	return obj
end

return static

end;
};
G2L_MODULES[G2L["16"]] = {
Closure = function()
    local script = G2L["16"];local static = {}
local funcs = {}
funcs.__index = funcs
local Window = require(script.Parent.Window)
local CodeBox = require(script.Parent.Parent.Base.SmallCodeBox)
local Label = require(script.Parent.Parent.Base.Label)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local Button = require(script.Parent.Parent.Base.Button)
funcs.AddArgument = function(self)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = self.GuiElems.Window.GuiElems.Content
	frm.BackgroundTransparency = 1
	local index = #self.GuiElems.Window.GuiElems.Content:GetChildren() == 3 and 1 or #self.GuiElems.Window.GuiElems.Content:GetChildren() - 3
	
	local label = Label.new({Parent = frm,Size = UDim2.new(0.4,0,1,0),Text = "Argument #" .. tostring(index)})
	local box = CodeBox.new()
	box.GuiElems.TextBox.Size = UDim2.new(0.5,0,1,0)
	box.GuiElems.TextBox.Position = UDim2.new(0.5,0,0,0)
	box.GuiElems.TextBox.Parent = frm
	self.Arguments[index] = box
end

funcs.Show = function(self)
	self.GuiElems.Window:Show()
end

static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {},
		Arguments = {},
		Interaction = Signal.new(),
	},funcs)
	local w = Window.new()
	obj.GuiElems.Window = w;
	
	obj.Window = w;
	obj.Window.SizeY = obj.Window.SizeY - 40
	obj.GuiElems.Window:SetTitle('Function Arguments')
	Instance.new("UIListLayout",obj.GuiElems.Window.GuiElems.Content)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = obj.GuiElems.Window.GuiElems.Content
	frm.Name = "Indent"
	frm.BackgroundTransparency = 1
	--obj.GuiElems.Window.GuiElems.Content.Line:Destroy()
	for i=1,10 do obj:AddArgument() end
	obj.GuiElems.Window.Resizable = false
	
	
	local frm2 = Instance.new("Frame")
	frm2.Size = UDim2.new(1,0,0,20)
	frm2.Parent = obj.GuiElems.Window.GuiElems.Content
	frm2.Name = "Indent2"
	frm2.BackgroundTransparency = 1
	
	local save = Button.new()
	local cancel = Button.new()
	save.OnClick:Connect(function()
		local args = {}
		for _, v in obj.Arguments do
			args[#args+1] = Functions.Luau_To_Value(v:GetText())
		end
		obj.Interaction:Fire(true,table.unpack(args))
		obj.Window.Hide(obj.Window)
	end)
	save.Gui.Text = "Save"
	save.Gui.Parent = frm2
	save.Gui.Size = UDim2.new(0.5,-20,0,20)
	save.Gui.Position = UDim2.new(0.5,10,1,-20)

	cancel.OnClick:Connect(function()
		obj.Interaction:Fire(false)
		obj.Window.Hide(obj.Window)
	end)

	cancel.Gui.Text = "Cancel"
	cancel.Gui.Parent = frm2
	cancel.Gui.Size = UDim2.new(0.5,-20,0,20)
	cancel.Gui.Position = UDim2.new(0,10,1,-20)
	return obj
end


return static
end;
};
G2L_MODULES[G2L["17"]] = {
Closure = function()
    local script = G2L["17"];local static = {}
local funcs = {}
funcs.__index = funcs
local Window = require(script.Parent.Window)
local CodeBox = require(script.Parent.Parent.Base.SmallCodeBox)
local Label = require(script.Parent.Parent.Base.Label)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local Button = require(script.Parent.Parent.Base.Button)
funcs.AddLabel = function(self,text)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = self.GuiElems.Window.GuiElems.Content
	frm.BackgroundTransparency = 1
	local index =text
	
	local label = Label.new({Parent = frm,Size = UDim2.new(0.4,0,1,0),Text = text})
	local box = CodeBox.new()
	box.GuiElems.TextBox.Size = UDim2.new(0.5,0,1,0)
	box.GuiElems.TextBox.Position = UDim2.new(0.5,0,0,0)
	box.GuiElems.TextBox.Parent = frm
	self.Arguments[index] = box
end

funcs.Show = function(self)
	self.GuiElems.Window:Show()
end
funcs.Display = function(self,data)
	self.Arguments["Result"]:SetText(Functions.Value_To_Luau(data.Result))
	self.Arguments["Success"]:SetText(Functions.Value_To_Luau(data.Success))
end
static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {},
		Arguments = {},
	},funcs)
	local w = Window.new()
	obj.GuiElems.Window = w;
	
	obj.Window = w;
	obj.Window.SizeY = 60
	obj.Window.SizeX = 300
	obj.GuiElems.Window:SetTitle('Function Result')
	Instance.new("UIListLayout",obj.GuiElems.Window.GuiElems.Content)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = obj.GuiElems.Window.GuiElems.Content
	frm.Name = "Indent"
	frm.BackgroundTransparency = 1
	--obj.GuiElems.Window.GuiElems.Content.Line:Destroy()
	obj:AddLabel("Result")
	obj:AddLabel("Success")
	obj.GuiElems.Window.Resizable = false
	return obj
end


return static
end;
};
G2L_MODULES[G2L["18"]] = {
Closure = function()
    local script = G2L["18"];local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()

local TweenService: TweenService, UserInputService: UserInputService = Enviorment.TweenS, Enviorment.UIS
local ScrollBar = require(script.Parent.ScrollBar)

local funcs = {}

local typeMap = {
	[1] = "String",
	[2] = "String",
	[3] = "String",
	[4] = "Comment",
	[5] = "Operator",
	[6] = "Number",
	[7] = "Keyword",
	[8] = "BuiltIn",
	[9] = "LocalMethod",
	[10] = "LocalProperty",
	[11] = "Nil",
	[12] = "Bool",
	[13] = "Function",
	[14] = "Local",
	[15] = "Self",
	[16] = "FunctionName",
	[17] = "Bracket",
}

local specialKeywordsTypes = {
	["nil"] = 11,
	["true"] = 12,
	["false"] = 12,
	["function"] = 13,
	["local"] = 14,
	["self"] = 15,
}

local keywords = {
	["and"] = true,
	["break"] = true,
	["do"] = true,
	["else"] = true,
	["elseif"] = true,
	["end"] = true,
	["false"] = true,
	["for"] = true,
	["function"] = true,
	["if"] = true,
	["in"] = true,
	["local"] = true,
	["nil"] = true,
	["not"] = true,
	["or"] = true,
	["repeat"] = true,
	["return"] = true,
	["then"] = true,
	["true"] = true,
	["until"] = true,
	["while"] = true,
	["plugin"] = true,
}

local builtIns = {
	["delay"] = true,
	["elapsedTime"] = true,
	["require"] = true,
	["spawn"] = true,
	["tick"] = true,
	["time"] = true,
	["typeof"] = true,
	["UserSettings"] = true,
	["wait"] = true,
	["warn"] = true,
	["game"] = true,
	["shared"] = true,
	["script"] = true,
	["workspace"] = true,
	["assert"] = true,
	["collectgarbage"] = true,
	["error"] = true,
	["getfenv"] = true,
	["getmetatable"] = true,
	["ipairs"] = true,
	["loadstring"] = true,
	["newproxy"] = true,
	["next"] = true,
	["pairs"] = true,
	["pcall"] = true,
	["print"] = true,
	["rawequal"] = true,
	["rawget"] = true,
	["rawset"] = true,
	["select"] = true,
	["setfenv"] = true,
	["setmetatable"] = true,
	["tonumber"] = true,
	["tostring"] = true,
	["type"] = true,
	["unpack"] = true,
	["xpcall"] = true,
	["_G"] = true,
	["_VERSION"] = true,
	["coroutine"] = true,
	["debug"] = true,
	["math"] = true,
	["os"] = true,
	["string"] = true,
	["table"] = true,
	["bit32"] = true,
	["utf8"] = true,
	["Axes"] = true,
	["BrickColor"] = true,
	["CFrame"] = true,
	["Color3"] = true,
	["ColorSequence"] = true,
	["ColorSequenceKeypoint"] = true,
	["DockWidgetPluginGuiInfo"] = true,
	["Enum"] = true,
	["Faces"] = true,
	["Instance"] = true,
	["NumberRange"] = true,
	["NumberSequence"] = true,
	["NumberSequenceKeypoint"] = true,
	["PathWaypoint"] = true,
	["PhysicalProperties"] = true,
	["Random"] = true,
	["Ray"] = true,
	["Rect"] = true,
	["Region3"] = true,
	["Region3int16"] = true,
	["TweenInfo"] = true,
	["UDim"] = true,
	["UDim2"] = true,
	["Vector2"] = true,
	["Vector2int16"] = true,
	["Vector3"] = true,
	["Vector3int16"] = true,
}

local builtInInited = false

local richReplace = {
	["'"] = "&apos;",
	['"'] = "&quot;",
	["<"] = "&lt;",
	[">"] = "&gt;",
	["&"] = "&amp;",
}

local tabSub = "\205"
local tabReplacement = (" %s%s "):format(tabSub, tabSub)

local tabJumps = {
	[("[^%s] %s"):format(tabSub, tabSub)] = 0,
	[(" %s%s"):format(tabSub, tabSub)] = -1,
	[("%s%s "):format(tabSub, tabSub)] = 2,
	[("%s [^%s]"):format(tabSub, tabSub)] = 1,
}

local lineTweens = {}

local function initBuiltIn()
	local env = getfenv()
	local type = type
	local tostring = tostring
	for name, _ in builtIns do
		local envVal = env[name]
		if type(envVal) == "table" then
			local items = {}
			for i, v in envVal do
				items[i] = true
			end
			builtIns[name] = items
		end
	end

	local enumEntries = {}
	local enums = Enum:GetEnums()
	for i = 1, #enums do
		enumEntries[tostring(enums[i])] = true
	end
	builtIns["Enum"] = enumEntries

	builtInInited = true
end

local function setupEditBox(obj)
	local editBox = obj.GuiElems.EditBox

	editBox.Focused:Connect(function()
		obj:ConnectEditBoxEvent()
		obj.Editing = true
	end)

	editBox.FocusLost:Connect(function()
		obj:DisconnectEditBoxEvent()
		obj.Editing = false
	end)

	editBox:GetPropertyChangedSignal("Text"):Connect(function()
		local text = editBox.Text
		if #text == 0 or obj.EditBoxCopying then
			return
		end
		editBox.Text = ""
		obj:AppendText(text)
	end)
end

local function setupMouseSelection(obj)
	local mouse = Enviorment.Players.LocalPlayer:GetMouse()
	local codeFrame = obj.GuiElems.LinesFrame
	local lines = obj.Lines

	codeFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local fontSizeX, fontSizeY = math.ceil(obj.FontSize / 2), obj.FontSize

			local relX = mouse.X - codeFrame.AbsolutePosition.X
			local relY = mouse.Y - codeFrame.AbsolutePosition.Y
			local selX = math.round(relX / fontSizeX) + obj.ViewX
			local selY = math.floor(relY / fontSizeY) + obj.ViewY
			local releaseEvent, mouseEvent, scrollEvent
			local scrollPowerV, scrollPowerH = 0, 0
			selY = math.min(#lines - 1, selY)
			local relativeLine = lines[selY + 1] or ""
			selX = math.min(#relativeLine, selX + obj:TabAdjust(selX, selY))

			obj.SelectionRange = { { -1, -1 }, { -1, -1 } }
			obj:MoveCursor(selX, selY)
			obj.FloatCursorX = selX

			local function updateSelection()
				local relX = mouse.X - codeFrame.AbsolutePosition.X
				local relY = mouse.Y - codeFrame.AbsolutePosition.Y
				local sel2X = math.max(0, math.round(relX / fontSizeX) + obj.ViewX)
				local sel2Y = math.max(0, math.floor(relY / fontSizeY) + obj.ViewY)

				sel2Y = math.min(#lines - 1, sel2Y)
				local relativeLine = lines[sel2Y + 1] or ""
				sel2X = math.min(#relativeLine, sel2X + obj:TabAdjust(sel2X, sel2Y))

				if sel2Y < selY or (sel2Y == selY and sel2X < selX) then
					obj.SelectionRange = { { sel2X, sel2Y }, { selX, selY } }
				else
					obj.SelectionRange = { { selX, selY }, { sel2X, sel2Y } }
				end

				obj:MoveCursor(sel2X, sel2Y)
				obj.FloatCursorX = sel2X
				obj:Refresh()
			end

			releaseEvent = UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
					scrollEvent:Disconnect()
					obj:SetCopyableSelection()
					--updateSelection()
				end
			end)

			mouseEvent = UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local upDelta = mouse.Y - codeFrame.AbsolutePosition.Y
					local downDelta = mouse.Y - codeFrame.AbsolutePosition.Y - codeFrame.AbsoluteSize.Y
					local leftDelta = mouse.X - codeFrame.AbsolutePosition.X
					local rightDelta = mouse.X - codeFrame.AbsolutePosition.X - codeFrame.AbsoluteSize.X
					scrollPowerV = 0
					scrollPowerH = 0
					if downDelta > 0 then
						scrollPowerV = math.floor(downDelta * 0.05) + 1
					elseif upDelta < 0 then
						scrollPowerV = math.ceil(upDelta * 0.05) - 1
					end
					if rightDelta > 0 then
						scrollPowerH = math.floor(rightDelta * 0.05) + 1
					elseif leftDelta < 0 then
						scrollPowerH = math.ceil(leftDelta * 0.05) - 1
					end
					updateSelection()
				end
			end)

			scrollEvent = game:GetService("RunService").RenderStepped:Connect(function()
				if scrollPowerV ~= 0 or scrollPowerH ~= 0 then
					obj:ScrollDelta(scrollPowerH, scrollPowerV)
					updateSelection()
				end
			end)

			obj:Refresh()
		end
	end)
end

local function makeFrame(obj)
	local frame = create({
		{
			1,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, -300, 0.5, -200),
				Size = UDim2.new(0, 600, 0, 400),
			},
		},
	})
	local elems = {}

	local linesFrame = Instance.new("Frame")
	linesFrame.Name = "Lines"
	linesFrame.BackgroundTransparency = 1
	linesFrame.Size = UDim2.new(1, 0, 1, 0)
	linesFrame.ClipsDescendants = true
	linesFrame.Parent = frame

	local lineNumbersLabel = Instance.new("TextLabel")
	lineNumbersLabel.Name = "LineNumbers"
	lineNumbersLabel.BackgroundTransparency = 1
	lineNumbersLabel.Font = Enum.Font.Code
	lineNumbersLabel.TextXAlignment = Enum.TextXAlignment.Right
	lineNumbersLabel.TextYAlignment = Enum.TextYAlignment.Top
	lineNumbersLabel.ClipsDescendants = true
	lineNumbersLabel.RichText = true
	lineNumbersLabel.Parent = frame

	local cursor = Instance.new("Frame")
	cursor.Name = "Cursor"
	cursor.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
	cursor.BorderSizePixel = 0
	cursor.Parent = frame

	local editBox = Instance.new("TextBox")
	editBox.Name = "EditBox"
	editBox.MultiLine = true
	editBox.Visible = false
	editBox.Parent = frame

	lineTweens.Invis = TweenService:Create(
		cursor,
		TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
		{ BackgroundTransparency = 1 }
	)
	lineTweens.Vis = TweenService:Create(
		cursor,
		TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
		{ BackgroundTransparency = 0 }
	)

	elems.LinesFrame = linesFrame
	elems.LineNumbersLabel = lineNumbersLabel
	elems.Cursor = cursor
	elems.EditBox = editBox
	elems.ScrollCorner = create({
		{
			1,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
				BorderSizePixel = 0,
				Name = "ScrollCorner",
				Position = UDim2.new(1, -16, 1, -16),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = false,
			},
		},
	})

	elems.ScrollCorner.Parent = frame
	linesFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			obj:SetEditing(true, input)
		end
	end)

	obj.Frame = frame
	obj.Gui = frame
	obj.GuiElems = elems
	setupEditBox(obj)
	setupMouseSelection(obj)

	return frame
end

funcs.GetSelectionText = function(self)
	if not self:IsValidRange() then
		return ""
	end

	local selectionRange = self.SelectionRange
	local selX, selY = selectionRange[1][1], selectionRange[1][2]
	local sel2X, sel2Y = selectionRange[2][1], selectionRange[2][2]
	local deltaLines = sel2Y - selY
	local lines = self.Lines

	if not lines[selY + 1] or not lines[sel2Y + 1] then
		return ""
	end

	if deltaLines == 0 then
		return self:ConvertText(lines[selY + 1]:sub(selX + 1, sel2X), false)
	end

	local leftSub = lines[selY + 1]:sub(selX + 1)
	local rightSub = lines[sel2Y + 1]:sub(1, sel2X)

	local result = leftSub .. "\n"
	for i = selY + 1, sel2Y - 1 do
		result = result .. lines[i + 1] .. "\n"
	end
	result = result .. rightSub

	return self:ConvertText(result, false)
end

funcs.SetCopyableSelection = function(self)
	local text = self:GetSelectionText()
	local editBox = self.GuiElems.EditBox

	self.EditBoxCopying = true
	editBox.Text = text
	editBox.SelectionStart = 1
	editBox.CursorPosition = #editBox.Text + 1
	self.EditBoxCopying = false
end

funcs.ConnectEditBoxEvent = function(self)
	if self.EditBoxEvent then
		self.EditBoxEvent:Disconnect()
	end

	self.EditBoxEvent = UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.Keyboard then
			return
		end

		local keycodes = Enum.KeyCode
		local keycode = input.KeyCode

		local function setupMove(key, func)
			local endCon, finished
			endCon = UserInputService.InputEnded:Connect(function(input)
				if input.KeyCode ~= key then
					return
				end
				endCon:Disconnect()
				finished = true
			end)
			func()
			Lib.FastWait(0.5)
			while not finished do
				func()
				Lib.FastWait(0.03)
			end
		end

		if keycode == keycodes.Down then
			setupMove(keycodes.Down, function()
				self.CursorX = self.FloatCursorX
				self.CursorY = self.CursorY + 1
				self:UpdateCursor()
				self:JumpToCursor()
			end)
		elseif keycode == keycodes.Up then
			setupMove(keycodes.Up, function()
				self.CursorX = self.FloatCursorX
				self.CursorY = self.CursorY - 1
				self:UpdateCursor()
				self:JumpToCursor()
			end)
		elseif keycode == keycodes.Left then
			setupMove(keycodes.Left, function()
				local line = self.Lines[self.CursorY + 1] or ""
				self.CursorX = self.CursorX
				- 1
				- (line:sub(self.CursorX - 3, self.CursorX) == tabReplacement and 3 or 0)
				if self.CursorX < 0 then
					self.CursorY = self.CursorY - 1
					local line2 = self.Lines[self.CursorY + 1] or ""
					self.CursorX = #line2
				end
				self.FloatCursorX = self.CursorX
				self:UpdateCursor()
				self:JumpToCursor()
			end)
		elseif keycode == keycodes.Right then
			setupMove(keycodes.Right, function()
				local line = self.Lines[self.CursorY + 1] or ""
				self.CursorX = self.CursorX
					+ 1
					+ (line:sub(self.CursorX + 1, self.CursorX + 4) == tabReplacement and 3 or 0)
				if self.CursorX > #line then
					self.CursorY = self.CursorY + 1
					self.CursorX = 0
				end
				self.FloatCursorX = self.CursorX
				self:UpdateCursor()
				self:JumpToCursor()
			end)
		elseif keycode == keycodes.Backspace then
			setupMove(keycodes.Backspace, function()
				local startRange, endRange
				if self:IsValidRange() then
					startRange = self.SelectionRange[1]
					endRange = self.SelectionRange[2]
				else
					endRange = { self.CursorX, self.CursorY }
				end

				if not startRange then
					local line = self.Lines[self.CursorY + 1] or ""
					self.CursorX = self.CursorX
					- 1
					- (line:sub(self.CursorX - 3, self.CursorX) == tabReplacement and 3 or 0)
					if self.CursorX < 0 then
						self.CursorY = self.CursorY - 1
						local line2 = self.Lines[self.CursorY + 1] or ""
						self.CursorX = #line2
					end
					self.FloatCursorX = self.CursorX
					self:UpdateCursor()

					startRange = startRange or { self.CursorX, self.CursorY }
				end

				self:DeleteRange({ startRange, endRange }, false, true)
				self:ResetSelection(true)
				self:JumpToCursor()
			end)
		elseif keycode == keycodes.Delete then
			setupMove(keycodes.Delete, function()
				local startRange, endRange
				if self:IsValidRange() then
					startRange = self.SelectionRange[1]
					endRange = self.SelectionRange[2]
				else
					startRange = { self.CursorX, self.CursorY }
				end

				if not endRange then
					local line = self.Lines[self.CursorY + 1] or ""
					local endCursorX = self.CursorX
						+ 1
						+ (line:sub(self.CursorX + 1, self.CursorX + 4) == tabReplacement and 3 or 0)
					local endCursorY = self.CursorY
					if endCursorX > #line then
						endCursorY = endCursorY + 1
						endCursorX = 0
					end
					self:UpdateCursor()

					endRange = endRange or { endCursorX, endCursorY }
				end

				self:DeleteRange({ startRange, endRange }, false, true)
				self:ResetSelection(true)
				self:JumpToCursor()
			end)
		elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
			if keycode == keycodes.A then
				self.SelectionRange = { { 0, 0 }, { #self.Lines[#self.Lines], #self.Lines - 1 } }
				self:SetCopyableSelection()
				self:Refresh()
			end
		end
	end)
end

funcs.DisconnectEditBoxEvent = function(self)
	if self.EditBoxEvent then
		self.EditBoxEvent:Disconnect()
	end
end

funcs.ResetSelection = function(self, norefresh)
	self.SelectionRange = { { -1, -1 }, { -1, -1 } }
	if not norefresh then
		self:Refresh()
	end
end

funcs.IsValidRange = function(self, range)
	local selectionRange = range or self.SelectionRange
	local selX, selY = selectionRange[1][1], selectionRange[1][2]
	local sel2X, sel2Y = selectionRange[2][1], selectionRange[2][2]

	if selX == -1 or (selX == sel2X and selY == sel2Y) then
		return false
	end

	return true
end

funcs.DeleteRange = function(self, range, noprocess, updatemouse)
	range = range or self.SelectionRange
	if not self:IsValidRange(range) then
		return
	end

	local lines = self.Lines
	local selX, selY = range[1][1], range[1][2]
	local sel2X, sel2Y = range[2][1], range[2][2]
	local deltaLines = sel2Y - selY

	if not lines[selY + 1] or not lines[sel2Y + 1] then
		return
	end

	local leftSub = lines[selY + 1]:sub(1, selX)
	local rightSub = lines[sel2Y + 1]:sub(sel2X + 1)
	lines[selY + 1] = leftSub .. rightSub

	local remove = table.remove
	for i = 1, deltaLines do
		remove(lines, selY + 2)
	end

	if range == self.SelectionRange then
		self.SelectionRange = { { -1, -1 }, { -1, -1 } }
	end
	if updatemouse then
		self.CursorX = selX
		self.CursorY = selY
		self:UpdateCursor()
	end

	if not noprocess then
		self:ProcessTextChange()
	end
end

funcs.AppendText = function(self, text)
	self:DeleteRange(nil, true, true)
	local lines, cursorX, cursorY = self.Lines, self.CursorX, self.CursorY
	local line = lines[cursorY + 1]
	local before = line:sub(1, cursorX)
	local after = line:sub(cursorX + 1)

	text = text:gsub("\r\n", "\n")
	text = text:gsub("\t", "    ")
	text = self:ConvertText(text, true) -- Tab Convert

	local textLines = text:split("\n")
	local insert = table.insert

	for i = 1, #textLines do
		local linePos = cursorY + i
		if i > 1 then
			insert(lines, linePos, "")
		end

		local textLine = textLines[i]
		local newBefore = (i == 1 and before or "")
		local newAfter = (i == #textLines and after or "")

		lines[linePos] = newBefore .. textLine .. newAfter
	end

	if #textLines > 1 then
		cursorX = 0
	end

	self:ProcessTextChange()
	self.CursorX = cursorX + #textLines[#textLines]
	self.CursorY = cursorY + #textLines - 1
	self:UpdateCursor()
end

funcs.ScrollDelta = function(self, x, y)
	self.ScrollV:ScrollTo(self.ScrollV.Index + y)
	self.ScrollH:ScrollTo(self.ScrollH.Index + x)
end

-- x and y starts at 0
funcs.TabAdjust = function(self, x, y)
	local lines = self.Lines
	local line = lines[y + 1]
	x = x + 1

	if line then
		local left = line:sub(x - 1, x - 1)
		local middle = line:sub(x, x)
		local right = line:sub(x + 1, x + 1)
		local selRange = (#left > 0 and left or " ") .. (#middle > 0 and middle or " ") .. (#right > 0 and right or " ")

		for i, v in pairs(tabJumps) do
			if selRange:find(i) then
				return v
			end
		end
	end
	return 0
end

funcs.SetEditing = function(self, on, input)
	self:UpdateCursor(input)

	if on then
		if self.Editable then
			self.GuiElems.EditBox.Text = ""
			self.GuiElems.EditBox:CaptureFocus()
		end
	else
		self.GuiElems.EditBox:ReleaseFocus()
	end
end

funcs.CursorAnim = function(self, on)
	local cursor = self.GuiElems.Cursor
	local animTime = tick()
	self.LastAnimTime = animTime

	if not on then
		return
	end

	lineTweens.Invis:Cancel()
	lineTweens.Vis:Cancel()
	cursor.BackgroundTransparency = 0

	coroutine.wrap(function()
		while self.Editable do
			Lib.FastWait(0.5)
			if self.LastAnimTime ~= animTime then
				return
			end
			lineTweens.Invis:Play()
			Lib.FastWait(0.4)
			if self.LastAnimTime ~= animTime then
				return
			end
			lineTweens.Vis:Play()
			Lib.FastWait(0.2)
		end
	end)()
end

funcs.MoveCursor = function(self, x, y)
	self.CursorX = x
	self.CursorY = y
	self:UpdateCursor()
	self:JumpToCursor()
end

funcs.JumpToCursor = function(self)
	self:Refresh()
end

funcs.UpdateCursor = function(self, input)
	local linesFrame = self.GuiElems.LinesFrame
	local cursor = self.GuiElems.Cursor
	local hSize = math.max(0, linesFrame.AbsoluteSize.X)
	local vSize = math.max(0, linesFrame.AbsoluteSize.Y)
	local maxLines = math.ceil(vSize / self.FontSize)
	local maxCols = math.ceil(hSize / math.ceil(self.FontSize / 2))
	local viewX, viewY = self.ViewX, self.ViewY
	local totalLinesStr = tostring(#self.Lines)
	local fontWidth = math.ceil(self.FontSize / 2)
	local linesOffset = #totalLinesStr * fontWidth + 4 * fontWidth

	if input then
		linesFrame = self.GuiElems.LinesFrame
		local frameX, frameY = linesFrame.AbsolutePosition.X, linesFrame.AbsolutePosition.Y
		local mouseX, mouseY = input.Position.X, input.Position.Y
		local fontSizeX, fontSizeY = math.ceil(self.FontSize / 2), self.FontSize

		self.CursorX = self.ViewX + math.round((mouseX - frameX) / fontSizeX)
		self.CursorY = self.ViewY + math.floor((mouseY - frameY) / fontSizeY)
	end

	local cursorX, cursorY = self.CursorX, self.CursorY

	local line = self.Lines[cursorY + 1] or ""
	if cursorX > #line then
		cursorX = #line
	elseif cursorX < 0 then
		cursorX = 0
	end

	if cursorY >= #self.Lines then
		cursorY = math.max(0, #self.Lines - 1)
	elseif cursorY < 0 then
		cursorY = 0
	end

	cursorX = cursorX + self:TabAdjust(cursorX, cursorY)

	-- Update modified
	self.CursorX = cursorX
	self.CursorY = cursorY

	local cursorVisible = (cursorX >= viewX)
		and (cursorY >= viewY)
		and (cursorX <= viewX + maxCols)
		and (cursorY <= viewY + maxLines)
	if cursorVisible then
		local offX = (cursorX - viewX)
		local offY = (cursorY - viewY)
		cursor.Position = UDim2.new(0, linesOffset + offX * math.ceil(self.FontSize / 2) - 1, 0, offY * self.FontSize)
		cursor.Size = UDim2.new(0, 1, 0, self.FontSize + 2)
		cursor.Visible = true
		self:CursorAnim(true)
	else
		cursor.Visible = false
	end
end

funcs.MapNewLines = function(self)
	local newLines = {}
	local count = 1
	local text = self.Text
	local find = string.find
	local init = 1

	local pos = find(text, "\n", init, true)
	while pos do
		newLines[count] = pos
		count = count + 1
		init = pos + 1
		pos = find(text, "\n", init, true)
	end

	self.NewLines = newLines
end

funcs.PreHighlight = function(self)
	local text = self.Text:gsub("\\\\", "  ")
	local textLen = #text
	local found = {}
	local foundMap = {}
	local extras = {}
	local find = string.find
	local sub = string.sub
	self.ColoredLines = {}

	local function findAll(str, pattern, typ, raw)
		local count = #found + 1
		local init = 1
		local x, y, extra = find(str, pattern, init, raw)
		while x do
			found[count] = x
			foundMap[x] = typ
			if extra then
				extras[x] = extra
			end

			count = count + 1
			init = y + 1
			x, y, extra = find(str, pattern, init, raw)
		end
	end
	findAll(text, '"', 1, true)
	findAll(text, "'", 2, true)
	findAll(text, "%[(=*)%[", 3)
	findAll(text, "--", 4, true)
	table.sort(found)

	local newLines = self.NewLines
	local curLine = 0
	local lineEnd = 0
	local lastEnding = 0
	local foundHighlights = {}

	for i = 1, #found do
		local pos = found[i]
		if pos <= lastEnding then
			continue
		end

		local ending = pos
		local typ = foundMap[pos]
		if typ == 1 then
			ending = find(text, '"', pos + 1, true)
			while ending and sub(text, ending - 1, ending - 1) == "\\" do
				ending = find(text, '"', ending + 1, true)
			end
			if not ending then
				ending = textLen
			end
		elseif typ == 2 then
			ending = find(text, "'", pos + 1, true)
			while ending and sub(text, ending - 1, ending - 1) == "\\" do
				ending = find(text, "'", ending + 1, true)
			end
			if not ending then
				ending = textLen
			end
		elseif typ == 3 then
			_, ending = find(text, "]" .. extras[pos] .. "]", pos + 1, true)
			if not ending then
				ending = textLen
			end
		elseif typ == 4 then
			local ahead = foundMap[pos + 2]

			if ahead == 3 then
				_, ending = find(text, "]" .. extras[pos + 2] .. "]", pos + 1, true)
				if not ending then
					ending = textLen
				end
			else
				ending = find(text, "\n", pos + 1, true) or textLen
			end
		end

		while pos > lineEnd do
			curLine = curLine + 1
			lineEnd = newLines[curLine] or textLen + 1
		end
		while true do
			local lineTable = foundHighlights[curLine]
			if not lineTable then
				lineTable = {}
				foundHighlights[curLine] = lineTable
			end
			lineTable[pos] = { typ, ending }

			if ending > lineEnd then
				curLine = curLine + 1
				lineEnd = newLines[curLine] or textLen + 1
			else
				break
			end
		end

		lastEnding = ending
	end
	self.PreHighlights = foundHighlights
end

funcs.HighlightLine = function(self, line)
	local cached = self.ColoredLines[line]
	if cached then
		return cached
	end

	local sub = string.sub
	local find = string.find
	local match = string.match
	local highlights = {}
	local preHighlights = self.PreHighlights[line] or {}
	local lineText = self.Lines[line] or ""
	local lastEnding = 0
	local currentType = 0
	local lastWord = nil
	local wordBeginsDotted = false
	local funcStatus = 0
	local lineStart = self.NewLines[line - 1] or 0

	local preHighlightMap = {}
	for pos, data in preHighlights do
		local relativePos = pos - lineStart
		if relativePos < 1 then
			currentType = data[1]
			lastEnding = data[2] - lineStart
			--warn(pos,data[2])
		else
			preHighlightMap[relativePos] = { data[1], data[2] - lineStart }
		end
	end

	for col = 1, #lineText do
		if col <= lastEnding then
			highlights[col] = currentType
			continue
		end

		local pre = preHighlightMap[col]
		if pre then
			currentType = pre[1]
			lastEnding = pre[2]
			highlights[col] = currentType
			wordBeginsDotted = false
			lastWord = nil
			funcStatus = 0
		else
			local char = sub(lineText, col, col)
			if find(char, "[%a_]") then
				local word = match(lineText, "[%a%d_]+", col)
				local wordType = (keywords[word] and 7) or (builtIns[word] and 8)

				lastEnding = col + #word - 1

				if wordType ~= 7 then
					if wordBeginsDotted then
						local prevBuiltIn = lastWord and builtIns[lastWord]
						wordType = (prevBuiltIn and type(prevBuiltIn) == "table" and prevBuiltIn[word] and 8) or 10
					end

					if wordType ~= 8 then
						local x, _y, br = find(lineText, "^%s*([%({\"'])", lastEnding + 1)
						if x then
							wordType = (funcStatus > 0 and br == "(" and 16) or 9
							funcStatus = 0
						end
					end
				else
					wordType = specialKeywordsTypes[word] or wordType
					funcStatus = (word == "function" and 1 or 0)
				end

				lastWord = word
				wordBeginsDotted = false
				if funcStatus > 0 then
					funcStatus = 1
				end

				if wordType then
					currentType = wordType
					highlights[col] = currentType
				else
					currentType = nil
				end
			elseif find(char, "%p") then
				local isDot = (char == ".")
				local isNum = isDot and find(sub(lineText, col + 1, col + 1), "%d")
				highlights[col] = (isNum and 6 or 5)

				if not isNum then
					local dotStr = isDot and match(lineText, "%.%.?%.?", col)
					if dotStr and #dotStr > 1 then
						currentType = 5
						lastEnding = col + #dotStr - 1
						wordBeginsDotted = false
						lastWord = nil
						funcStatus = 0
					else
						if isDot then
							if wordBeginsDotted then
								lastWord = nil
							else
								wordBeginsDotted = true
							end
						else
							wordBeginsDotted = false
							lastWord = nil
						end

						funcStatus = ((isDot or char == ":") and funcStatus == 1 and 2) or 0
					end
				end
			elseif find(char, "%d") then
				local _, endPos = find(lineText, "%x+", col)
				local endPart = sub(lineText, endPos, endPos + 1)
				if (endPart == "e+" or endPart == "e-") and find(sub(lineText, endPos + 2, endPos + 2), "%d") then
					endPos = endPos + 1
				end
				currentType = 6
				lastEnding = endPos
				highlights[col] = 6
				wordBeginsDotted = false
				lastWord = nil
				funcStatus = 0
			else
				highlights[col] = currentType
				local _, endPos = find(lineText, "%s+", col)
				if endPos then
					lastEnding = endPos
				end
			end
		end
	end

	self.ColoredLines[line] = highlights
	return highlights
end

funcs.Refresh = function(self)
	local linesFrame = self.Frame.Lines
	local hSize = math.max(0, linesFrame.AbsoluteSize.X)
	local vSize = math.max(0, linesFrame.AbsoluteSize.Y)
	local maxLines = math.ceil(vSize / self.FontSize)
	local maxCols = math.ceil(hSize / math.ceil(self.FontSize / 2))
	local gsub = string.gsub
	local sub = string.sub

	local viewX, viewY = self.ViewX, self.ViewY

	local lineNumberStr = ""

	for row = 1, maxLines do
		local lineFrame = self.LineFrames[row]
		if not lineFrame then
			lineFrame = Instance.new("Frame")
			lineFrame.Name = "Line"
			lineFrame.Position = UDim2.new(0, 0, 0, (row - 1) * self.FontSize)
			lineFrame.Size = UDim2.new(1, 0, 0, self.FontSize)
			lineFrame.BorderSizePixel = 0
			lineFrame.BackgroundTransparency = 1

			local selectionHighlight = Instance.new("Frame")
			selectionHighlight.Name = "SelectionHighlight"
			selectionHighlight.BorderSizePixel = 0
			selectionHighlight.BackgroundColor3 = Settings.Theme.Syntax.SelectionBack
			selectionHighlight.Parent = lineFrame

			local label = Instance.new("TextLabel")
			label.Name = "Label"
			label.BackgroundTransparency = 1
			label.Font = Enum.Font.Code
			label.TextSize = self.FontSize
			label.Size = UDim2.new(1, 0, 0, self.FontSize)
			label.RichText = true
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextColor3 = self.Colors.Text
			label.ZIndex = 2
			label.Parent = lineFrame

			lineFrame.Parent = linesFrame
			self.LineFrames[row] = lineFrame
		end

		local relaY = viewY + row
		local lineText = self.Lines[relaY] or ""
		local resText = ""
		local highlights = self:HighlightLine(relaY)
		local colStart = viewX + 1

		local richTemplates = self.RichTemplates
		local textTemplate = richTemplates.Text
		local selectionTemplate = richTemplates.Selection
		local curType = highlights[colStart]
		local curTemplate = richTemplates[typeMap[curType]] or textTemplate

		-- Selection Highlight
		local selectionRange = self.SelectionRange
		local selPos1 = selectionRange[1]
		local selPos2 = selectionRange[2]
		local selRow, selColumn = selPos1[2], selPos1[1]
		local sel2Row, sel2Column = selPos2[2], selPos2[1]
		local selRelaY = relaY - 1

		if selRelaY >= selPos1[2] and selRelaY <= selPos2[2] then
			local fontSizeX = math.ceil(self.FontSize / 2)
			local posX = (selRelaY == selPos1[2] and selPos1[1] or 0) - viewX
			local sizeX = (selRelaY == selPos2[2] and selPos2[1] - posX - viewX or maxCols + viewX)

			lineFrame.SelectionHighlight.Position = UDim2.new(0, posX * fontSizeX, 0, 0)
			lineFrame.SelectionHighlight.Size = UDim2.new(0, sizeX * fontSizeX, 1, 0)
			lineFrame.SelectionHighlight.Visible = true
		else
			lineFrame.SelectionHighlight.Visible = false
		end

		-- Selection Text Color for first char
		local inSelection = selRelaY >= selRow
			and selRelaY <= sel2Row
			and (selRelaY == selRow and viewX >= selColumn or selRelaY ~= selRow)
			and (selRelaY == sel2Row and viewX < sel2Column or selRelaY ~= sel2Row)
		if inSelection then
			curType = -999
			curTemplate = selectionTemplate
		end

		for col = 2, maxCols do
			local relaX = viewX + col
			local selRelaX = relaX - 1
			local posType = highlights[relaX]

			-- Selection Text Color
			inSelection = selRelaY >= selRow
				and selRelaY <= sel2Row
				and (selRelaY == selRow and selRelaX >= selColumn or selRelaY ~= selRow)
				and (selRelaY == sel2Row and selRelaX < sel2Column or selRelaY ~= sel2Row)
			if inSelection then
				posType = -999
			end

			if posType ~= curType then
				local template = (inSelection and selectionTemplate) or richTemplates[typeMap[posType]] or textTemplate

				if template ~= curTemplate then
					local nextText = gsub(sub(lineText, colStart, relaX - 1), "['\"<>&]", richReplace)
					resText = resText
						.. (curTemplate ~= textTemplate and (curTemplate .. nextText .. "</font>") or nextText)
					colStart = relaX
					curTemplate = template
				end
				curType = posType
			end
		end

		local lastText = gsub(sub(lineText, colStart, viewX + maxCols), "['\"<>&]", richReplace)
		--warn("SUB",colStart,viewX+maxCols-1)
		if #lastText > 0 then
			resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. lastText .. "</font>") or lastText)
		end

		if self.Lines[relaY] then
			lineNumberStr = lineNumberStr .. (relaY == self.CursorY and ("<b>" .. relaY .. "</b>\n") or relaY .. "\n")
		end

		lineFrame.Label.Text = resText
	end

	for i = maxLines + 1, #self.LineFrames do
		self.LineFrames[i]:Destroy()
		self.LineFrames[i] = nil
	end

	self.Frame.LineNumbers.Text = lineNumberStr
	self:UpdateCursor()

	--print("REFRESH TIME",tick()-start)
end

funcs.UpdateView = function(self)
	local totalLinesStr = tostring(#self.Lines)
	local fontWidth = math.ceil(self.FontSize / 2)
	local linesOffset = #totalLinesStr * fontWidth + 4 * fontWidth

	local linesFrame = self.Frame.Lines
	local hSize = linesFrame.AbsoluteSize.X
	local vSize = linesFrame.AbsoluteSize.Y
	local maxLines = math.ceil(vSize / self.FontSize)
	local totalWidth = self.MaxTextCols * fontWidth
	local scrollV = self.ScrollV
	local scrollH = self.ScrollH

	scrollV.VisibleSpace = maxLines
	scrollV.TotalSpace = #self.Lines + 1
	scrollH.VisibleSpace = math.ceil(hSize / fontWidth)
	scrollH.TotalSpace = self.MaxTextCols + 1

	scrollV.Gui.Visible = #self.Lines + 1 > maxLines
	scrollH.Gui.Visible = totalWidth > hSize

	local oldOffsets = self.FrameOffsets
	self.FrameOffsets = Vector2.new(scrollV.Gui.Visible and -16 or 0, scrollH.Gui.Visible and -16 or 0)
	if oldOffsets ~= self.FrameOffsets then
		self:UpdateView()
	else
		scrollV:ScrollTo(self.ViewY, true)
		scrollH:ScrollTo(self.ViewX, true)

		if scrollV.Gui.Visible and scrollH.Gui.Visible then
			scrollV.Gui.Size = UDim2.new(0, 16, 1, -16)
			scrollH.Gui.Size = UDim2.new(1, -16, 0, 16)
			self.GuiElems.ScrollCorner.Visible = true
		else
			scrollV.Gui.Size = UDim2.new(0, 16, 1, 0)
			scrollH.Gui.Size = UDim2.new(1, 0, 0, 16)
			self.GuiElems.ScrollCorner.Visible = false
		end

		self.ViewY = scrollV.Index
		self.ViewX = scrollH.Index
		self.Frame.Lines.Position = UDim2.new(0, linesOffset, 0, 0)
		self.Frame.Lines.Size = UDim2.new(1, -linesOffset + oldOffsets.X, 1, oldOffsets.Y)
		self.Frame.LineNumbers.Position = UDim2.new(0, fontWidth, 0, 0)
		self.Frame.LineNumbers.Size = UDim2.new(0, #totalLinesStr * fontWidth, 1, oldOffsets.Y)
		self.Frame.LineNumbers.TextSize = self.FontSize
	end
end

funcs.ProcessTextChange = function(self)
	local maxCols = 0
	local lines = self.Lines

	for i = 1, #lines do
		local lineLen = #lines[i]
		if lineLen > maxCols then
			maxCols = lineLen
		end
	end

	self.MaxTextCols = maxCols
	self:UpdateView()
	self.Text = table.concat(self.Lines, "\n")
	self:MapNewLines()
	self:PreHighlight()
	self:Refresh()
	--self.TextChanged:Fire()
end

funcs.ConvertText = function(self, text, toEditor)
	if toEditor then
		return text:gsub("\t", (" %s%s "):format(tabSub, tabSub))
	else
		return text:gsub((" %s%s "):format(tabSub, tabSub), "\t")
	end
end

funcs.GetText = function(self) -- TODO: better (use new tab format)
	local source = table.concat(self.Lines, "\n")
	return self:ConvertText(source, false) -- Tab Convert
end

funcs.SetText = function(self, txt)
	txt:gsub("\t", "    ")
	txt = self:ConvertText(txt, true) -- Tab Convert
	local lines = self.Lines
	table.clear(lines)
	local count = 1

	for line in txt:gmatch("([^\n\r]*)[\n\r]?") do
		lines[count] = line
		count = count + 1
	end

	self:ProcessTextChange()
end

funcs.MakeRichTemplates = function(self)
	local floor = math.floor
	local templates = {}

	for name, color in self.Colors do
		templates[name] = ('<font color="rgb(%s,%s,%s)">'):format(
			floor(color.r * 255),
			floor(color.g * 255),
			floor(color.b * 255)
		)
	end

	self.RichTemplates = templates
end

funcs.ApplyTheme = function(self)
	local colors = Settings.Theme.Syntax
	self.Colors = colors
	self.Frame.LineNumbers.TextColor3 = colors.Text
	self.Frame.BackgroundColor3 = colors.Background
end

local mt = { __index = funcs }

local function new()
	if not builtInInited then
		initBuiltIn()
	end

	local scrollV = ScrollBar.new()
	local scrollH = ScrollBar.new(true)
	scrollH.Gui.Position = UDim2.new(0, 0, 1, -16)
	local obj = setmetatable({
		FontSize = 15,
		ViewX = 0,
		ViewY = 0,
		Colors = Settings.Theme.Syntax,
		ColoredLines = {},
		Lines = { "" },
		LineFrames = {},
		Editable = true,
		Editing = false,
		CursorX = 0,
		CursorY = 0,
		FloatCursorX = 0,
		Text = "",
		PreHighlights = {},
		SelectionRange = { { -1, -1 }, { -1, -1 } },
		NewLines = {},
		FrameOffsets = Vector2.new(0, 0),
		MaxTextCols = 0,
		ScrollV = scrollV,
		ScrollH = scrollH,
	}, mt)

	scrollV.WheelIncrement = 3
	scrollH.Increment = 2
	scrollH.WheelIncrement = 7

	scrollV.Scrolled:Connect(function()
		obj.ViewY = scrollV.Index
		obj:Refresh()
	end)

	scrollH.Scrolled:Connect(function()
		obj.ViewX = scrollH.Index
		obj:Refresh()
	end)

	makeFrame(obj)
	obj:MakeRichTemplates()
	obj:ApplyTheme()
	scrollV:SetScrollFrame(obj.Frame.Lines)
	scrollV.Gui.Parent = obj.Frame
	scrollH.Gui.Parent = obj.Frame

	obj:UpdateView()
	obj.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		obj:UpdateView()
		obj:Refresh()
	end)

	return obj
end

return { new = new,New = new}
end;
};
G2L_MODULES[G2L["19"]] = {
Closure = function()
    local script = G2L["19"];local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local funcs = {
	Gui = newproxy(),
	Anim = newproxy(),
	Context = newproxy(),
	Selected = newproxy(),
	Disabled = false,
	CanBeEmpty = true,
	Options = {},
	GuiElems = {},
	OnSelect = Signal.new(),
}

function funcs:Update()
	local options = self.Options
	local label = self.GuiElems.Label

	if #options > 0 then
		if not self.Selected then
			label.Text = self.CanBeEmpty and "- Select -" or options[1]
			if not self.CanBeEmpty then
				self.Selected = options[1]
			end
		else
			label.Text = self.Selected
		end
	else
		label.Text = "- Select -"
	end
end

function funcs:ShowOptions()
	local context = self.Context
	local guiPosition = self.Gui.AbsolutePosition
	local guiSize = self.Gui.AbsoluteSize

	context.Width = guiSize.X
	context.ReverseYOffset = guiSize.Y
	context:Show(guiPosition.X, guiPosition.Y + context.ReverseYOffset)
end

function funcs:SetOptions(opts)
	self.Options = opts
	self.Context:Clear()

	local context = self.Context
	local options = self.Options

	local function onClick(option)
		self.Selected = option
		self.OnSelect:Fire(option)
		self:Update()
	end

	if self.CanBeEmpty then
		context:Add({
			Name = "- Select -",
			OnClick = function()
				self.Selected = nil
				self.OnSelect:Fire(nil)
				self:Update()
			end,
		})
	end

	for _, option in options do
		context:Add({ Name = option, OnClick = onClick })
	end

	self:Update()
end

function funcs:SetSelected(opt)
	self.Selected = type(opt) == "number" and self.Options[opt] or opt
	self:Update()
end

local function new()
	local button = Instance.new("TextButton")
	button.AutoButtonColor = false
	button.Text = ""
	button.Size = UDim2.new(0, 100, 0, 20)
	button.BackgroundColor3 = Enviorment.Settings.Theme.TextBox
	button.BorderColor3 = Enviorment.Settings.Theme.Outline3
	button.Name = "DropDown"
	local label = require(script.Parent.Parent.Base.Label).new()
	label.Position = UDim2.new(0, 2, 0, 0)
	label.Size = UDim2.new(1, -22, 1, 0)
	label.TextTruncate = Enum.TextTruncate.AtEnd
	label.Parent = button

	local arrow = create({
		{
			1,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "EnumArrow",
				Position = UDim2.new(1, -16, 0, 2),
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(220, 220, 220),
				BorderSizePixel = 0,
				Parent = { 1 },
				Position = UDim2.new(0, 8, 0, 9),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(220, 220, 220),
				BorderSizePixel = 0,
				Parent = { 1 },
				Position = UDim2.new(0, 7, 0, 8),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			4,
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(220, 220, 220),
				BorderSizePixel = 0,
				Parent = { 1 },
				Position = UDim2.new(0, 6, 0, 7),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
	})
	arrow.Parent = button
	local obj = setmetatable(funcs, {})
	obj.Gui = button
	obj.Anim = Lib.ButtonAnim(
		button,
		{ Mode = 2, StartColor = Enviorment.Settings.Theme.TextBox, LerpTo = Enviorment.Settings.Theme.Button, LerpDelta = 0.15 }
	)
	obj.Context = require(script.Parent.ContextMenu).new()
	obj.Context.Iconless = true
	obj.Context.MaxHeight = 200
	obj.Selected = nil
	obj.GuiElems = { Label = label }

	button.MouseButton1Down:Connect(function()
		obj:ShowOptions()
	end)

	obj:Update()
	return obj
end

return { new = new }
end;
};
G2L_MODULES[G2L["1a"]] = {
Closure = function()
    local script = G2L["1a"];-- TODO: Convert to newer class model
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Window)
local function new()
	local newMt = setmetatable({}, {})

	newMt.OnSelect = Signal.new()
	newMt.OnCancel = Signal.new()
	newMt.OnPreview = Signal.new()

	local guiContents = create({
		{
			1,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Main2,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Name = "Content",
				Position = UDim2.new(0, 0, 0, 20),
				Size = UDim2.new(1, 0, 1, -20),
			},
		},
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Name = "BasicColors",
				Parent = { 1 },
				Position = UDim2.new(0, 5, 0, 5),
				Size = UDim2.new(0, 180, 0, 200),
			},
		},
		{
			3,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 2 },
				Position = UDim2.new(0, 0, 0, -5),
				Size = UDim2.new(1, 0, 0, 26),
				Text = "Basic Colors",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			4,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Enviorment.Settings.Theme.Menu,
				Name = "Blue",
				Parent = { 1 },
				Position = UDim2.new(1, -63, 0, 255),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			5,
			"TextBox",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Highlight3,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				Font = 3,
				Name = "Input",
				Parent = { 4 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			6,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 5 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			7,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 6 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			8,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 7 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			9,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 8 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			10,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 8 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			11,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 8 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			12,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 6 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			13,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 12 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			14,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 13 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			15,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 13 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			16,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 13 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			17,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 4 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Blue:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			18,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Name = "ColorSpaceFrame",
				Parent = { 1 },
				Position = UDim2.new(1, -261, 0, 4),
				Size = UDim2.new(0, 222, 0, 202),
			},
		},
		{
			19,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				BorderSizePixel = 0,
				Image = "rbxassetid://1072518406",
				Name = "ColorSpace",
				Parent = { 18 },
				Position = UDim2.new(0, 1, 0, 1),
				Size = UDim2.new(0, 220, 0, 200),
			},
		},
		{
			20,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "Scope",
				Parent = { 19 },
				Position = UDim2.new(0, 210, 0, 190),
				Size = UDim2.new(0, 20, 0, 20),
			},
		},
		{
			21,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 20 },
				Position = UDim2.new(0, 9, 0, 0),
				Size = UDim2.new(0, 2, 0, 20),
			},
		},
		{
			22,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Name = "Line",
				Parent = { 20 },
				Position = UDim2.new(0, 0, 0, 9),
				Size = UDim2.new(0, 20, 0, 2),
			},
		},
		{
			23,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Name = "CustomColors",
				Parent = { 1 },
				Position = UDim2.new(0, 5, 0, 210),
				Size = UDim2.new(0, 180, 0, 90),
			},
		},
		{
			24,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 23 },
				Size = UDim2.new(1, 0, 0, 20),
				Text = "Custom Colors (RC = Set)",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			25,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Enviorment.Settings.Theme.Menu,
				Name = "Green",
				Parent = { 1 },
				Position = UDim2.new(1, -63, 0, 233),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			26,
			"TextBox",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Highlight3,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				Font = 3,
				Name = "Input",
				Parent = { 25 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			27,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 26 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			28,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 27 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			29,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 28 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			30,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 29 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			31,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 29 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			32,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 29 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			33,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 27 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			34,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 33 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			35,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 34 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			36,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 34 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			37,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 34 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			38,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 25 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Green:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			39,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Enviorment.Settings.Theme.Menu,
				Name = "Hue",
				Parent = { 1 },
				Position = UDim2.new(1, -180, 0, 211),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			40,
			"TextBox",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Highlight3,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				Font = 3,
				Name = "Input",
				Parent = { 39 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			41,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 40 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			42,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 41 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			43,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 42 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			44,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 43 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			45,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 43 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			46,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 43 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			47,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 41 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			48,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 47 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			49,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 48 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			50,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 48 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			51,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 48 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			52,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 39 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Hue:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			53,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Name = "Preview",
				Parent = { 1 },
				Position = UDim2.new(1, -260, 0, 211),
				Size = UDim2.new(0, 35, 1, -245),
			},
		},
		{
			54,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Enviorment.Settings.Theme.Menu,
				Name = "Red",
				Parent = { 1 },
				Position = UDim2.new(1, -63, 0, 211),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			55,
			"TextBox",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Highlight3,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				Font = 3,
				Name = "Input",
				Parent = { 54 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			56,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 55 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			57,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 56 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			58,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 57 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			59,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 58 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			60,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 58 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			61,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 58 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			62,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 56 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			63,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 62 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			64,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 63 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			65,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 63 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			66,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 63 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			67,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 54 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Red:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			68,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Enviorment.Settings.Theme.Menu,
				Name = "Sat",
				Parent = { 1 },
				Position = UDim2.new(1, -180, 0, 233),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			69,
			"TextBox",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Highlight3,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.Highlight4,
				Font = 3,
				Name = "Input",
				Parent = { 68 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			70,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 69 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			71,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 70 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			72,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 71 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			73,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 72 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			74,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 72 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			75,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 72 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			76,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 70 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			77,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 76 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			78,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 77 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			79,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 77 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			80,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 77 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			81,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 68 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Sat:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			82,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14901961386204, 0.14901961386204, 0.14901961386204),
				BorderColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				Name = "Val",
				Parent = { 1 },
				Position = UDim2.new(1, -180, 0, 255),
				Size = UDim2.new(0, 52, 0, 16),
			},
		},
		{
			83,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(0.25098040699959, 0.25098040699959, 0.25098040699959),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.new(0.37647062540054, 0.37647062540054, 0.37647062540054),
				Font = 3,
				Name = "Input",
				Parent = { 82 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 50, 0, 16),
				Text = "255",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			84,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 83 },
				Position = UDim2.new(1, -16, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
			},
		},
		{
			85,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Up",
				Parent = { 84 },
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			86,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 85 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			87,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 86 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			88,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 86 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			89,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 86 },
				Position = UDim2.new(0, 6, 0, 5),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			90,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Down",
				Parent = { 84 },
				Position = UDim2.new(0, 0, 0, 8),
				Size = UDim2.new(1, 0, 0, 8),
				Text = "",
				TextSize = 14,
			},
		},
		{
			91,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 90 },
				Size = UDim2.new(0, 16, 0, 8),
			},
		},
		{
			92,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 91 },
				Position = UDim2.new(0, 8, 0, 5),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			93,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 91 },
				Position = UDim2.new(0, 7, 0, 4),
				Size = UDim2.new(0, 3, 0, 1),
			},
		},
		{
			94,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 91 },
				Position = UDim2.new(0, 6, 0, 3),
				Size = UDim2.new(0, 5, 0, 1),
			},
		},
		{
			95,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 82 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Val:",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			96,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2352941185236, 0.2352941185236, 0.2352941185236),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Font = 3,
				Name = "Cancel",
				Parent = { 1 },
				Position = UDim2.new(1, -105, 1, -28),
				Size = UDim2.new(0, 100, 0, 25),
				Text = "Cancel",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
			},
		},
		{
			97,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2352941185236, 0.2352941185236, 0.2352941185236),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Font = 3,
				Name = "Ok",
				Parent = { 1 },
				Position = UDim2.new(1, -210, 1, -28),
				Size = UDim2.new(0, 100, 0, 25),
				Text = "OK",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
			},
		},
		{
			98,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Image = "rbxassetid://1072518502",
				Name = "ColorStrip",
				Parent = { 1 },
				Position = UDim2.new(1, -30, 0, 5),
				Size = UDim2.new(0, 13, 0, 200),
			},
		},
		{
			99,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.3137255012989, 0.3137255012989, 0.3137255012989),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "ArrowFrame",
				Parent = { 1 },
				Position = UDim2.new(1, -16, 0, 1),
				Size = UDim2.new(0, 5, 0, 208),
			},
		},
		{
			100,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 99 },
				Position = UDim2.new(0, -2, 0, -4),
				Size = UDim2.new(0, 8, 0, 16),
			},
		},
		{
			101,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Parent = { 100 },
				Position = UDim2.new(0, 2, 0, 8),
				Size = UDim2.new(0, 1, 0, 1),
			},
		},
		{
			102,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Parent = { 100 },
				Position = UDim2.new(0, 3, 0, 7),
				Size = UDim2.new(0, 1, 0, 3),
			},
		},
		{
			103,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Parent = { 100 },
				Position = UDim2.new(0, 4, 0, 6),
				Size = UDim2.new(0, 1, 0, 5),
			},
		},
		{
			104,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Parent = { 100 },
				Position = UDim2.new(0, 5, 0, 5),
				Size = UDim2.new(0, 1, 0, 7),
			},
		},
		{
			105,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BorderSizePixel = 0,
				Parent = { 100 },
				Position = UDim2.new(0, 6, 0, 4),
				Size = UDim2.new(0, 1, 0, 9),
			},
		},
	})
	local window = Window.new()
	window.Resizable = false
	window.Alignable = false
	window:SetTitle("Color Picker")
	window:Resize(450, 330)
	for i, v in guiContents:GetChildren() do
		v.Parent = window.GuiElems.Content
	end
	newMt.Window = window
	newMt.Gui = window.Gui
	local pickerGui = window.Gui.Main
	local pickerFrame = pickerGui.Content
	local colorSpace = pickerFrame.ColorSpaceFrame.ColorSpace
	local colorStrip = pickerFrame.ColorStrip
	local previewFrame = pickerFrame.Preview
	local basicColorsFrame = pickerFrame.BasicColors
	local customColorsFrame = pickerFrame.CustomColors
	local okButton = pickerFrame.Ok
	local cancelButton = pickerFrame.Cancel

	local colorScope = colorSpace.Scope
	local colorArrow = pickerFrame.ArrowFrame.Arrow

	local hueInput = pickerFrame.Hue.Input
	local satInput = pickerFrame.Sat.Input
	local valInput = pickerFrame.Val.Input

	local redInput = pickerFrame.Red.Input
	local greenInput = pickerFrame.Green.Input
	local blueInput = pickerFrame.Blue.Input

	local user = Enviorment.UIS
	local mouse = Enviorment.Mouse

	local hue, sat, val = 0, 0, 1
	local red, green, blue = 1, 1, 1
	local chosenColor = Color3.new(0, 0, 0)

	local basicColors = {
		Color3.new(0, 0, 0),
		Color3.new(0.66666668653488, 0, 0),
		Color3.new(0, 0.33333334326744, 0),
		Color3.new(0.66666668653488, 0.33333334326744, 0),
		Color3.new(0, 0.66666668653488, 0),
		Color3.new(0.66666668653488, 0.66666668653488, 0),
		Color3.new(0, 1, 0),
		Color3.new(0.66666668653488, 1, 0),
		Color3.new(0, 0, 0.49803924560547),
		Color3.new(0.66666668653488, 0, 0.49803924560547),
		Color3.new(0, 0.33333334326744, 0.49803924560547),
		Color3.new(0.66666668653488, 0.33333334326744, 0.49803924560547),
		Color3.new(0, 0.66666668653488, 0.49803924560547),
		Color3.new(0.66666668653488, 0.66666668653488, 0.49803924560547),
		Color3.new(0, 1, 0.49803924560547),
		Color3.new(0.66666668653488, 1, 0.49803924560547),
		Color3.new(0, 0, 1),
		Color3.new(0.66666668653488, 0, 1),
		Color3.new(0, 0.33333334326744, 1),
		Color3.new(0.66666668653488, 0.33333334326744, 1),
		Color3.new(0, 0.66666668653488, 1),
		Color3.new(0.66666668653488, 0.66666668653488, 1),
		Color3.new(0, 1, 1),
		Color3.new(0.66666668653488, 1, 1),
		Color3.new(0.33333334326744, 0, 0),
		Color3.new(1, 0, 0),
		Color3.new(0.33333334326744, 0.33333334326744, 0),
		Color3.new(1, 0.33333334326744, 0),
		Color3.new(0.33333334326744, 0.66666668653488, 0),
		Color3.new(1, 0.66666668653488, 0),
		Color3.new(0.33333334326744, 1, 0),
		Color3.new(1, 1, 0),
		Color3.new(0.33333334326744, 0, 0.49803924560547),
		Color3.new(1, 0, 0.49803924560547),
		Color3.new(0.33333334326744, 0.33333334326744, 0.49803924560547),
		Color3.new(1, 0.33333334326744, 0.49803924560547),
		Color3.new(0.33333334326744, 0.66666668653488, 0.49803924560547),
		Color3.new(1, 0.66666668653488, 0.49803924560547),
		Color3.new(0.33333334326744, 1, 0.49803924560547),
		Color3.new(1, 1, 0.49803924560547),
		Color3.new(0.33333334326744, 0, 1),
		Color3.new(1, 0, 1),
		Color3.new(0.33333334326744, 0.33333334326744, 1),
		Color3.new(1, 0.33333334326744, 1),
		Color3.new(0.33333334326744, 0.66666668653488, 1),
		Color3.new(1, 0.66666668653488, 1),
		Color3.new(0.33333334326744, 1, 1),
		Color3.new(1, 1, 1),
	}
	local customColors = {}

	local function updateColor(noupdate)
		local relativeX, relativeY, relativeStripY = 219 - hue * 219, 199 - sat * 199, 199 - val * 199

		if noupdate == 2 or not noupdate then
			hueInput.Text = tostring(math.ceil(359 * hue))
			satInput.Text = tostring(math.ceil(255 * sat))
			valInput.Text = tostring(math.floor(255 * val))
		end
		if noupdate == 1 or not noupdate then
			redInput.Text = tostring(math.floor(255 * red))
			greenInput.Text = tostring(math.floor(255 * green))
			blueInput.Text = tostring(math.floor(255 * blue))
		end

		chosenColor = Color3.new(red, green, blue)

		colorScope.Position = UDim2.new(0, relativeX - 9, 0, relativeY - 9)
		colorStrip.ImageColor3 = Color3.fromHSV(hue, sat, 1)
		colorArrow.Position = UDim2.new(0, -2, 0, relativeStripY - 4)
		previewFrame.BackgroundColor3 = chosenColor

		newMt.Color = chosenColor
		newMt.OnPreview:Fire(chosenColor)
	end

	local function colorSpaceInput()
		local relativeX = mouse.X - colorSpace.AbsolutePosition.X
		local relativeY = mouse.Y - colorSpace.AbsolutePosition.Y

		if relativeX < 0 then
			relativeX = 0
		elseif relativeX > 219 then
			relativeX = 219
		end
		if relativeY < 0 then
			relativeY = 0
		elseif relativeY > 199 then
			relativeY = 199
		end

		hue = (219 - relativeX) / 219
		sat = (199 - relativeY) / 199

		local hsvColor = Color3.fromHSV(hue, sat, val)
		red, green, blue = hsvColor.r, hsvColor.g, hsvColor.b

		updateColor()
	end

	local function colorStripInput()
		local relativeY = mouse.Y - colorStrip.AbsolutePosition.Y

		if relativeY < 0 then
			relativeY = 0
		elseif relativeY > 199 then
			relativeY = 199
		end

		val = (199 - relativeY) / 199

		local hsvColor = Color3.fromHSV(hue, sat, val)
		red, green, blue = hsvColor.r, hsvColor.g, hsvColor.b

		updateColor()
	end

	local function hookButtons(frame, func)
		frame.ArrowFrame.Up.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				frame.ArrowFrame.Up.BackgroundTransparency = 0.5
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent

				local startTime = tick()
				local pressing = true
				local startNum = tonumber(frame.Text)

				if not startNum then
					return
				end

				releaseEvent = user.InputEnded:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
						return
					end
					releaseEvent:Disconnect()
					pressing = false
				end)

				startNum = startNum + 1
				func(startNum)
				while pressing do
					if tick() - startTime > 0.3 then
						startNum = startNum + 1
						func(startNum)
					end
					wait(0.1)
				end
			end
		end)

		frame.ArrowFrame.Up.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				frame.ArrowFrame.Up.BackgroundTransparency = 1
			end
		end)

		frame.ArrowFrame.Down.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				frame.ArrowFrame.Down.BackgroundTransparency = 0.5
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent

				local startTime = tick()
				local pressing = true
				local startNum = tonumber(frame.Text)

				if not startNum then
					return
				end

				releaseEvent = user.InputEnded:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
						return
					end
					releaseEvent:Disconnect()
					pressing = false
				end)

				startNum = startNum - 1
				func(startNum)
				while pressing do
					if tick() - startTime > 0.3 then
						startNum = startNum - 1
						func(startNum)
					end
					wait(0.1)
				end
			end
		end)

		frame.ArrowFrame.Down.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				frame.ArrowFrame.Down.BackgroundTransparency = 1
			end
		end)
	end

	colorSpace.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local releaseEvent, mouseEvent

			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end
				releaseEvent:Disconnect()
				mouseEvent:Disconnect()
			end)

			mouseEvent = user.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					colorSpaceInput()
				end
			end)

			colorSpaceInput()
		end
	end)

	colorStrip.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local releaseEvent, mouseEvent

			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end
				releaseEvent:Disconnect()
				mouseEvent:Disconnect()
			end)

			mouseEvent = user.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					colorStripInput()
				end
			end)

			colorStripInput()
		end
	end)

	local function updateHue(str)
		local num = tonumber(str)
		if num then
			hue = math.clamp(math.floor(num), 0, 359) / 359
			local hsvColor = Color3.fromHSV(hue, sat, val)
			red, green, blue = hsvColor.r, hsvColor.g, hsvColor.b
			hueInput.Text = tostring(hue * 359)
			updateColor(1)
		end
	end
	hueInput.FocusLost:Connect(function()
		updateHue(hueInput.Text)
	end)
	hookButtons(hueInput, updateHue)

	local function updateSat(str)
		local num = tonumber(str)
		if num then
			sat = math.clamp(math.floor(num), 0, 255) / 255
			local hsvColor = Color3.fromHSV(hue, sat, val)
			red, green, blue = hsvColor.r, hsvColor.g, hsvColor.b
			satInput.Text = tostring(sat * 255)
			updateColor(1)
		end
	end
	satInput.FocusLost:Connect(function()
		updateSat(satInput.Text)
	end)
	hookButtons(satInput, updateSat)

	local function updateVal(str)
		local num = tonumber(str)
		if num then
			val = math.clamp(math.floor(num), 0, 255) / 255
			local hsvColor = Color3.fromHSV(hue, sat, val)
			red, green, blue = hsvColor.r, hsvColor.g, hsvColor.b
			valInput.Text = tostring(val * 255)
			updateColor(1)
		end
	end
	valInput.FocusLost:Connect(function()
		updateVal(valInput.Text)
	end)
	hookButtons(valInput, updateVal)

	local function updateRed(str)
		local num = tonumber(str)
		if num then
			red = math.clamp(math.floor(num), 0, 255) / 255
			local newColor = Color3.new(red, green, blue)
			hue, sat, val = Color3.toHSV(newColor)
			redInput.Text = tostring(red * 255)
			updateColor(2)
		end
	end
	redInput.FocusLost:Connect(function()
		updateRed(redInput.Text)
	end)
	hookButtons(redInput, updateRed)

	local function updateGreen(str)
		local num = tonumber(str)
		if num then
			green = math.clamp(math.floor(num), 0, 255) / 255
			local newColor = Color3.new(red, green, blue)
			hue, sat, val = Color3.toHSV(newColor)
			greenInput.Text = tostring(green * 255)
			updateColor(2)
		end
	end
	greenInput.FocusLost:Connect(function()
		updateGreen(greenInput.Text)
	end)
	hookButtons(greenInput, updateGreen)

	local function updateBlue(str)
		local num = tonumber(str)
		if num then
			blue = math.clamp(math.floor(num), 0, 255) / 255
			local newColor = Color3.new(red, green, blue)
			hue, sat, val = Color3.toHSV(newColor)
			blueInput.Text = tostring(blue * 255)
			updateColor(2)
		end
	end
	blueInput.FocusLost:Connect(function()
		updateBlue(blueInput.Text)
	end)
	hookButtons(blueInput, updateBlue)

	local colorChoice = Instance.new("TextButton")
	colorChoice.Name = "Choice"
	colorChoice.Size = UDim2.new(0, 25, 0, 18)
	colorChoice.BorderColor3 = Color3.fromRGB(55, 55, 55)
	colorChoice.Text = ""
	colorChoice.AutoButtonColor = false

	local row = 0
	local column = 0
	for i, v in basicColors do
		local newColor = colorChoice:Clone()
		newColor.BackgroundColor3 = v
		newColor.Position = UDim2.new(0, 1 + 30 * column, 0, 21 + 23 * row)

		newColor.MouseButton1Click:Connect(function()
			red, green, blue = v.r, v.g, v.b
			local newColor = Color3.new(red, green, blue)
			hue, sat, val = Color3.toHSV(newColor)
			updateColor()
		end)

		newColor.Parent = basicColorsFrame
		column = column + 1
		if column == 6 then
			row = row + 1
			column = 0
		end
	end

	row = 0
	column = 0
	for i = 1, 12 do
		local color = customColors[i] or Color3.new(0, 0, 0)
		local newColor = colorChoice:Clone()
		newColor.BackgroundColor3 = color
		newColor.Position = UDim2.new(0, 1 + 30 * column, 0, 20 + 23 * row)

		newColor.MouseButton1Click:Connect(function()
			local curColor = customColors[i] or Color3.new(0, 0, 0)
			red, green, blue = curColor.r, curColor.g, curColor.b
			hue, sat, val = Color3.toHSV(curColor)
			updateColor()
		end)

		newColor.MouseButton2Click:Connect(function()
			customColors[i] = chosenColor
			newColor.BackgroundColor3 = chosenColor
		end)

		newColor.Parent = customColorsFrame
		column = column + 1
		if column == 6 then
			row = row + 1
			column = 0
		end
	end

	okButton.MouseButton1Click:Connect(function()
		newMt.OnSelect:Fire(chosenColor)
		window:Close()
	end)
	okButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			okButton.BackgroundTransparency = 0.4
		end
	end)
	okButton.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			okButton.BackgroundTransparency = 0
		end
	end)

	cancelButton.MouseButton1Click:Connect(function()
		newMt.OnCancel:Fire()
		window:Close()
	end)
	cancelButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			cancelButton.BackgroundTransparency = 0.4
		end
	end)
	cancelButton.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			cancelButton.BackgroundTransparency = 0
		end
	end)

	updateColor()

	newMt.SetColor = function(self, color)
		red, green, blue = color.r, color.g, color.b
		hue, sat, val = Color3.toHSV(color)
		updateColor()
	end

	newMt.Show = function(self)
		self.Window:Show()
	end

	return newMt
end

return { new = new }
end;
};
G2L_MODULES[G2L["1b"]] = {
Closure = function()
    local script = G2L["1b"];local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Window)
local ColorPicker = require(script.Parent.ColorPicker)
-- TODO: Convert to newer class model
local function new()
	local newMt = setmetatable({}, {})
	newMt.OnSelect = Signal.new()
	newMt.OnCancel = Signal.new()
	newMt.OnPreview = Signal.new()
	newMt.OnPickColor = Signal.new()

	local guiContents = create({
		{
			1,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Name = "Content",
				Position = UDim2.new(0, 0, 0, 20),
				Size = UDim2.new(1, 0, 1, -20),
			},
		},
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.17647059261799, 0.17647059261799, 0.17647059261799),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Name = "ColorLine",
				Parent = { 1 },
				Position = UDim2.new(0, 10, 0, 5),
				Size = UDim2.new(1, -20, 0, 70),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Name = "Gradient",
				Parent = { 2 },
				Size = UDim2.new(1, 0, 1, 0),
			},
		},
		{ 4, "UIGradient", { Parent = { 3 } } },
		{
			5,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Name = "Arrows",
				Parent = { 1 },
				Position = UDim2.new(0, 1, 0, 73),
				Size = UDim2.new(1, -2, 0, 16),
			},
		},
		{
			6,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0, 0, 0),
				BackgroundTransparency = 0.5,
				BorderSizePixel = 0,
				Name = "Cursor",
				Parent = { 1 },
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(0, 1, 0, 80),
			},
		},
		{
			7,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14901961386204, 0.14901961386204, 0.14901961386204),
				BorderColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				Name = "Time",
				Parent = { 1 },
				Position = UDim2.new(0, 40, 0, 95),
				Size = UDim2.new(0, 100, 0, 20),
			},
		},
		{
			8,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(0.25098040699959, 0.25098040699959, 0.25098040699959),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.new(0.37647062540054, 0.37647062540054, 0.37647062540054),
				ClipsDescendants = true,
				Font = 3,
				Name = "Input",
				Parent = { 7 },
				Position = UDim2.new(0, 2, 0, 0),
				Size = UDim2.new(0, 98, 0, 20),
				Text = "0",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			9,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 7 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Time",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			10,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				Name = "ColorBox",
				Parent = { 1 },
				Position = UDim2.new(0, 220, 0, 95),
				Size = UDim2.new(0, 20, 0, 20),
			},
		},
		{
			11,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "Title",
				Parent = { 10 },
				Position = UDim2.new(0, -40, 0, 0),
				Size = UDim2.new(0, 34, 1, 0),
				Text = "Color",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 1,
			},
		},
		{
			12,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2352941185236, 0.2352941185236, 0.2352941185236),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Close",
				Parent = { 1 },
				Position = UDim2.new(1, -90, 0, 95),
				Size = UDim2.new(0, 80, 0, 20),
				Text = "Close",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
			},
		},
		{
			13,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2352941185236, 0.2352941185236, 0.2352941185236),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Reset",
				Parent = { 1 },
				Position = UDim2.new(1, -180, 0, 95),
				Size = UDim2.new(0, 80, 0, 20),
				Text = "Reset",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
			},
		},
		{
			14,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.2352941185236, 0.2352941185236, 0.2352941185236),
				BorderColor3 = Color3.new(0.21568627655506, 0.21568627655506, 0.21568627655506),
				BorderSizePixel = 0,
				Font = 3,
				Name = "Delete",
				Parent = { 1 },
				Position = UDim2.new(0, 280, 0, 95),
				Size = UDim2.new(0, 80, 0, 20),
				Text = "Delete",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
			},
		},
		{
			15,
			"Frame",
			{
				BackgroundTransparency = 1,
				Name = "Arrow",
				Parent = { 1 },
				Size = UDim2.new(0, 16, 0, 16),
				Visible = false,
			},
		},
		{
			16,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 15 },
				Position = UDim2.new(0, 8, 0, 3),
				Size = UDim2.new(0, 1, 0, 2),
			},
		},
		{
			17,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 15 },
				Position = UDim2.new(0, 7, 0, 5),
				Size = UDim2.new(0, 3, 0, 2),
			},
		},
		{
			18,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 15 },
				Position = UDim2.new(0, 6, 0, 7),
				Size = UDim2.new(0, 5, 0, 2),
			},
		},
		{
			19,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 15 },
				Position = UDim2.new(0, 5, 0, 9),
				Size = UDim2.new(0, 7, 0, 2),
			},
		},
		{
			20,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.86274510622025, 0.86274510622025, 0.86274510622025),
				BorderSizePixel = 0,
				Parent = { 15 },
				Position = UDim2.new(0, 4, 0, 11),
				Size = UDim2.new(0, 9, 0, 2),
			},
		},
	})
	local window = Window.new()
	window.Resizable = false
	window:Resize(650, 150)
	window:SetTitle("ColorSequence Editor")
	newMt.Window = window
	newMt.Gui = window.Gui
	for i, v in guiContents:GetChildren() do
		v.Parent = window.GuiElems.Content
	end
	local gui = window.Gui
	local pickerGui = gui.Main
	local pickerTopBar = pickerGui.TopBar
	local pickerFrame = pickerGui.Content
	local colorLine = pickerFrame.ColorLine
	local gradient = colorLine.Gradient.UIGradient
	local arrowFrame = pickerFrame.Arrows
	local arrow = pickerFrame.Arrow
	local cursor = pickerFrame.Cursor
	local timeBox = pickerFrame.Time.Input
	local colorBox = pickerFrame.ColorBox
	local deleteButton = pickerFrame.Delete
	local resetButton = pickerFrame.Reset
	local closeButton = pickerFrame.Close
	local topClose = pickerTopBar.Close

	local user = Enviorment.UIS
	local mouse = Enviorment.Mouse

	local colors = {
		{ Color3.new(1, 0, 1), 0 },
		{ Color3.new(0.2, 0.9, 0.2), 0.2 },
		{ Color3.new(0.4, 0.5, 0.9), 0.7 },
		{ Color3.new(0.6, 1, 1), 1 },
	}
	local resetSequence = nil

	local beginPoint = colors[1]
	local endPoint = colors[#colors]

	local currentlySelected = nil
	local currentPoint = nil

	local sequenceLine = Instance.new("Frame")
	sequenceLine.BorderSizePixel = 0
	sequenceLine.Size = UDim2.new(0, 1, 1, 0)

	newMt.Sequence = ColorSequence.new(Color3.new(1, 1, 1))
	local function buildSequence(noupdate)
		local newPoints = {}
		table.sort(colors, function(a, b)
			return a[2] < b[2]
		end)
		for i, v in colors do
			table.insert(newPoints, ColorSequenceKeypoint.new(v[2], v[1]))
		end
		newMt.Sequence = ColorSequence.new(newPoints)
		if not noupdate then
			newMt.OnSelect:Fire(newMt.Sequence)
		end
	end

	local function round(num, places)
		local multi = 10 ^ places
		return math.floor(num * multi + 0.5) / multi
	end

	local function updateInputs(point)
		if point then
			currentPoint = point
			local raw = point[2]
			timeBox.Text = round(raw, (raw < 0.01 and 5) or (raw < 0.1 and 4) or 3)
			colorBox.BackgroundColor3 = point[1]
		end
	end

	local function placeArrow(ind, point)
		local newArrow = arrow:Clone()
		newArrow.Position = UDim2.new(0, ind - 1, 0, 0)
		newArrow.Visible = true
		newArrow.Parent = arrowFrame

		newArrow.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				cursor.Visible = true
				cursor.Position = UDim2.new(0, 9 + newArrow.Position.X.Offset, 0, 0)
			end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				updateInputs(point)
				if point == beginPoint or point == endPoint or currentlySelected then
					return
				end

				local mouseEvent, releaseEvent
				currentlySelected = true

				releaseEvent = user.InputEnded:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
						return
					end
					mouseEvent:Disconnect()
					releaseEvent:Disconnect()
					currentlySelected = nil
					cursor.Visible = false
				end)

				mouseEvent = user.InputChanged:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						local maxSize = colorLine.AbsoluteSize.X - 1
						local relativeX = mouse.X - colorLine.AbsolutePosition.X
						if relativeX < 0 then
							relativeX = 0
						end
						if relativeX > maxSize then
							relativeX = maxSize
						end
						point[2] = relativeX / maxSize
						updateInputs(point)
						cursor.Visible = true
						cursor.Position = UDim2.new(0, 9 + newArrow.Position.X.Offset, 0, 0)
						buildSequence()
						newMt:Redraw()
					end
				end)
			end
		end)

		newArrow.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				cursor.Visible = false
			end
		end)

		return newArrow
	end

	local function placeArrows()
		for i, v in colors do
			v[3] = placeArrow(math.floor((colorLine.AbsoluteSize.X - 1) * v[2]) + 1, v)
		end
	end

	local function redraw(self)
		gradient.Color = newMt.Sequence or ColorSequence.new(Color3.new(1, 1, 1))

		for i = 2, #colors do
			local nextColor = colors[i]
			local endPos = math.floor((colorLine.AbsoluteSize.X - 1) * nextColor[2]) + 1
			nextColor[3].Position = UDim2.new(0, endPos, 0, 0)
		end
	end
	newMt.Redraw = redraw

	local function loadSequence(self, seq)
		resetSequence = seq
		for i, v in colors do
			if v[3] then
				v[3]:Destroy()
			end
		end
		colors = {}
		currentlySelected = nil
		for i, v in seq.Keypoints do
			local newPoint = { v.Value, v.Time }
			newPoint[3] = placeArrow(v.Time, newPoint)
			table.insert(colors, newPoint)
		end
		beginPoint = colors[1]
		endPoint = colors[#colors]
		currentlySelected = nil
		updateInputs(colors[1])
		buildSequence(true)
		redraw()
	end
	newMt.SetSequence = loadSequence

	local function buttonAnimations(button, inverse)
		button.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				button.BackgroundTransparency = (inverse and 0.5 or 0.4)
			end
		end)
		button.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				button.BackgroundTransparency = (inverse and 1 or 0)
			end
		end)
	end

	colorLine.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and #colors < 20 then
			local maxSize = colorLine.AbsoluteSize.X - 1
			local relativeX = mouse.X - colorLine.AbsolutePosition.X
			if relativeX < 0 then
				relativeX = 0
			end
			if relativeX > maxSize then
				relativeX = maxSize
			end

			local raw = relativeX / maxSize
			local fromColor = nil
			local toColor = nil
			for i, col in colors do
				if col[2] >= raw then
					fromColor = colors[math.max(i - 1, 1)]
					toColor = colors[i]
					break
				end
			end
			local lerpColor = fromColor[1]:lerp(toColor[1], (raw - fromColor[2]) / (toColor[2] - fromColor[2]))
			local newPoint = { lerpColor, raw }
			newPoint[3] = placeArrow(newPoint[2], newPoint)
			table.insert(colors, newPoint)
			updateInputs(newPoint)
			buildSequence()
			redraw()
		end
	end)

	colorLine.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local maxSize = colorLine.AbsoluteSize.X - 1
			local relativeX = mouse.X - colorLine.AbsolutePosition.X
			if relativeX < 0 then
				relativeX = 0
			end
			if relativeX > maxSize then
				relativeX = maxSize
			end
			cursor.Visible = true
			cursor.Position = UDim2.new(0, 10 + relativeX, 0, 0)
		end
	end)

	colorLine.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local inArrow = false
			for i, v in colors do
				if Lib.CheckMouseInGui(v[3]) then
					inArrow = v[3]
				end
			end
			cursor.Visible = inArrow and true or false
			if inArrow then
				cursor.Position = UDim2.new(0, 9 + inArrow.Position.X.Offset, 0, 0)
			end
		end
	end)

	timeBox:GetPropertyChangedSignal("Text"):Connect(function()
		local point = currentPoint
		local num = tonumber(timeBox.Text)
		if point and num and point ~= beginPoint and point ~= endPoint then
			num = math.clamp(num, 0, 1)
			point[2] = num
			buildSequence()
			redraw()
		end
	end)

	colorBox.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local editor = newMt.ColorPicker
			if not editor then
				editor = ColorPicker.new()
				editor.Window:SetTitle("ColorSequence Color Picker")

				editor.OnSelect:Connect(function(col)
					if currentPoint then
						currentPoint[1] = col
					end
					buildSequence()
					redraw()
				end)

				newMt.ColorPicker = editor
			end

			editor.Window:ShowAndFocus()
		end
	end)

	deleteButton.MouseButton1Click:Connect(function()
		if currentPoint and currentPoint ~= beginPoint and currentPoint ~= endPoint then
			for i, v in colors do
				if v == currentPoint then
					v[3]:Destroy()
					table.remove(colors, i)
					break
				end
			end
			currentlySelected = nil
			updateInputs(colors[1])
			buildSequence()
			redraw()
		end
	end)

	resetButton.MouseButton1Click:Connect(function()
		if resetSequence then
			newMt:SetSequence(resetSequence)
		end
	end)

	closeButton.MouseButton1Click:Connect(function()
		window:Close()
	end)

	topClose.MouseButton1Click:Connect(function()
		window:Close()
	end)

	buttonAnimations(deleteButton)
	buttonAnimations(resetButton)
	buttonAnimations(closeButton)

	placeArrows()
	redraw()

	newMt.Show = function(self)
		window:Show()
	end

	return newMt
end

return { new = new }
end;
};
G2L_MODULES[G2L["1d"]] = {
Closure = function()
    local script = G2L["1d"];local m = {["ShirtGraphic"] = "http://www.roblox.com/asset/?id=12324727352",
	["LocalizationTable"] = "http://www.roblox.com/asset/?id=12324727229",
	["Highlight"] = "http://www.roblox.com/asset/?id=12324727097",
	["MeshPart"] = "http://www.roblox.com/asset/?id=12324727156",
	["AngularVelocity"] = "http://www.roblox.com/asset/?id=12324727090",
	["CylinderHandleAdornment"] = "http://www.roblox.com/asset/?id=12324727120",
	["StarterGui"] = "http://www.roblox.com/asset/?id=12324727413",
	["BloomEffect"] = "http://www.roblox.com/asset/?id=12324727118",
	["Attachment"] = "http://www.roblox.com/asset/?id=12324727067",
	["AudioEmitter"] = "http://www.roblox.com/asset/?id=88788998389217",
	["WedgePart"] = "http://www.roblox.com/asset/?id=12324727393",
	["PitchShiftSoundEffect"] = "http://www.roblox.com/asset/?id=12324727160",
	["ImageButton"] = "http://www.roblox.com/asset/?id=12324727185",
	["ModuleScript_Yellow"] = "rbxassetid://95526302909921",
	["DialogChoice"] = "http://www.roblox.com/asset/?id=12324727183",
	["NumberValue"] = "http://www.roblox.com/asset/?id=12324727155",
	["CylindricalConstraint"] = "http://www.roblox.com/asset/?id=12324727106",
	["RemoteEvent"] = "http://www.roblox.com/asset/?id=12324727205",
	["TerrainDetail"] = "http://www.roblox.com/asset/?id=12324727391",
	["Smoke"] = "http://www.roblox.com/asset/?id=12324727409",
	["Configuration"] = "http://www.roblox.com/asset/?id=12324727105",
	["SurfaceGui"] = "http://www.roblox.com/asset/?id=12324727550",
	["Accessory"] = "http://www.roblox.com/asset/?id=12324727129",
	["LineForce"] = "http://www.roblox.com/asset/?id=12324727193",
	["UIScale"] = "http://www.roblox.com/asset/?id=12324727392",
	["Pants"] = "http://www.roblox.com/asset/?id=12324727145",
	["CFrameValue"] = "http://www.roblox.com/asset/?id=12324727087",
	["ImageLabel"] = "http://www.roblox.com/asset/?id=85045667232578",
	["TextChannel"] = "http://www.roblox.com/asset/?id=12324727551",
	["Animation"] = "http://www.roblox.com/asset/?id=12324727088",
	["UIListLayout"] = "http://www.roblox.com/asset/?id=12324727383",
	["Torque"] = "http://www.roblox.com/asset/?id=12324727548",
	["UniversalConstraint"] = "http://www.roblox.com/asset/?id=12324727473",
	["PointLight"] = "http://www.roblox.com/asset/?id=12324727202",
	["EqualizerSoundEffect"] = "http://www.roblox.com/asset/?id=12324727195",
	["Model"] = "http://www.roblox.com/asset/?id=12324727174",
	["DoubleConstrainedValue"] = "http://www.roblox.com/asset/?id=12324727116",
	["Snap"] = "http://www.roblox.com/asset/?id=12324727410",
	["BodyAngularVelocity"] = "http://www.roblox.com/asset/?id=12324727114",
	["RocketPropulsion"] = "http://www.roblox.com/asset/?id=12324727343",
	["SurfaceSelection"] = "http://www.roblox.com/asset/?id=12324727371",
	["Part"] = "http://www.roblox.com/asset/?id=12324727172",
	["ReplicatedFirst"] = "http://www.roblox.com/asset/?id=12324727350",
	["SpotLight"] = "http://www.roblox.com/asset/?id=12324727366",
	["AirController"] = "http://www.roblox.com/asset/?id=133173773480930",
	["AudioReverb"] = "http://www.roblox.com/asset/?id=109632333414617",
	["StandalonePluginScripts"] = "http://www.roblox.com/asset/?id=12324727402",
	["Tool"] = "http://www.roblox.com/asset/?id=12324727518",
	["Texture"] = "http://www.roblox.com/asset/?id=124167854820025",
	["Players"] = "http://www.roblox.com/asset/?id=12324727187",
	["Script"] = "http://www.roblox.com/asset/?id=12324727355",
	["Terrain"] = "http://www.roblox.com/asset/?id=12324727342",
	["RayValue"] = "http://www.roblox.com/asset/?id=12324727146",
	["LineHandleAdornment"] = "http://www.roblox.com/asset/?id=12324727181",
	["RenderingTest"] = "http://www.roblox.com/asset/?id=12324727203",
	["DepthOfFieldEffect"] = "http://www.roblox.com/asset/?id=12324727163",
	["TextBox"] = "http://www.roblox.com/asset/?id=12324727373",
	["DistortionSoundEffect"] = "http://www.roblox.com/asset/?id=12324727165",
	["UIPadding"] = "http://www.roblox.com/asset/?id=12324727422",
	["ServerScriptService"] = "http://www.roblox.com/asset/?id=12324727378",
	["BillboardGui"] = "http://www.roblox.com/asset/?id=12324727112",
	["IntersectOperation"] = "http://www.roblox.com/asset/?id=89909567210566",
	["BodyThrust"] = "http://www.roblox.com/asset/?id=12324727139",
	["RemoteFunction"] = "http://www.roblox.com/asset/?id=12324727339",
	["TextButton"] = "http://www.roblox.com/asset/?id=12324727400",
	["UIStroke"] = "http://www.roblox.com/asset/?id=12324727385",
	["Sound"] = "http://www.roblox.com/asset/?id=12324727374",
	["EchoSoundEffect"] = "http://www.roblox.com/asset/?id=12324727149",
	["ViewportFrame"] = "http://www.roblox.com/asset/?id=12324727381",
	["SpawnLocation"] = "http://www.roblox.com/asset/?id=12324727380",
	["BlurEffect"] = "http://www.roblox.com/asset/?id=12324727179",
	["UITextSizeConstraint"] = "http://www.roblox.com/asset/?id=12324727432",
	["ScreenGui"] = "http://www.roblox.com/asset/?id=14022944235",
	["MaterialService"] = "http://www.roblox.com/asset/?id=12324727152",
	["AdGui"] = "http://www.roblox.com/asset/?id=71648242185144",
	["AdPortal"] = "http://www.roblox.com/asset/?id=111204318665814",
	["Dialog"] = "http://www.roblox.com/asset/?id=12324727127",
	["UnreliableRemoteEvent"] = "http://www.roblox.com/asset/?id=110696539078085",
	["AnimationConstraint"] = "http://www.roblox.com/asset/?id=105573704263135",
	["AudioAnalyzer"] = "http://www.roblox.com/asset/?id=104553704112970",
	["AudioCompressor"] = "http://www.roblox.com/asset/?id=77543879727989",
	["AudioDeviceInput"] = "http://www.roblox.com/asset/?id=81838426478076",
	["AudioDeviceOutput"] = "http://www.roblox.com/asset/?id=114121448056513",
	["UIAspectRatioConstraint"] = "http://www.roblox.com/asset/?id=12324727382",
	["WeldConstraint"] = "http://www.roblox.com/asset/?id=12324727471",
	["Folder"] = "http://www.roblox.com/asset/?id=12332380167",
	["BodyVelocity"] = "http://www.roblox.com/asset/?id=12324727122",
	["Shirt"] = "http://www.roblox.com/asset/?id=12324727368",
	["AudioDistortion"] = "http://www.roblox.com/asset/?id=92567955054604",
	["Animator"] = "http://www.roblox.com/asset/?id=12332603747",
	["StarterPlayer"] = "http://www.roblox.com/asset/?id=12324727376",
	["Color3Value"] = "http://www.roblox.com/asset/?id=12324727121",
	["Clouds"] = "http://www.roblox.com/asset/?id=12324727132",
	["AudioFader"] = "http://www.roblox.com/asset/?id=76174355690893",
	["AudioFilter"] = "http://www.roblox.com/asset/?id=108907313215274",
	["AudioFlanger"] = "http://www.roblox.com/asset/?id=126522838551688",
	["Frame"] = "http://www.roblox.com/asset/?id=12324727102",
	["Seat"] = "http://www.roblox.com/asset/?id=12324727386",
	["AudioListener"] = "http://www.roblox.com/asset/?id=116858928769583",
	["Explosion"] = "http://www.roblox.com/asset/?id=12324727130",
	["FaceControls"] = "http://www.roblox.com/asset/?id=12324727101",
	["ChorusSoundEffect"] = "http://www.roblox.com/asset/?id=12324727075",
	["ClimbController"] = "http://www.roblox.com/asset/?id=71901686039669",
	["TextLabel"] = "http://www.roblox.com/asset/?id=12324727420",
	["PathfindingModifier"] = "http://www.roblox.com/asset/?id=12324727176",
	["ModuleScript"] = "http://www.roblox.com/asset/?id=15415788089",
	["Sparkles"] = "http://www.roblox.com/asset/?id=12324727348",
	["ReplicatedStorage"] = "http://www.roblox.com/asset/?id=12324727340",
	["MaterialVariant"] = "http://www.roblox.com/asset/?id=12324727157",
	["ProximityPrompt"] = "http://www.roblox.com/asset/?id=12324727207",
	["RigidConstraint"] = "http://www.roblox.com/asset/?id=12324727345",
	["NetworkClient"] = "http://www.roblox.com/asset/?id=12324727147",
	["ParticleEmitter"] = "http://www.roblox.com/asset/?id=12324727191",
	["Lighting"] = "http://www.roblox.com/asset/?id=12324727192",
	["AlignOrientation"] = "http://www.roblox.com/asset/?id=12324727068",
	["Instance"] = "http://www.roblox.com/asset/?id=12852357748",
	["Teams"] = "http://www.roblox.com/asset/?id=14022900548",
	["StringValue"] = "http://www.roblox.com/asset/?id=12324727341",
	["SphereHandleAdornment"] = "http://www.roblox.com/asset/?id=12324727510",
	["CharacterMesh"] = "http://www.roblox.com/asset/?id=12324727069",
	["Chat"] = "http://www.roblox.com/asset/?id=12332744095",
	["AudioPitchShifter"] = "http://www.roblox.com/asset/?id=105220381242202",
	["StarterCharacterScripts"] = "http://www.roblox.com/asset/?id=12324727372",
	["BodyGyro"] = "http://www.roblox.com/asset/?id=12324727077",
	["Backpack"] = "http://www.roblox.com/asset/?id=14022912183",
	["AnimationController"] = "http://www.roblox.com/asset/?id=12324727081",
	["StarterPlayerScripts"] = "http://www.roblox.com/asset/?id=12324727372",
	["AudioPlayer"] = "http://www.roblox.com/asset/?id=126352845168556",
	["Beam"] = "http://www.roblox.com/asset/?id=12324727089",
	["AudioLimiter"] = "http://www.roblox.com/asset/?id=123319271940386",
	["SoundService"] = "http://www.roblox.com/asset/?id=12324727344",
	["Handles"] = "http://www.roblox.com/asset/?id=12324727107",
	["Fire"] = "http://www.roblox.com/asset/?id=12324727104",
	["BodyColors"] = "http://www.roblox.com/asset/?id=14022923173",
	["Trail"] = "http://www.roblox.com/asset/?id=12324727414",
	["Sky"] = "http://www.roblox.com/asset/?id=12324727364",
	["UnionOperation"] = "http://www.roblox.com/asset/?id=12324727390",
	["Atmosphere"] = "http://www.roblox.com/asset/?id=12332614672",
	["BindableFunction"] = "http://www.roblox.com/asset/?id=12324727093",
	["RopeConstraint"] = "http://www.roblox.com/asset/?id=12324727354",
	["BrickColorValue"] = "http://www.roblox.com/asset/?id=12324727109",
	["TextChatCommand"] = "http://www.roblox.com/asset/?id=12324727405",
	["FlangeSoundEffect"] = "http://www.roblox.com/asset/?id=12324727113",
	["Decal"] = "http://www.roblox.com/asset/?id=12324727117",
	["NegativeOperation"] = "http://www.roblox.com/asset/?id=12324727227",
	["SurfaceAppearance"] = "http://www.roblox.com/asset/?id=12324727530",
	["TextChatService"] = "http://www.roblox.com/asset/?id=12324727407",
	["HumanoidDescription"] = "http://www.roblox.com/asset/?id=12324727108",
	["VideoFrame"] = "http://www.roblox.com/asset/?id=12324727395",
	["ServerStorage"] = "http://www.roblox.com/asset/?id=12324727361",
	["ChatInputBarConfiguration"] = "http://www.roblox.com/asset/?id=12324727091",
	["Workspace"] = "http://www.roblox.com/asset/?id=12324727439",
	["ColorCorrectionEffect"] = "http://www.roblox.com/asset/?id=12324727115",
	["BodyPosition"] = "http://www.roblox.com/asset/?id=12324727123",
	["TrussPart"] = "http://www.roblox.com/asset/?id=12324727416",
	["ArcHandles"] = "http://www.roblox.com/asset/?id=12324727134",
	["SelectionBox"] = "http://www.roblox.com/asset/?id=12324727359",
	["CompressorSoundEffect"] = "http://www.roblox.com/asset/?id=12324727133",
	["Bone"] = "http://www.roblox.com/asset/?id=12324727143",
	["VehicleSeat"] = "http://www.roblox.com/asset/?id=12324727502",
	["IntValue"] = "http://www.roblox.com/asset/?id=12324727170",
	["BodyForce"] = "http://www.roblox.com/asset/?id=12324727095",
	["StarterPack"] = "http://www.roblox.com/asset/?id=12324727448",
	["CornerWedgePart"] = "http://www.roblox.com/asset/?id=12324727168",
	["ReverbSoundEffect"] = "http://www.roblox.com/asset/?id=12324727363",
	["TorsionSpringConstraint"] = "http://www.roblox.com/asset/?id=12324727377",
	["UIGridLayout"] = "http://www.roblox.com/asset/?id=12324727406",
	["ObjectValue"] = "http://www.roblox.com/asset/?id=12324727158",
	["Vector3Value"] = "http://www.roblox.com/asset/?id=12324727396",
	["SpringConstraint"] = "http://www.roblox.com/asset/?id=12324727398",
	["VoiceChatService"] = "http://www.roblox.com/asset/?id=12324727362",
	["Humanoid"] = "http://www.roblox.com/asset/?id=12332635661",
	["CanvasGroup"] = "http://www.roblox.com/asset/?id=12324727124",
	["TestService"] = "http://www.roblox.com/asset/?id=12324727347",
	["SoundGroup"] = "http://www.roblox.com/asset/?id=12324727483",
	["RodConstraint"] = "http://www.roblox.com/asset/?id=12324727356",
	["LocalScript"] = "http://www.roblox.com/asset/?id=12324727180",
	["IntConstrainedValue"] = "http://www.roblox.com/asset/?id=12324727169",
	["Camera"] = "http://www.roblox.com/asset/?id=12324727148",
	["BindableEvent"] = "http://www.roblox.com/asset/?id=12324727125",
	["ConeHandleAdornment"] = "http://www.roblox.com/asset/?id=12324727166",
	["SunRaysEffect"] = "http://www.roblox.com/asset/?id=12324727527",
	["VectorForce"] = "http://www.roblox.com/asset/?id=12324727491",
	["Weld"] = "http://www.roblox.com/asset/?id=12324727531",
	["UITableLayout"] = "http://www.roblox.com/asset/?id=12324727384",
	["BoolValue"] = "http://www.roblox.com/asset/?id=12324727076",
	["AudioEqualizer"] = "http://www.roblox.com/asset/?id=112069867034719",
	["Motor6D"] = "http://www.roblox.com/asset/?id=12324727188",
	["Team"] = "http://www.roblox.com/asset/?id=12324727411",
	["ChatWindowConfiguration"] = "http://www.roblox.com/asset/?id=12324727196",
	["LocalizationService"] = "http://www.roblox.com/asset/?id=12324727144",
	["ClickDetector"] = "http://www.roblox.com/asset/?id=12324727136",
	["LinearVelocity"] = "http://www.roblox.com/asset/?id=12324727186",
	["UICorner"] = "http://www.roblox.com/asset/?id=12324727467",
	["AlignPosition"] = "http://www.roblox.com/asset/?id=12324727098",
	["WrapTarget"] = "http://www.roblox.com/asset/?id=12324727404",
	["HingeConstraint"] = "http://www.roblox.com/asset/?id=12324727131",
	["SurfaceLight"] = "http://www.roblox.com/asset/?id=12324727365",
	["Player"] = "http://www.roblox.com/asset/?id=12324727237",
	["UIGradient"] = "http://www.roblox.com/asset/?id=12324727375",
	["PrismaticConstraint"] = "http://www.roblox.com/asset/?id=12324727208",
	["PathfindingLink"] = "http://www.roblox.com/asset/?id=12324727225",
	["BoxHandleAdornment"] = "http://www.roblox.com/asset/?id=12324727111",
	["ScrollingFrame"] = "http://www.roblox.com/asset/?id=12324727357",
	["TremoloSoundEffect"] = "http://www.roblox.com/asset/?id=12324727353"}
return m
end;
};
G2L_MODULES[G2L["1f"]] = {
Closure = function()
    local script = G2L["1f"];local __newindex = {}
local module_hidden = {}
local module = setmetatable({},{__newindex = function(t,i,v)
	rawset(t,i,v)
	for k, value in __newindex do
		task.spawn(value,t,i,v)
	end
end,
__index = function(t,k)
	if k == "MiscIcons" then
		local a = require(script.Parent.Parent.UI.Base.IconMap).new("rbxassetid://6511490623",256,256,16,16)
		a:SetDict({
			Reference = 0,             Cut = 1,                         Cut_Disabled = 2,      Copy = 3,               Copy_Disabled = 4,    Paste = 5,                Paste_Disabled = 6,
			Delete = 7,                Delete_Disabled = 8,             Group = 9,             Group_Disabled = 10,    Ungroup = 11,         Ungroup_Disabled = 12,    TeleportTo = 13,
			Rename = 14,               JumpToParent = 15,               ExploreData = 16,      Save = 17,              CallFunction = 18,    CallRemote = 19,          Undo = 20,
			Undo_Disabled = 21,        Redo = 22,                       Redo_Disabled = 23,    Expand_Over = 24,       Expand = 25,          Collapse_Over = 26,       Collapse = 27,
			SelectChildren = 28,       SelectChildren_Disabled = 29,    InsertObject = 30,     ViewScript = 31,        AddStar = 32,         RemoveStar = 33,          Script_Disabled = 34,
			LocalScript_Disabled = 35, Play = 36,                       Pause = 37,            Rename_Disabled = 38,   Empty = 1000
		})
		return a
	end
	if k == "LargeIcons" then
		local LargeIcons = require(script.Parent.Parent.UI.Base.IconMap).new("rbxassetid://129589545519436",256,256,32,32)
		LargeIcons:SetDict({
			Explorer = 0, Properties = 1, Script_Viewer = 2, Watcher = 3, Output = 4, ScriptEdit = 5, Book = 6, Executor = 7, Object = 8, Honey = 9 })
		return LargeIcons
	end
	
	return rawget(t,k) or module_hidden[k]
end})
--module.ExecutorSupport = require(script.Parent.ExecutorSupport)
module.Version = "Nightly 2.0.0"
-- Enviorment Functions
module.Functions = {}
module.Functions.org = {
	protectgui = protectgui
	,setclipboard = setclipboard,
	cloneref = cloneref,
	getnilinstances = getnilinstances,
	saveinstance = saveinstance,
	getgenv = getgenv,
	decompile = decompile,
	writefile = writefile,
	hookmetamethod = hookmetamethod,
	setstackhidden = setstackhidden,
	checkcaller = checkcaller,
	oth = oth,
	hookfunction = hookfunction,
}
module.Functions.newcclosure = newcclosure or function(f) return f end
module.Functions.islclosure = function(f) local l,_ = pcall(setfenv,f,getfenv(f));return l end
module.Functions.iscclosure = function(f) local l,_ = pcall(setfenv,f,getfenv(f));return not l end
module.Functions.getrawmetatable = function(object) return module.Functions.org["getrawmetatable"] ~= nil and module.Functions.org.getrawmetatable(object) or {} end
module.Functions.hookfunction = function(Original, Replacement)
	if module.ExecutorSupport["oth"].IsWorking and module.Functions.iscclosure(Original) and module.Functions.islclosure(Replacement) then
		return module.Functions.org.oth.hook(Original, Replacement)
	end

	if module.Functions.islclosure(Replacement) then
		Replacement = module.Functions.newcclosure(Replacement)
	end

	if not module.ExecutorSupport["hookfunction"].IsWorking then
		return Original
	end

	return module.Functions.org.hookfunction(Original, Replacement)
end
module.Functions.hookmetamethod = function(object, method, hook)
	local Metatable = module.Functions.getrawmetatable(object)
	local originalMethod = rawget(Metatable, method)

	--assert(typeof(originalMethod) == "function", `{method} is not a function in the metatable of {object}`)
	if not typeof(originalMethod) == "function" then
		rawset(Metatable,method,function() end)
	end
	if module.ExecutorSupport["oth"].IsWorking then
		return module.Functions.org.oth.hook(originalMethod, hook)
	end

	if module.Functions.islclosure(hook) then
		hook = module.Functions.newcclosure(hook)
	end

	if not module.ExecutorSupport["hookmetamethod"].IsWorking then
		if method == "__index" then
			local _, Metamethod = xpcall(function()
				return object[tostring(math.random())]
			end, function(err)
				return debug.info(2, "f")
			end)

			return Metamethod
		elseif method == "__newindex" then
			local _, Metamethod = xpcall(function()
				object[tostring(math.random())] = true
			end, function(err)
				return debug.info(2, "f")
			end)

			return Metamethod
		elseif method == "__namecall" then
			local _, Metamethod = xpcall(function()
				object:Mustard()
			end, function(err)
				return debug.info(2, "f")
			end)

			return Metamethod
		end

		return nil
	end

	return module.Functions.org.hookmetamethod(object, method, hook)
end
module.Functions.cloneref = module.Functions.org.cloneref or function(...) return ... end
module.Functions.setclipboard = module.Functions.org.setclipboard or function(...) warn("[setclipboard]",...) end
module.Functions.protectgui = function(gui)
	if module.Functions.org.protectgui then
		module.Functions.org.protectgui(gui)
		
	end
	gui.Parent = script.Parent.Parent
end

module.Functions.getnilinstances = function()
	if module.Functions.org.getnilinstances then
		return module.Functions.org.getnilinstances(),true
	end
	
	return {},false
end
module.Functions.decompile = function(s)
	if module.RunService:IsStudio() then
		local success,source = pcall(function() return s.Source end)
		if success then
			return source
		else
			return "Unable to get the script's source: " .. tostring(source)
		end
	else
		return module.Functions.org.decompile(s)
	end
end
module.Functions.writefile = function(path, data)
	if module.RunService:IsStudio() then
		print(path,data)
	else
		return module.Functions.org.writefile(path, data)
	end
	
end
module.Functions.saveinstance = module.Functions.org.saveinstance
if module.Functions.saveinstance == nil then
	pcall(function()
		local Params = {
			RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
			SSI = "saveinstance",
		}
		module.Functions.saveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
	end)
end
if module.Functions.saveinstance == nil then
	module.Functions.saveinstance = function(...) warn("Attempted to save instance with ",...)end
end
module.IsExecutor = function() return module.Functions.org.getgenv ~= nil end

for i, v in module.Functions do
	module[i] = v
end
---------------------
module.ColorToBytes = function(col)
	local round = math.round
	return string.format("%d, %d, %d",round(col.r*255),round(col.g*255),round(col.b*255))
end

module.env = module
module.Lib = module
module.Main = module
module.FindAndRemove = function(t, item)
	local pos = table.find(t, item)
	if pos then
		table.remove(t, pos)
	end
end
module.ButtonAnim = function(button, data)
		local holding = false
		local disabled = false
		local mode = data and data.Mode or 1
		local control = {}

		if mode == 2 then
			local lerpTo = data.LerpTo or Color3.new(0, 0, 0)
			local delta = data.LerpDelta or 0.2
			control.StartColor = data.StartColor or button.BackgroundColor3
			control.PressColor = data.PressColor or control.StartColor:lerp(lerpTo, delta)
			control.HoverColor = data.HoverColor or control.StartColor:lerp(control.PressColor, 0.6)
			control.OutlineColor = data.OutlineColor
		end

		button.InputBegan:Connect(function(input)
			if disabled then
				return
			end
			if input.UserInputType == Enum.UserInputType.MouseMovement and not holding then
				if mode == 1 then
					button.BackgroundTransparency = 0.4
				elseif mode == 2 then
					button.BackgroundColor3 = control.HoverColor
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				holding = true
				if mode == 1 then
					button.BackgroundTransparency = 0
				elseif mode == 2 then
					button.BackgroundColor3 = control.PressColor
					if control.OutlineColor then
						button.BorderColor3 = control.PressColor
					end
				end
			end
		end)

		button.InputEnded:Connect(function(input)
			if disabled then
				return
			end
			if input.UserInputType == Enum.UserInputType.MouseMovement and not holding then
				if mode == 1 then
					button.BackgroundTransparency = 1
				elseif mode == 2 then
					button.BackgroundColor3 = control.StartColor
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				holding = false
				if mode == 1 then
				button.BackgroundTransparency = module.CheckMouseInGui(button) and 0.4 or 1
				elseif mode == 2 then
					button.BackgroundColor3 = module.CheckMouseInGui(button) and control.HoverColor or control.StartColor
					if control.OutlineColor then
						button.BorderColor3 = control.OutlineColor
					end
				end
			end
		end)

		control.Disable = function()
			disabled = true
			holding = false

			if mode == 1 then
				button.BackgroundTransparency = 1
			elseif mode == 2 then
				button.BackgroundColor3 = control.StartColor
			end
		end

		control.Enable = function()
			disabled = false
		end

		return control
	end
module.IsElevated = function()
	local s,_ = pcall(function()
		game.CoreGui.Name = "CoreGui"
	end)
	return s
end
module.Elevated = module.IsElevated()
module.service = setmetatable({},{__index = function(_,k)
	return module.Functions.cloneref(game:GetService(k))
end,})
module.HttpService = module.cloneref(game:GetService("HttpService"))
if module.IsExecutor() then
	module.RobloxVersion = game:HttpGet("https://clientsettings.roblox.com/v2/client-version/WindowsStudio64/channel/LIVE"):match("(version%-[%w]+)")
else
	module.RobloxVersion = game.ReplicatedStorage.API:InvokeServer("https://clientsettings.roblox.com/v2/client-version/WindowsStudio64/channel/LIVE"):match("(version%-[%w]+)")
end
module.GetIcon = function()
	return ""
end
module.FetchAPI = function(callbackiflong, callbackiftoolong, XD)
	local downloaded = false
	local api,rawAPI
	if module.IsExecutor() then
		
		task.spawn(function()
			task.wait(10)
			if not downloaded and callbackiflong then callbackiflong() end

			task.wait(20) -- 30
			if not downloaded and callbackiftoolong then callbackiftoolong() end

			task.wait(30) -- 60
			if not downloaded and XD then XD() end
		end)
		-- lmfao async makes it work to load big file
		rawAPI = rawAPI or game:HttpGet("http://setup.roblox.com/"..module.RobloxVersion.."-API-Dump.json")
	else
		if true then
			rawAPI = game.ReplicatedStorage.DexAPITest:InvokeServer()
		else
			error("NO API EXISTS")
		end
	end
	downloaded = true

	module.RawAPI = rawAPI
	api = module.HttpService:JSONDecode(rawAPI)

	local classes,enums = {},{}
	local categoryOrder,seenCategories = {},{}

	local function insertAbove(t,item,aboveItem)
		local findPos = table.find(t,item)
		if not findPos then return end
		table.remove(t,findPos)

		local pos = table.find(t,aboveItem)
		if not pos then return end
		table.insert(t,pos,item)
	end

	for _,class in pairs(api.Classes) do
		local newClass = {}
		newClass.Name = class.Name
		newClass.Superclass = class.Superclass
		newClass.Properties = {}
		newClass.Functions = {}
		newClass.Events = {}
		newClass.Callbacks = {}
		newClass.Tags = {}

		if class.Tags then for c,tag in pairs(class.Tags) do newClass.Tags[tag] = true end end
		for __,member in pairs(class.Members) do
			local newMember = {}
			newMember.Name = member.Name
			newMember.Class = class.Name
			newMember.Security = member.Security
			newMember.Tags ={}
			if member.Tags then for c,tag in pairs(member.Tags) do newMember.Tags[tag] = true end end

			local mType = member.MemberType
			if mType == "Property" then
				local propCategory = member.Category or "Other"
				propCategory = propCategory:match("^%s*(.-)%s*$")
				if not seenCategories[propCategory] then
					categoryOrder[#categoryOrder+1] = propCategory
					seenCategories[propCategory] = true
				end
				newMember.ValueType = member.ValueType
				newMember.Category = propCategory
				newMember.Serialization = member.Serialization
				table.insert(newClass.Properties,newMember)
			elseif mType == "Function" then
				newMember.Parameters = {}
				newMember.ReturnType = member.ReturnType.Name
				for c,param in pairs(member.Parameters) do
					table.insert(newMember.Parameters,{Name = param.Name, Type = param.Type.Name})
				end
				table.insert(newClass.Functions,newMember)
			elseif mType == "Event" then
				newMember.Parameters = {}
				for c,param in pairs(member.Parameters) do
					table.insert(newMember.Parameters,{Name = param.Name, Type = param.Type.Name})
				end
				table.insert(newClass.Events,newMember)
			end
		end

		classes[class.Name] = newClass
	end

	for _,class in pairs(classes) do
		class.Superclass = classes[class.Superclass]
	end

	for _,enum in pairs(api.Enums) do
		local newEnum = {}
		newEnum.Name = enum.Name
		newEnum.Items = {}
		newEnum.Tags = {}

		if enum.Tags then for c,tag in pairs(enum.Tags) do newEnum.Tags[tag] = true end end
		for __,item in pairs(enum.Items) do
			local newItem = {}
			newItem.Name = item.Name
			newItem.Value = item.Value
			table.insert(newEnum.Items,newItem)
		end

		enums[enum.Name] = newEnum
	end

	local function getMember(class,member)
		if not classes[class] or not classes[class][member] then return end
		local result = {}

		local currentClass = classes[class]
		while currentClass do
			for _,entry in pairs(currentClass[member]) do
				result[#result+1] = entry
			end
			currentClass = currentClass.Superclass
		end

		table.sort(result,function(a,b) return a.Name < b.Name end)
		return result
	end

	insertAbove(categoryOrder,"Behavior","Tuning")
	insertAbove(categoryOrder,"Appearance","Data")
	insertAbove(categoryOrder,"Attachments","Axes")
	insertAbove(categoryOrder,"Cylinder","Slider")
	insertAbove(categoryOrder,"Localization","Jump Settings")
	insertAbove(categoryOrder,"Surface","Motion")
	insertAbove(categoryOrder,"Surface Inputs","Surface")
	insertAbove(categoryOrder,"Part","Surface Inputs")
	insertAbove(categoryOrder,"Assembly","Surface Inputs")
	insertAbove(categoryOrder,"Character","Controls")
	--categoryOrder[#categoryOrder+1] = "Unscriptable"
	categoryOrder[#categoryOrder+1] = "Tags"
	categoryOrder[#categoryOrder+1] = "Attributes"

	local categoryOrderMap = {}
	for i = 1,#categoryOrder do
		categoryOrderMap[categoryOrder[i]] = i
	end

	return {
		Classes = classes,
		Enums = enums,
		CategoryOrder = categoryOrderMap,
		GetMember = getMember
	}
end
module.CloseButton = function()
	local n : TextButton = module.create({{
		1,
		"TextButton",
		{
			AutoButtonColor = false,
			BackgroundColor3 = module.Settings.Theme.Menu,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = 3,
			Name = "Close",
			Parent = { 5 },
			Position = UDim2.new(1, -18, 0, 2),
			Size = UDim2.new(0, 16, 0, 16),
			Text = "",
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
		},
	},
		{
			2,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5054663650",
				Parent = { 1 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 10, 0, 10),
			},
		},})
	return n
end

module.IsShiftDown = function()
	return module.UIS:IsKeyDown(Enum.KeyCode.LeftShift)
		or module.UIS:IsKeyDown(Enum.KeyCode.RightShift)
end

module.IsCtrlDown = function()
	return module.UIS:IsKeyDown(Enum.KeyCode.LeftControl)
		or module.UIS:IsKeyDown(Enum.KeyCode.RightControl)
end
module.ParseXML = (function() -- from https://github.com/jonathanpoelen/xmlparser
	local func = function()
		-- http://lua-users.org/wiki/StringTrim

		local slashchar = string.byte("/", 1)
		local E = string.byte("E", 1)

		local function defaultEntityTable()
			return { quot = '"', apos = "'", lt = "<", gt = ">", amp = "&", tab = "\t", nbsp = " " }
		end

		local function replaceEntities(s, entities)
			return s:gsub("&([^;]+);", entities)
		end

		local function createEntityTable(docEntities, resultEntities)
			local entities = resultEntities or defaultEntityTable()
			for _, e in docEntities do
				e.value = replaceEntities(e.value, entities)
				entities[e.name] = e.value
			end
			return entities
		end

		local function parse(s, evalEntities)
			s = s:gsub("<!%-%-(.-)%-%->", "")

			local entities, tentities = {}, nil

			if evalEntities then
				local pos = s:find("<[_%w]")
				if pos then
					s:sub(1, pos):gsub("<!ENTITY%s+([_%w]+)%s+(.)(.-)%2", function(name, q, entity)
						entities[#entities + 1] = { name = name, value = entity }
					end)
					tentities = createEntityTable(entities)
					s = replaceEntities(s:sub(pos), tentities)
				end
			end

			local t, l = {}, {}

			local addtext = function(txt)
				txt = txt:match("^%s*(.*%S)") or ""
				if #txt ~= 0 then
					t[#t + 1] = { text = txt }
				end
			end

			s:gsub("<([?!/]?)([-:_%w]+)%s*(/?>?)([^<]*)", function(type, name, closed, txt)
				if #type == 0 then
					local a = {}
					if #closed == 0 then
						local len = 0
						for all, aname, _, value, starttxt in
							string.gmatch(txt, "(.-([-_%w]+)%s*=%s*(.)(.-)%3%s*(/?>?))")
						do
							len = len + #all
							a[aname] = value
							if #starttxt ~= 0 then
								txt = txt:sub(len + 1)
								closed = starttxt
								break
							end
						end
					end
					t[#t + 1] = { tag = name, attrs = a, children = {} }

					if closed:byte(1) ~= slashchar then
						l[#l + 1] = t
						t = t[#t].children
					end

					addtext(txt)
				elseif "/" == type then
					t = l[#l]
					l[#l] = nil

					addtext(txt)
				elseif "!" == type then
					if E == name:byte(1) then
						txt:gsub("([_%w]+)%s+(.)(.-)%2", function(name, q, entity)
							entities[#entities + 1] = { name = name, value = entity }
						end, 1)
					end
				end
			end)

			return { children = t, entities = entities, tentities = tentities }
		end

		return function(text)
			return parse(text)
		end
	end
	local newEnv = setmetatable({}, { __index = getfenv() })
	setfenv(func, newEnv)
	return func()
end)()

module.fn = module
module.GetAttribute = function(t,v)
	return t:GetAttribute(v)
end
module.SetAttribute = function(t,v,k)
	t:SetAttribute(v,k)
end
module.FetchRMD = function()
	local rawXML
	if module.IsExecutor() then
		
		rawXML = rawXML or game:HttpGet("https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/ReflectionMetadata.xml")
	else
		if true then
			rawXML = game.ReplicatedStorage.DexRMDTest:InvokeServer() --[["https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/ReflectionMetadata.xml"]]
		else
			error("NO RMD EXISTS")
		end
	end
	module.RawRMD = rawXML
	local parsed = module.ParseXML(rawXML)
	local classList = parsed.children[1].children[1].children
	local enumList = parsed.children[1].children[2].children
	local propertyOrders = {}

	local classes,enums = {},{}
	for _,class in pairs(classList) do
		local className = ""
		for _,child in pairs(class.children) do
			if child.tag == "Properties" then
				local data = {Properties = {}, Functions = {}}
				local props = child.children
				for _,prop in pairs(props) do
					local name = prop.attrs.name
					name = name:sub(1,1):upper()..name:sub(2)
					data[name] = prop.children[1].text
				end
				className = data.Name
				classes[className] = data
			elseif child.attrs.class == "ReflectionMetadataProperties" then
				local members = child.children
				for _,member in pairs(members) do
					if member.attrs.class == "ReflectionMetadataMember" then
						local data = {}
						if member.children[1].tag == "Properties" then
							local props = member.children[1].children
							for _,prop in pairs(props) do
								if prop.attrs then
									local name = prop.attrs.name
									name = name:sub(1,1):upper()..name:sub(2)
									data[name] = prop.children[1].text
								end
							end
							if data.PropertyOrder then
								local orders = propertyOrders[className]
								if not orders then orders = {} propertyOrders[className] = orders end
								orders[data.Name] = tonumber(data.PropertyOrder)
							end
							classes[className].Properties[data.Name] = data
						end
					end
				end
			elseif child.attrs.class == "ReflectionMetadataFunctions" then
				local members = child.children
				for _,member in pairs(members) do
					if member.attrs.class == "ReflectionMetadataMember" then
						local data = {}
						if member.children[1].tag == "Properties" then
							local props = member.children[1].children
							for _,prop in pairs(props) do
								if prop.attrs then
									local name = prop.attrs.name
									name = name:sub(1,1):upper()..name:sub(2)
									data[name] = prop.children[1].text
								end
							end
							classes[className].Functions[data.Name] = data
						end
					end
				end
			end
		end
	end

	for _,enum in pairs(enumList) do
		local enumName = ""
		for _,child in pairs(enum.children) do
			if child.tag == "Properties" then
				local data = {Items = {}}
				local props = child.children
				for _,prop in pairs(props) do
					local name = prop.attrs.name
					name = name:sub(1,1):upper()..name:sub(2)
					data[name] = prop.children[1].text
				end
				enumName = data.Name
				enums[enumName] = data
			elseif child.attrs.class == "ReflectionMetadataEnumItem" then
				local data = {}
				if child.children[1].tag == "Properties" then
					local props = child.children[1].children
					for _,prop in pairs(props) do
						local name = prop.attrs.name
						name = name:sub(1,1):upper()..name:sub(2)
						data[name] = prop.children[1].text
					end
					enums[enumName].Items[data.Name] = data
				end
			end
		end
	end

	return {Classes = classes, Enums = enums, PropertyOrders = propertyOrders}
end
--module.RMD = module.FetchRMD()
module.cloneref = cloneref or function(...) return (...) end
module.TweenS = module.cloneref(game:GetService("TweenService"))
module.CreateInstance = function(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end
module.UIS = module.cloneref(game:GetService("UserInputService"))
module.Players = module.cloneref(game.Players)
module.LocalPlayer = module.cloneref(module.Players.LocalPlayer)

module.Mouse = module.cloneref(module.LocalPlayer:GetMouse())
module.mouse = module.Mouse
module.RunService = module.cloneref(game:GetService("RunService"))
module.CheckMouseInGui = function(g)
	local s,r = pcall(function()
		return module.Mouse.X >= g.AbsolutePosition.X and module.Mouse.X < g.AbsolutePosition.X + g.AbsoluteSize.X and module.Mouse.Y >= g.AbsolutePosition.Y and module.Mouse.Y < g.AbsolutePosition.Y + g.AbsoluteSize.Y
	end)
	return s == true and r or false
end
module.TextService = module.cloneref(game:GetService("TextService"))
module.MarketplaceService = module.cloneref(game:GetService("MarketplaceService"))
module.Settings = {
	Explorer = {
		_Recurse = true,
		--Sorting = true,
		TeleportToOffset = Vector3.new(0, 0, 0), -- TODO
		ClickToRename = true, -- TODO
		AutoUpdateSearch = true,
		--AutoUpdateMode = 0, -- 0 Default, 1 no tree update, 2 no descendant events, 3 frozen
		PartSelectionBox = true, --TODO
		GuiSelectionBox = true, -- TODO
		--CopyPathUseGetChildren = true,
	},
	Properties = {
		_Recurse = true,
		MaxConflictCheck = 50,
		ShowDeprecated = false,
		ShowHidden = false,
		ClearOnFocus = false,
		LoadstringInput = true,
		NumberRounding = 3,
		ShowAttributes = false,
		MaxAttributes = 50,
		ScaleType = 1, -- 0 Full Name Shown, 1 Equal Halves
	},
	Window = {
		BackgroundTransparency = 0,
	},
	Theme = {
		_Recurse = true,
		Main1 = Color3.fromRGB(52, 52, 52),
		Main2 = Color3.fromRGB(45, 45, 45),
		Main3 = Color3.fromRGB(37,37,37),
		Outline1 = Color3.fromRGB(33, 33, 33), -- Mainly frames
		Outline2 = Color3.fromRGB(55, 55, 55), -- Mainly button
		Outline3 = Color3.fromRGB(30, 30, 30), -- Mainly textbox
		TextBox = Color3.fromRGB(38, 38, 38),
		Menu = Color3.fromRGB(32, 32, 32),
		ListSelection = Color3.fromRGB(11, 90, 175),
		ListSelectionOutline = Color3.fromRGB(86,125,188),
		ListSelection2 = Color3.fromRGB(61,143,220), -- Mainly intro
		Button = Color3.fromRGB(60, 60, 60),
		ButtonHover = Color3.fromRGB(68, 68, 68),
		ButtonPress = Color3.fromRGB(40, 40, 40),
		Highlight = Color3.fromRGB(75, 75, 75),
		Highlight2 = Color3.fromRGB(80, 80, 80),
		Highlight3 = Color3.fromRGB(64,64,64),
		Highlight4 = Color3.fromRGB(96, 96, 96),
		Text = Color3.fromRGB(255, 255, 255),
		PlaceholderText = Color3.fromRGB(100, 100, 100),
		Important = Color3.fromRGB(255, 0, 0),
		ExplorerIconMap = "",
		MiscIconMap = "",
		Syntax = {
			Text = Color3.fromRGB(204, 204, 204),
			Background = Color3.fromRGB(36, 36, 36),
			Selection = Color3.fromRGB(255, 255, 255),
			SelectionBack = Color3.fromRGB(11, 90, 175),
			Operator = Color3.fromRGB(204, 204, 204),
			Number = Color3.fromRGB(255, 198, 0),
			String = Color3.fromRGB(173, 241, 149),
			Comment = Color3.fromRGB(102, 102, 102),
			Keyword = Color3.fromRGB(248, 109, 124),
			Error = Color3.fromRGB(255, 0, 0),
			FindBackground = Color3.fromRGB(141, 118, 0),
			Exploit = Color3.fromRGB(171, 84, 247),
			MatchingWord = Color3.fromRGB(85, 85, 85),
			BuiltIn = Color3.fromRGB(132, 214, 247),
			CurrentLine = Color3.fromRGB(45, 50, 65),
			LocalMethod = Color3.fromRGB(253, 251, 172),
			LocalProperty = Color3.fromRGB(97, 161, 241),
			Nil = Color3.fromRGB(255, 198, 0),
			Bool = Color3.fromRGB(255, 198, 0),
			Function = Color3.fromRGB(248, 109, 124),
			Local = Color3.fromRGB(248, 109, 124),
			Self = Color3.fromRGB(248, 109, 124),
			FunctionName = Color3.fromRGB(253, 251, 172),
			Bracket = Color3.fromRGB(204, 204, 204),
		},
	},
}
module.AppSignal = require(script.Parent.Signal).new()
module_hidden.API = module.FetchAPI()
module_hidden.RMD = module.FetchRMD()
module.FastWait = task.wait
module.ShowGui = function(gui)
	if protectgui then
		protectgui(gui)
	end
	gui.Parent = script.Parent.Parent
end
module.DisplayOrders = {
	SideWindow = 8,
	Window = 10,
	Menu = 100000,
	Core = 101000,
}
module.ButtonAnim = function(button, data)
	local holding = false
	local disabled = false
	local mode = data and data.Mode or 1
	local control = {}

	if mode == 2 then
		local lerpTo = data.LerpTo or Color3.new(0, 0, 0)
		local delta = data.LerpDelta or 0.2
		control.StartColor = data.StartColor or button.BackgroundColor3
		control.PressColor = data.PressColor or control.StartColor:lerp(lerpTo, delta)
		control.HoverColor = data.HoverColor or control.StartColor:lerp(control.PressColor, 0.6)
		control.OutlineColor = data.OutlineColor
	end

	button.InputBegan:Connect(function(input)
		if disabled then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseMovement and not holding then
			if mode == 1 then
				button.BackgroundTransparency = 0.4
			elseif mode == 2 then
				button.BackgroundColor3 = control.HoverColor
			end
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			holding = true
			if mode == 1 then
				button.BackgroundTransparency = 0
			elseif mode == 2 then
				button.BackgroundColor3 = control.PressColor
				if control.OutlineColor then
					button.BorderColor3 = control.PressColor
				end
			end
		end
	end)

	button.InputEnded:Connect(function(input)
		if disabled then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseMovement and not holding then
			if mode == 1 then
				button.BackgroundTransparency = 1
			elseif mode == 2 then
				button.BackgroundColor3 = control.StartColor
			end
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			holding = false
			if mode == 1 then
				button.BackgroundTransparency = module.CheckMouseInGui(button) and 0.4 or 1
			elseif mode == 2 then
				button.BackgroundColor3 = module.CheckMouseInGui(button) and control.HoverColor or control.StartColor
				if control.OutlineColor then
					button.BorderColor3 = control.OutlineColor
				end
			end
		end
	end)

	control.Disable = function()
		disabled = true
		holding = false

		if mode == 1 then
			button.BackgroundTransparency = 1
		elseif mode == 2 then
			button.BackgroundColor3 = control.StartColor
		end
	end

	control.Enable = function()
		disabled = false
	end

	return control
end
module.create = function(data)
	local insts = {}
	print(data)
	for i, v in data do
		
		insts[v[1]] = Instance.new(v[2])
	end

	for _, v in data do
		for prop, val in v[3] do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
			end
		end
	end

	return insts[1]
end

module.checkMouseInGui = module.CheckMouseInGui
module.Label = require(script.Parent.Parent.UI.Base.Label).New()
module.Label.Parent = script.Parent.Parent
module.GetTextSize = function(text)
	local l : TextLabel = module.Label
	l.Text = text
	return l.TextBounds
end
return function(f)
	local env = getfenv(debug.info(2,"f"))
	if f ~= nil then
		module.Apps = f
	end
	for i, v in module do
		env[i] = v
	end
	for i, v in module_hidden do
		env[i] = v
	end
	__newindex[#__newindex+1] = function(t,k,v)
		env[k] = v
	end
	return module
end

end;
};
G2L_MODULES[G2L["20"]] = {
Closure = function()
    local script = G2L["20"];local module = {}
local rs = script
module.GetAncestors = function(obj,NoGame)
	local list = {}
	local p = obj
	while p ~= nil do
		p = p.Parent
		local s,_ = pcall(function()
			if NoGame then
				if obj == game or obj._ == "game" then
					error("")
				end
			end
		end)
		if p and s then
			list[#list+1] = p
		end
	end
	return list
end
module.ReverseTable = function(tbl)
	local n = {}
	for i=1,#tbl do
		n[#tbl-i+1] = tbl[i]
	end
	return n
end
module.GetInstancePath = function(inst)
	local path = ""
	local tbl = module.ReverseTable(module.GetAncestors(inst,false))
	tbl[#tbl+1] = inst
	for _,inst2 in tbl do
		local name = inst2.Name
		if name == game.Name then
			name = "game"
		end
		local Service,_ = pcall(game.GetService,game,name)
		if Service then
			path = path .. ":GetService('" .. name .. "')";continue
		end
		path = path .. '["' .. name .. '"]'
	end
	return "getfenv()" .. path
end
module.Luau_To_Value = function(code)
	local enabled,_ = pcall(loadstring,"local a = nil")
	if enabled then
		local s,r = pcall(function()
			return loadstring("return " .. code)()
		end)
		if s then
			return r
		else
			return nil
		end
	else
		local s,r = pcall(function()
			return require(workspace:FindFirstChild("vLuau",true)).luau_execute("return " .. code)()
		end)
		if s then return r else return nil end
	end
end
module.Value_To_Luau = function(...)
	local value = table.pack(...)[1]
	if #table.pack(...) ~= 1 then
		local args = table.pack(...)
		local x = ""
		for i, v in args do
			if i == "n" then
				continue
			end
			x = x .. module.Value_To_Luau(v)
			if i ~= #args then 
				x = x .. ", "
			end
		end
		return x
	end
	local typ = typeof(value)
	if typ == "boolean" then
		return tostring(value)
	elseif typ == "string" then
		return '"' .. value .. '"'
	elseif typ == "number" then
		return tostring(value)
	elseif typ == "CFrame" or typ == "Vector3" or typ == "Vector2" then
		local value : CFrame = value
		local x = "CFrame.new("
		if typ == "Vector3" then
			x = "Vector3.new("
		end
		if typ == "Vector2" then
			x = "Vector2.new("
		end
		local v = typ == "Vector2" and {"X","Y"} or {"X","Y","Z"}
		for i, v in v do
			x = x .. value[x]
			if i ~= #v then x = x .. ", " else x = x .. ")" end
		end
		return value 
	elseif typ == "Instance" then
		return module.GetInstancePath(value)
	elseif typ == "table" then
		local mt = getmetatable(value)
		local x = "{"
		if mt ~= nil then
			x = "setmetatable("
		end
		local done = 0
		for index, v in value do
			x = x .. "[" .. module.Value_To_Luau(index) .. "] = " .. module.Value_To_Luau(v)
			done = done + 1
			if done == #value then
				if mt ~= nil then
					x = x .. "}, " .. module.Value_To_Luau(mt) .. ")"
				else
					x = x .. "}"
				end
			else
				x = x .. ", "
			end
		end
		x = x .. "}"
		return x
	end
	return tostring(value)
end
module.GetPropertyData = function(obj,prop)
	local readable, _ = pcall(function()
		return obj[prop]
	end)
	local writable,_ = pcall(function()
		obj[prop] = obj[prop]
	end)
	return readable,writable
end
local textWidthRuler = Instance.new("TextLabel",script.Parent.Parent)
textWidthRuler.Font = Enum.Font.SourceSans
textWidthRuler.TextSize = 14
textWidthRuler.Visible = true
textWidthRuler.Position = UDim2.new(1,0,1,0)
module.GetTextWidth = function(text)
	textWidthRuler.Text = text
	return textWidthRuler.TextBounds.X
end
module.GetIcon = function(name)
	local info = require(rs.Parent.Parent.UI.Info)
	local icon_module = rs.Parent.Parent.UI.Icons:FindFirstChild(info.IconPack)
	if not icon_module then
		return require(rs.Parent.Parent.UI.Icons.NewDark)["Instance"]
	end
	local content = require(icon_module)
	return content[name] or content["Instance"]
end
module.IsDestroyed = function(obj)
	if not obj then
		return true
	end
	if obj.Parent == nil then
		local s,_ = pcall(function()
			obj.Parent = workspace
		end)
		return not s
	end
	return false
end
return module

end;
};
G2L_MODULES[G2L["21"]] = {
Closure = function()
    local script = G2L["21"];local module = {}
-- TODO: Make better
--module.new = function()
--	return {
--		Callbacks = {},
--		Firing = false,
--		Connect = function(s,f)
--			if typeof(s) ~= "table" then error("No.") end
--			local idx = #s.Callbacks+1
--			s.Callbacks[idx] = f
--			return {
--				Disconnect = function()
--					s.Callbacks[idx] = nil
--				end,
--			}
--		end,
--		Fire = function(s,...)
--			if typeof(s) ~= "table" then error("No.") end
--			s.Firing = true
--			task.wait()
--			for i, v in s.Callbacks do
--				task.spawn(v,...)
--			end
--			s.Firing = false
--		end,
--		Wait = function(s)
--			if typeof(s) ~= "table" then error("No.") end
--			repeat task.wait() until s.Firing == true
--		end,
--	}
--end
module.new = function()
	local Signal = setmetatable({__type = "Signal"},{__type = "Signal",__metatable = "Locked"})
	Signal.Firing = false
	Signal.Callbacks = {}
	Signal.Connections = {}
	Signal.Connect = function(self,callback)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		local Connection = setmetatable({__type = "Connection"},{__type = "Connection",__metatable = "Locked"})
		Connection.Signal = Signal
		Connection.idx = #Signal.Callbacks+1
		
		Connection.Signal.Callbacks[Connection.idx] = callback
		Connection.Signal.Connections[Connection.idx] = Connection
		
		Connection.Connected = true
		Connection.Function = callback
		Connection.Enabled = true
		Connection.Disconnect = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			table.remove(Connection.Signal.Callbacks,Connection.idx)
			table.remove(Connection.Signal.Connections,Connection.idx)
		end
		Connection.Disable = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			Connection.Enabled = false
		end
		Connection.Enable = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			Connection.Enabled = true
		end
		return Connection
	end
	Signal.Wait = function(self)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		repeat task.wait() until Signal.Firing == true
	end
	Signal.Fire = function(self,...)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		Signal.Firing = true
		task.wait()
		for _, connection in Signal.Connections do
			if connection == nil then
				continue
			end
			if connection.Connected ~= true then
				continue
			end
			if connection.Enabled ~= true then
				continue
			end
			if connection.Function == nil then
				continue
			end
			task.spawn(connection.Function,...)
		end
		Signal.Firing = false
	end
	return Signal
end


return module

end;
};
G2L_MODULES[G2L["22"]] = {
Closure = function()
    local script = G2L["22"];local highlighter = {}
local Enviorment = require(script.Parent.Enviorment)()
local keywords = {
	lua = {
		"and", "break", "or", "else", "elseif", "if", "then", "until", "repeat", "while", "do", "for", "in", "end",
		"local", "return", "function", "export"
	},
	rbx = {
		"Workspace","game", "workspace", "script", "math", "string", "table", "task", "wait", "select", "next", "Enum",
		"error", "warn", "tick", "assert", "shared", "loadstring", "tonumber", "tostring", "type",
		"typeof", "unpack", "print", "Instance", "CFrame", "Vector3", "Vector2", "Color3", "UDim", "UDim2", "Ray", "BrickColor",
		"OverlapParams", "RaycastParams", "Axes", "Random", "Region3", "Rect", "TweenInfo",
		"collectgarbage", "not", "utf8", "pcall", "xpcall", "_G", "setmetatable", "getmetatable", "os", "pairs", "ipairs"
	},
	exploit = {
		"hookmetamethod", "hookfunction", "getgc", "filtergc", "Drawing", "getgenv", "getsenv", "getrenv", "getfenv", "setfenv",
		"decompile", "saveinstance", "getrawmetatable", "setrawmetatable", "checkcaller", "cloneref", "clonefunction",
		"iscclosure", "islclosure", "isexecutorclosure", "newcclosure", "getfunctionhash", "crypt", "writefile", "appendfile", "loadfile", "readfile", "listfiles",
		"replicatesignal" , "getconnections" , "firesignal", "getscriptbytecode" , "setscriptbytecode" , "hookinstance" ,
		"getscriptclosure" , "getthreadidentity" , "setthreadidentity", "getnamecallmethod", "checkcaller",
		"makefolder", "isfolder", "isfile", "delfile", "delfolder", "getcustomasset", "fireclickdetector", "firetouchinterest", "fireproximityprompt"
	},
	operators = {
		"#", "+", "-", "*", "%", "/", "^", "=", "~", "=", "<", ">", ",", ".", "(", ")", "{", "}", "[", "]", ";", ":"
	}
}
-- TODO: Theme
local colors = {
	numbers = Enviorment.Settings.Theme.Syntax.Number or Color3.fromRGB(255, 198, 0),
	boolean = Enviorment.Settings.Theme.Syntax.Bool or Color3.fromRGB(255, 198, 0),
	operator = Enviorment.Settings.Theme.Syntax.Operator or Color3.fromRGB(204, 204, 204),
	lua = Enviorment.Settings.Theme.Syntax.BuiltIn or Color3.fromRGB(132, 214, 247),
	exploit = Enviorment.Settings.Theme.Syntax.Exploit or Color3.fromRGB(171, 84, 247),
	rbx = Color3.fromRGB(248, 109, 124),
	str = Color3.fromRGB(173, 241, 132),
	comment = Color3.fromRGB(102, 102, 102),
	null = Color3.fromRGB(255, 198, 0),
	call = Color3.fromRGB(253, 251, 172),
	self_call = Color3.fromRGB(253, 251, 172),
	local_color = Color3.fromRGB(248, 109, 115),
	function_color = Color3.fromRGB(248, 109, 115),
	self_color = Color3.fromRGB(248, 109, 115),
	local_property = Color3.fromRGB(97, 161, 241),
}

local function createKeywordSet(keywords)
	local keywordSet = {}
	for _, keyword in ipairs(keywords) do
		keywordSet[keyword] = true
	end
	return keywordSet
end

local luaSet = createKeywordSet(keywords.lua)
local exploitSet = createKeywordSet(keywords.exploit)
local rbxSet = createKeywordSet(keywords.rbx)
local operatorsSet = createKeywordSet(keywords.operators)

function getHighlight(tokens, index)
	local token = tokens[index]

	if colors[token .. "_color"] then
		return colors[token .. "_color"]
	end

	if tonumber(token) then
		return colors.numbers
	elseif token == "nil" then
		return colors.null
	elseif token:sub(1, 2) == "--" then
		return colors.comment
	elseif operatorsSet[token] then
		return colors.operator
	elseif luaSet[token] then
		return colors.rbx
	elseif rbxSet[token] then
		return colors.lua
	elseif exploitSet[token] then
		return colors.exploit
	elseif token:sub(1, 1) == "\"" or token:sub(1, 1) == "\'" then
		return colors.str
	elseif token == "true" or token == "false" then
		return colors.boolean
	end

	if tokens[index + 1] == "(" then
		if tokens[index - 1] == ":" then
			return colors.self_call
		end

		return colors.call
	end

	if tokens[index - 1] == "." then
		if tokens[index - 2] == "Enum" then
			return colors.rbx
		end

		return colors.local_property
	end
end

function highlighter.run(source)
	local tokens = {}
	local currentToken = ""

	local inString = false
	local inComment = false
	local commentPersist = false

	for i = 1, #source do
		local character = source:sub(i, i)

		if inComment then
			if character == "\n" and not commentPersist then
				table.insert(tokens, currentToken)
				table.insert(tokens, character)
				currentToken = ""

				inComment = false
			elseif source:sub(i - 1, i) == "]]" and commentPersist then
				currentToken ..= "]"

				table.insert(tokens, currentToken)
				currentToken = ""

				inComment = false
				commentPersist = false
			else
				currentToken = currentToken .. character
			end
		elseif inString then
			if character == inString and source:sub(i-1, i-1) ~= "\\" or character == "\n" then
				currentToken = currentToken .. character
				inString = false
			else
				currentToken = currentToken .. character
			end
		else
			if source:sub(i, i + 1) == "--" then
				table.insert(tokens, currentToken)
				currentToken = "-"
				inComment = true
				commentPersist = source:sub(i + 2, i + 3) == "[["
			elseif character == "\"" or character == "\'" then
				table.insert(tokens, currentToken)
				currentToken = character
				inString = character
			elseif operatorsSet[character] then
				table.insert(tokens, currentToken)
				table.insert(tokens, character)
				currentToken = ""
			elseif character:match("[%w_]") then
				currentToken = currentToken .. character
			else
				table.insert(tokens, currentToken)
				table.insert(tokens, character)
				currentToken = ""
			end
		end
	end

	table.insert(tokens, currentToken)

	local highlighted = {}

	for i, token in ipairs(tokens) do
		local highlight = getHighlight(tokens, i)

		if highlight then
			local syntax = string.format("<font color = \"#%s\">%s</font>", highlight:ToHex(), token:gsub("<", "&lt;"):gsub(">", "&gt;"))

			table.insert(highlighted, syntax)
		else
			table.insert(highlighted, token)
		end
	end

	return table.concat(highlighted)
end

return highlighter
end;
};
G2L_MODULES[G2L["23"]] = {
Closure = function()
    local script = G2L["23"];local module = {}
local Enviorment = require(script.Parent.Enviorment)()
local args = {...};
local enabled = args[1] or true;
local Apps = nil;
local Loader = nil;
Enviorment.AppSignal:Fire("Loader",function(v,v2) Apps = v;Loader = v2;end)
local Components = {}
local ComponentsMt = {__index = function(_,name)
	return require(script.Parent.Parent.UI:FindFirstChild(name))
end,}
setmetatable(Components,ComponentsMt)
table.freeze(Components)
ComponentsMt.__metatable = "No."
local ReadonlyEnv = newproxy(true)
local mt = getmetatable(ReadonlyEnv)
mt.__metatable = "No."
mt.__index = Enviorment

local ReadonlyMain = newproxy(true)
local mt2 = getmetatable(ReadonlyMain)
mt2.__metatable = "No."
mt2.__index = Loader

local API = {
	Apps = Apps;
	Enviorment = ReadonlyEnv;
	Components = Components;
	Main = ReadonlyMain;
}
module.Enabled = enabled;
local WrappedAPI = newproxy(true)
local mt3 = getmetatable(WrappedAPI)
mt3.__metatable = "No."
mt3.__index = API

module.API = WrappedAPI

return module

end;
};
G2L_MODULES[G2L["25"]] = {
Closure = function()
    local script = G2L["25"];local module = {}
local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Functions = require(script.Parent.Parent.Modules.Functions)
local info = require(script.Parent.Parent.UI.Info)
local Window = require(script.Parent.Parent.UI.Normal.Window)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local ContextMenu = require(script.Parent.Parent.UI.Normal.ContextMenu)
local IconMap = require(script.Parent.Parent.UI.Base.IconMap)
local SSI = require(script.Parent.Parent.UI.Normal.SSI)
module.ClassIcons = IconMap.newLinear("rbxasset://textures/ClassImages.png",16,16)
module.MiscIcons = Enviorment.MiscIcons
module.LargeIcons = Enviorment.LargeIcons
module.SaveInstance = SSI.new()
module.InitInsertObject = function(node_list)
	local context = ContextMenu.new()
	context.SearchEnabled = true
	context.MaxHeight = 400
	context:ApplyTheme({
		ContentColor = Enviorment.Settings.Theme.Main2,
		OutlineColor =  Enviorment.Settings.Theme.Outline1,
		DividerColor =  Enviorment.Settings.Theme.Outline1,
		TextColor =  Enviorment.Settings.Theme.Text,
		HighlightColor =  Enviorment.Settings.Theme.ButtonHover
	})
	context.Iconless = true
	local classes = {}
	for i,class in Enviorment.API.Classes do
		local tags = class.Tags
		if not tags.NotCreatable and not tags.Service then
			local rmdEntry = Enviorment.RMD.Classes[class.Name]
			classes[#classes+1] = {class,rmdEntry and rmdEntry.ClassCategory or "Uncategorized"}
		end
	end
	table.sort(classes,function(a,b)
		if a[2] ~= b[2] then
			return a[2] < b[2]
		else
			return a[1].Name < b[1].Name
		end
	end)

	local function onClick(className)
		for _, inst in node_list.selection.List do
			local node = node_list.GetNodeFromInstance(inst)
			local node_p = node_list.GetNodeFromInstance(inst.Parent)
			if node == nil and node_p then
				node_list.ExpandNode(node_p)
				node_list.Refresh()
			end
			task.wait()
			node_list.ExpandNode(node)
			local new_object = Instance.new(className,inst)
			task.wait()
			
			node_list.Refresh()
			task.wait(0.1)
			local node_s = node_list.GetNodeFromInstance(new_object)
			node_list.SelectNode(node_s,true,true)
			


		end
	end

	local lastCategory = ""
	for i = 1,#classes do
		local class = classes[i][1]
		local rmdEntry = Enviorment.RMD.Classes[class.Name]
		local iconInd = rmdEntry and tonumber(rmdEntry.ExplorerImageIndex) or 0
		local category = classes[i][2]

		if lastCategory ~= category then
			context:AddDivider(category)
			lastCategory = category
		end
		context:Add({Name = class.Name, IconMap = module.ClassIcons, Icon = iconInd, OnClick = onClick})
	end

	node_list.InsertObjectContext = context
end
module.InitCallFunction = function(Explorer)
	local context = Explorer.CallFunctionContext
	if context == nil then
		context = ContextMenu.new()
		context.Iconless = true
		context.SearchEnabled = true
		context.MaxHeight = 400
		context.Width = 325
		context:ApplyTheme({
			ContentColor = Enviorment.Settings.Theme.Main2,
			OutlineColor =  Enviorment.Settings.Theme.Outline1,
			DividerColor =  Enviorment.Settings.Theme.Outline1,
			TextColor =  Enviorment.Settings.Theme.Text,
			HighlightColor =  Enviorment.Settings.Theme.ButtonHover
		})
		Explorer.CallFunctionContext = context
	end

	local inst = Explorer.selection.List[1]
	local LFunctions = {}
	--print(Enviorment.API.Classes)
	-- Functions: {
	-- Class = ""
	-- Name = ""
	-- Parameters = {}
	-- ReturnType = "",
	-- Security = "",
	-- Tags = {}
	--}
	-- Parameter: {
	-- Name = ""
	-- Type = "" (C)
	--}
	if not Explorer.ArgumentPrompt then
		Explorer.ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new()
	end
	if not Explorer.FunctionResult then
		Explorer.FunctionResult = require(script.Parent.Parent.UI.Normal.FunctionResult).new()
	end
	for class,info in Enviorment.API.Classes do
		if inst:IsA(class) ~= true then continue end
		for _, fn in info.Functions do
			fn.Text = tostring(fn.ReturnType) .. " " .. fn.Name
			LFunctions[#LFunctions+1] = fn
		end
	end
	local function onClick(FunctionName)
		if inst == nil then return end
		local FunctionName = string.split(FunctionName," ")[2]
		local node = Explorer.GetNodeFromInstance(inst)
		local prompt = Explorer.ArgumentPrompt
		prompt:Show()
		task.spawn(function()
			prompt.Interaction:Connect(function(continued,...)
				if not continued then return end
				local success,err = pcall(inst[FunctionName],inst,...)
				Explorer.FunctionResult:Display({
					Success = success,
					Result = err
				})
				Explorer.FunctionResult:Show()
			end)
			prompt.Interaction:Wait()
			print("no yield")
		end)
	end
	if inst ~= nil then
		for i = 1,#LFunctions do
			local fn = LFunctions[i]
			context:Add({Name = fn.Text, OnClick = onClick})
		end
	end


	Explorer.CallFunctionContext = context
end

module.CreateTemplateOld = function()
	local info = require(script.Parent.Parent.UI.Info)
	-- StarterGui.dex.ScreenGui.Template
	local G2L = {}
	G2L["2"] = Instance.new("TextButton");
	G2L["2"]["TextSize"] = 14;
	G2L["2"]["AutoButtonColor"] = false;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["2"]["BackgroundTransparency"] = 1;
	G2L["2"]["Size"] = UDim2.new(0, 266, 0, 20);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["Text"] = [[]];
	G2L["2"]["Name"] = [[Template]];


	-- StarterGui.dex.ScreenGui.Template.Indent
	G2L["3"] = Instance.new("Frame", G2L["2"]);
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["BackgroundColor3"] = info.SelectionColor;
	G2L["3"]["Size"] = UDim2.new(1, -20, 1, 0);
	G2L["3"]["Position"] = UDim2.new(0, 20, 0, 0);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(87, 126, 189);
	G2L["3"]["Name"] = [[Indent]];
	G2L["3"]["BackgroundTransparency"] = 1;


	-- StarterGui.dex.ScreenGui.Template.Indent.EntryName
	G2L["4"] = Instance.new("TextLabel", G2L["3"]);
	G2L["4"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
	G2L["4"]["TextSize"] = 14;
	G2L["4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["4"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
	G2L["4"]["BackgroundTransparency"] = 1;
	G2L["4"]["Size"] = UDim2.new(1, -26, 1, 0);
	G2L["4"]["Text"] = [[Workspace]];
	G2L["4"]["Name"] = [[EntryName]];
	G2L["4"]["Position"] = UDim2.new(0, 26, 0, 0);


	-- StarterGui.dex.ScreenGui.Template.Indent.Expand
	G2L["5"] = Instance.new("TextButton", G2L["3"]);
	G2L["5"]["TextSize"] = 14;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["5"]["ClipsDescendants"] = true;
	G2L["5"]["Text"] = [[]];
	G2L["5"]["Name"] = [[Expand]];
	G2L["5"]["Position"] = UDim2.new(0, -22, 0, 0);



	-- StarterGui.dex.ScreenGui.Template.Indent.Expand.Icon_Retract
	G2L["6"] = Instance.new("ImageLabel", G2L["5"]);
	G2L["6"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["Image"] = [[rbxassetid://6511490623]];
	G2L["6"]["ImageRectSize"] = Vector2.new(16, 16);
	G2L["6"]["Size"] = UDim2.new(0, 16, 0, 16);
	G2L["6"]["Visible"] = false;
	G2L["6"]["BackgroundTransparency"] = 1;
	G2L["6"]["ImageRectOffset"] = Vector2.new(144, 16);
	G2L["6"]["Name"] = [[Icon_Retract]];
	G2L["6"]["Position"] = UDim2.new(0, 4, 0, 2);



	-- StarterGui.dex.ScreenGui.Template.Indent.Expand.Icon_Expand
	G2L["7"] = Instance.new("ImageLabel", G2L["5"]);
	G2L["7"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["7"]["Image"] = [[rbxassetid://6511490623]];
	G2L["7"]["ImageRectSize"] = Vector2.new(16, 16);
	G2L["7"]["Size"] = UDim2.new(0, 16, 0, 16);
	G2L["7"]["BackgroundTransparency"] = 1;
	G2L["7"]["ImageRectOffset"] = Vector2.new(176, 16);
	G2L["7"]["Name"] = [[Icon_Expand]];
	G2L["7"]["Position"] = UDim2.new(0, 4, 0, 2);



	-- StarterGui.dex.ScreenGui.Template.Indent.Hover
	G2L["8"] = Instance.new("Frame", G2L["3"]);
	G2L["8"]["ZIndex"] = -100;
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Name"] = [[Hover]];
	G2L["8"]["BackgroundTransparency"] = 1;


	-- StarterGui.dex.ScreenGui.Template.Indent.Selected
	G2L["9"] = Instance.new("Frame", G2L["3"]);
	G2L["9"]["ZIndex"] = -100;
	G2L["9"]["BorderSizePixel"] = 0;
	G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["9"]["Size"] = UDim2.new(1.25, 0, 1, 0);
	G2L["9"]["Position"] = UDim2.new(-0.1, 0, 0, 0);
	G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["Name"] = [[Selected]];
	G2L["9"]["BackgroundTransparency"] = 1;


	-- StarterGui.dex.ScreenGui.Template.Indent.RenameBoxO
	G2L["a"] = Instance.new("TextBox", G2L["3"]);
	G2L["a"]["Visible"] = false;
	G2L["a"]["Name"] = [[RenameBoxO]];
	G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["a"]["ZIndex"] = 4;
	G2L["a"]["TextSize"] = 14;
	G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
	G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["a"]["ClearTextOnFocus"] = false;
	G2L["a"]["Size"] = UDim2.new(0.5, 0, 1, 0);
	G2L["a"]["Position"] = UDim2.new(0, 26, 0, 0);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


	-- StarterGui.dex.ScreenGui.Template.Indent.Select
	G2L["b"] = Instance.new("TextButton", G2L["3"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["TextSize"] = 14;
	G2L["b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["b"]["ZIndex"] = 2;
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Text"] = [[]];
	G2L["b"]["Name"] = [[Select]];


	-- StarterGui.dex.ScreenGui.Template.Indent.IconFrame
	G2L["c"] = Instance.new("Frame", G2L["3"]);
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Size"] = UDim2.new(0, 16, 0, 16);
	G2L["c"]["Position"] = UDim2.new(0, 4, 0, 2);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Name"] = [[IconFrame]];
	G2L["c"]["BackgroundTransparency"] = 1;


	-- StarterGui.dex.ScreenGui.Template.Indent.IconFrame.Icon
	G2L["d"] = Instance.new("ImageLabel", G2L["c"]);
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["d"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
	G2L["d"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["BackgroundTransparency"] = 1;
	G2L["d"]["Name"] = [[Icon]];


	-- StarterGui.dex.ScreenGui.Template.Indent.RenameBox
	G2L["e"] = Instance.new("TextBox", G2L["3"]);
	G2L["e"]["Visible"] = false;
	G2L["e"]["Name"] = [[RenameBox]];
	G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["e"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
	G2L["e"]["ZIndex"] = 4;
	G2L["e"]["TextSize"] = 14;
	G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
	G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["e"]["BorderMode"] = Enum.BorderMode.Inset;
	G2L["e"]["ClearTextOnFocus"] = false;
	G2L["e"]["Size"] = UDim2.new(0, 184, 1, 0);
	G2L["e"]["Position"] = UDim2.new(0, 26, 0, 0);
	G2L["e"]["BorderColor3"] = Color3.fromRGB(17, 133, 255);
	G2L["e"]["Text"] = [[Workspace]];
	return G2L["2"]
end

module.CreateTemplate = function()
	local s = {}
	s["1"] = Instance.new("TextBox");
	s["1"]["Visible"] = false;
	s["1"]["Name"] = [[RenameBox]];
	s["1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	s["1"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
	s["1"]["ZIndex"] = 4;
	s["1"]["TextSize"] = 14;
	s["1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	s["1"]["BackgroundColor3"] = Enviorment.Settings.Theme.Main2;
	s["1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	s["1"]["BorderMode"] = Enum.BorderMode.Inset;
	s["1"]["ClearTextOnFocus"] = false;
	s["1"]["Size"] = UDim2.new(0, 184, 1, 0);
	s["1"]["Position"] = UDim2.new(0, 26, 0, 0);
	s["1"]["BorderColor3"] = Color3.fromRGB(17, 133, 255);
	s["1"]["Text"] = [[Workspace]];
	local n = create({
		{
			1,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0, 0, 0),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.new(0, 0, 0),
				Font = 3,
				Name = "Entry",
				Position = UDim2.new(0, 1, 0, 1),
				Size = UDim2.new(0, 250, 0, 20),
				Text = "",
				TextSize = 14,
			},
		},
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.ListSelection,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.ListSelectionOutline,
				BorderSizePixel = 0,
				Name = "Indent",
				Parent = { 1 },
				Position = UDim2.new(0, 20, 0, 0),
				Size = UDim2.new(1, -20, 1, 0),
			},
		},
		{
			3,
			"TextLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "EntryName",
				Parent = { 2 },
				Position = UDim2.new(0, 26, 0, 0),
				Size = UDim2.new(1, -26, 1, 0),
				Text = "Workspace",
				TextColor3 = Color3.new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			4,
			"TextButton",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Font = 3,
				Name = "Expand",
				Parent = { 2 },
				Position = UDim2.new(0, -20, 0, 0),
				Size = UDim2.new(0, 20, 0, 20),
				Text = "",
				TextSize = 14,
			},
		},
		{
			5,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5642383285",
				ImageRectOffset = Vector2.new(144, 16),
				ImageRectSize = Vector2.new(16, 16),
				Name = "Icon",
				Parent = { 4 },
				Position = UDim2.new(0, 2, 0, 2),
				ScaleType = 4,
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{
			6,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/ClassImages.png",
				ImageRectOffset = Vector2.new(304, 0),
				ImageRectSize = Vector2.new(16, 16),
				Name = "Icon",
				Parent = { 2 },
				Position = UDim2.new(0, 4, 0, 2),
				ScaleType = 4,
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
	})
	s["1"].Parent = n.Indent
	return n
	 
end
module.ExpandHighlight = function(exp)
	--exp.MouseLeave:Connect(function()
	exp.MouseEnter:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(176,16) then --  Icon_Expand
			print("a")
			exp.Icon.ImageRectOffset =  Vector2.new(160,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(144,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(128,16)
		end
	end)
	exp.MouseLeave:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(160,16) then --  Icon_Expand 
			exp.Icon.ImageRectOffset = Vector2.new(176,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(128,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(144,16)
		end
	end)
end

-- Node:
-- Highlighted: boolean
-- CanExpand:   boolean
-- Text:        string
-- Instance:    userdata
-- Renaming:    boolean
-- Selected:    boolean
-- Icon:        string
-- RemoveOnSight: boolean
-- Indent:      number
-- IndentIncrement: number
module.CreateNode = function(Explorer,index)
	local new = module.CreateTemplate()
	local Box_Focused = false
	local Update = nil
	local OldValue = nil
	local TempConnections = {}
	
	module.ExpandHighlight(new.Indent.Expand)
	Update = function()
		new.Position = UDim2.new(0,0,0,(index - 1) * 20)
		local node = Explorer.GetAtIndex(index)

		
		if node == nil then
			new.Visible = false
			return
		end
		--warn(node.Instance,TempConnections)
		
		new.Visible = true
		
		
		if node.Text then
			new.Indent.EntryName.Text = node.Text
		elseif node.Instance then
			new.Indent.EntryName.Text = node.Instance.Name
		end
		if node.Indent then
			local indent = node.Indent
			local indent2 = Explorer.GetIndentIncrement(node) 
			if indent2 ~= 0 then
				indent = indent + indent2
			end
			new.Indent.Position = UDim2.new(0,(info.Explorer_IndentSeparation * indent) - Explorer.XOffset,0,0) -- 18
			new:SetAttribute("XOffset",(info.Explorer_IndentSeparation * indent))
		elseif node.Instance then
			local indent = #Functions.GetAncestors(node.Instance)
			local i2 =  Explorer.GetIndentIncrement(node)
			if i ~= 0 then
				indent = indent + i2
			end
			new.Indent.Position = UDim2.new(0,(info.Explorer_IndentSeparation * indent) - Explorer.XOffset ,0,0)
			new:SetAttribute("XOffset",(info.Explorer_IndentSeparation * indent))
		else
			-- TODO
		end
		
		
		--if node.Highlighted then
		--	new.BackgroundColor3 = Enviorment.Settings.Theme.Highlight
		--	new.BackgroundTransparency = node.Selected ~= true and 0 or 1
		--else
		--	new.BackgroundColor3 = Enviorment.Settings.Theme.Highlight
		--	new.BackgroundTransparency = 1
		--end
		new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.ListSelection
		if node.CanExpand then
			new.Indent.Expand.Visible = node.CanExpand
		elseif Explorer.Searching == true and node.Instance ~= nil then
			local FoundOne = false
			for _,node2 in node.Subnodes do
				if node2 == nil then continue end
				if node2.Instance == nil then continue end
				if Explorer.SearcherNodes[node2.Instance] ~= true then continue end
				FoundOne = true
				break
			end
			new.Indent.Expand.Visible = FoundOne
		elseif node.Instance ~= nil then
			new.Indent.Expand.Visible = #node.Instance:GetChildren() > 0 and true or false
		else
			new.Indent.Expand.Visible = false
		end
		if node.Selected then
			new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.ListSelection
			new.Indent.BackgroundTransparency = 0
		elseif Enviorment.CheckMouseInGui(new.Indent) then
			new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.Button
			new.Indent.BackgroundTransparency = 0
		else
			new.Indent.BackgroundTransparency = 1
		end
		
		if node.Expanded ~= nil then
			new.Indent.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16)  or Vector2.new(144,16)
			--new.Indent.Expand.Icon_Expand.Visible = not node.Expanded
			--new.Indent.Expand.Icon_Retract.Visible = node.Expanded
		end
		
		if node.Renaming == true then
			local box : TextBox = new.Indent.RenameBox
			box.Visible = true
			if node.NotYet then
				box.Text = "___DEFAULT___"
				node.NotYet = false
			end
			if box.Text == "___DEFAULT___" then
				box.Text = node.Text ~= nil and node.Text or (node.Instance ~= nil and node.Instance.Name or "???")
			end
			
			if Box_Focused == false then
				Box_Focused = true
				box:CaptureFocus()
			end

			box.FocusLost:Once(function(p)
				if p then
					if node.Instance then
						pcall(function()
							node.Instance.Name = box.Text
						end)
					elseif node.OnRename then
						task.spawn(node.OnRename,(box.Text))
					else
						-- TODO
					end
				end
				task.wait()
				node.Renaming = false
				box.Visible = false
				box.Text = "___DEFAULT___"
				Box_Focused = false
				Update()
			end)

		else
			--local box : TextBox = new.Indent.RenameBox
			--box.Visible = false
		end
		if node.Icon then
			new.Indent.Icon.ImageRectOffset = Vector2.new(0,0)
			new.Indent.Icon.ImageRectSize = Vector2.new(0,0)
			new.Indent.Icon.Image = node.Icon
			--new.Indent.Icon.Size = UDim2.new(,0,1,0)
			--new.Indent.Icon.Position = UDim2.new(0,0,0,0)
		elseif node.Instance then
			new.Indent.Icon.ImageRectOffset = Vector2.new(0,0) --IconFrame
			new.Indent.Icon.ImageRectSize = Vector2.new(0,0)
			new.Indent.Icon.Image = Functions.GetIcon(node.Instance.ClassName)
			--new.Indent.Icon.Size = UDim2.new(1,0,1,0)
			--new.Indent.Icon.Position = UDim2.new(0,0,0,0)
		end
		if OldValue ~= node.Instance then
			if node == nil then
				for _, v in TempConnections do v:Disconnect() end;return
			end
			if node.Instance == nil then
				for _, v in TempConnections do v:Disconnect() end;return
			end
			for _, v in TempConnections do v:Disconnect() end;
			--task.wait(1)
			TempConnections["ChildAdded"] = node.Instance.ChildAdded:Connect(function()
				--warn("fired1")
				if node.Expanded then 
					Explorer.ExpandNode(node,true)
					--Explorer.Refresh() 
				end
				if Explorer.Searching and Enviorment.Settings.Explorer.AutoUpdateSearch then
					Explorer.StartSearch(Explorer.SearchText)
				end
			end)
			local debounce = false
			TempConnections["Destroying"] = node.Instance.AncestryChanged:Connect(function()
				node.RemoveOnSight = true
				Update()
				Explorer.GetAtIndex(index)
				Explorer.Refresh(true)
			end)
			TempConnections["Destroying2"] = node.Instance.Changed:Connect(function(p)
				if p ~= "Parent" then return end
				node.RemoveOnSight = true
				Update()
				Explorer.GetAtIndex(index)
				Explorer.Refresh(true)
			end)
			OldValue = node.Instance
		end
		
	end
	new.Indent.Expand.Activated:Connect(function()
		local node = Explorer.GetAtIndex(index)
		if node == nil then
			return
		end
		node.Expanded = not node.Expanded
		Update()
		if node.Expanded == true then
			Explorer.ExpandNode(node,true)
		else
			Explorer.CollapseNode(node,false)
		end
		
	end)
	new.MouseButton1Down:Connect(function() --. Select
		local node = Explorer.GetAtIndex(index)
		if node == nil then return end
		node.Selected = node.Selected ~= nil and node.Selected or false
		Explorer.SelectNode(node,not node.Selected,true)
	end)
	new.MouseButton2Down:Connect(function() --. Select
		if new.Visible == true then
			Explorer.ShowContextMenu()
		end
	end)
	new.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end
		local node = Explorer.GetAtIndex(index)
		if node == nil then
			return
		end
		if node.Selected then
			return
		end
		new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.Button
		new.Indent.BorderSizePixel = 0
		new.Indent.BackgroundTransparency = 0
	end)

	new.InputEnded:Connect(function(input)
		local node = Explorer.GetAtIndex(index)
		if node == nil then
			return
		end
		if node.Selected then
			return
		end
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		new.Indent.BackgroundTransparency = 1
	end)
	new.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local releaseEvent, mouseEvent

			local mouse = Enviorment.Mouse
			local startX = mouse.X
			local startY = mouse.Y

			local listOffsetX = startX - Explorer.NodeContainer.AbsolutePosition.X
			local listOffsetY = startY - Explorer.NodeContainer.AbsolutePosition.Y

			releaseEvent = game:GetService("UserInputService").InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
				end
			end)

			mouseEvent = game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local deltaX = mouse.X - startX
					local deltaY = mouse.Y - startY
					local dist = math.sqrt(deltaX ^ 2 + deltaY ^ 2)

					if dist > 5 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						Explorer.StartDrag(listOffsetX, listOffsetY)
					end
				end
			end)
		end
	end)
	new.Indent.Expand.MouseEnter:Connect(function()
		--new.Indent.Expand.Icon_Expand.ImageRectOffset = Vector2.new(160,16)
		--new.Indent.Expand.Icon_Retract.ImageRectOffset = Vector2.new(128,16)
	end)
	new.Indent.Expand.MouseLeave:Connect(function()
		--new.Indent.Expand.Icon_Expand.ImageRectOffset = Vector2.new(176,16)
		--new.Indent.Expand.Icon_Retract.ImageRectOffset = Vector2.new(144,16)
	end)
	Update()

	Explorer.RegisterCallback(Update)
	return new
end

module.NewExplorer = function()
	local Explorer;
	Explorer = {
		Window = Window.new(),
		YOffset = 0,
		XOffset = 0,
		Nodes = {},
		_selected = {},
		Callbacks = {},
		Queue = {},
		SearchThreads = {},
		NilInstancesFolder = Instance.new("Folder"),
		--ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new(),
		--FunctionResult = require(script.Parent.Parent.UI.Normal.FunctionResult).new(),
		AddToQueue = function(f)
			Explorer.Queue[#Explorer.Queue+1] = f
		end,
		
		selection = {List = {}},
		clipboard = {},
		Selected = {},
		GuiElems = {},
		SearcherNodes = setmetatable({},{__mode = "k"}),
		Searching = false,
		
		SearchText = "",
		Dragging = false,
		GetInstances = function()
			local inst = game:GetDescendants() 
			if Enviorment.Functions.getnilinstances then
				for _,v in Enviorment.Functions.getnilinstances() do
					inst[#inst+1] = v
				end
			end
			return inst
		end,
		StartDrag = function(offX, offY)
			if Explorer.Dragging then
				return
			end
			Explorer.Dragging = true

			local dragTree = Explorer.NodeContainer:Clone()
			dragTree:ClearAllChildren()
			local sel = Explorer.selection.List[1]
			if sel == nil then
				Explorer.Dragging = false
				return
			end
			local node = Explorer.GetNodeFromInstance(sel)
			if node == nil then
				Explorer.Dragging = false
				return
			end

			local newGui = Instance.new("ScreenGui")
			newGui.DisplayOrder = Enviorment.DisplayOrders.Menu
			dragTree.Parent = newGui
			Enviorment.ShowGui(newGui)
			local dragOutline = Enviorment.create({
				{
					1,
					"Frame",
					{
						BackgroundColor3 = Color3.new(1, 1, 1),
						BackgroundTransparency = 1,
						Name = "DragSelect",
						Size = UDim2.new(1, 0, 1, 0),
					},
				},
				{
					2,
					"Frame",
					{
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderSizePixel = 0,
						Name = "Line",
						Parent = { 1 },
						Size = UDim2.new(1, 0, 0, 1),
						ZIndex = 2,
					},
				},
				{
					3,
					"Frame",
					{
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderSizePixel = 0,
						Name = "Line",
						Parent = { 1 },
						Position = UDim2.new(0, 0, 1, -1),
						Size = UDim2.new(1, 0, 0, 1),
						ZIndex = 2,
					},
				},
				{
					4,
					"Frame",
					{
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderSizePixel = 0,
						Name = "Line",
						Parent = { 1 },
						Size = UDim2.new(0, 1, 1, 0),
						ZIndex = 2,
					},
				},
				{
					5,
					"Frame",
					{
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderSizePixel = 0,
						Name = "Line",
						Parent = { 1 },
						Position = UDim2.new(1, -1, 0, 0),
						Size = UDim2.new(0, 1, 1, 0),
						ZIndex = 2,
					},
				},
			})
			dragOutline.Parent = Explorer.NodeContainer

			local mouse = Enviorment.Mouse
			local function move()
				local posX = mouse.X - offX
				local posY = mouse.Y - offY
				dragTree.Position = UDim2.new(0, posX, 0, posY)
				local children = Explorer.NodeContainer:GetChildren()
				for i, v in children do
					if v == dragOutline or v:FindFirstChild("Indent") == nil then
						table.remove(children,i)
					end
				end
				for _,entry in children do
					if Enviorment.CheckMouseInGui(entry) and entry ~= dragOutline then
						dragOutline.Position = entry.Position
						print(dragOutline.Position,entry.Position,entry.Indent.EntryName.Text)
						dragOutline.Size = UDim2.new(0, entry.Size.X.Offset - entry.Indent.Position.X.Offset, 0, 20)
						dragOutline.Visible = true
						return
					end
				end
				dragOutline.Visible = false
			end
			move()

			local input = Enviorment.UIS
			local mouseEvent, releaseEvent

			mouseEvent = input.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					move()
				end
			end)

			releaseEvent = input.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
					newGui:Destroy()
					dragOutline:Destroy()
					Explorer.Dragging = false
					local children = Explorer.NodeContainer:GetChildren()
					for i, v in children do
						if v == dragOutline or v:FindFirstChild("Indent") == nil then
							table.remove(children,i)
						end
					end
					for i, entry in children do
						if Enviorment.CheckMouseInGui(entry) then
							local node = Explorer.GetAtIndex(i)
							warn(node)
							if node then
								if node.Selected then
									return
								end
								Explorer.selection.List[1].Parent = node.Instance
								Explorer.ViewObject(Explorer.selection.List[1])
							end
							break
						end
					end
				end
			end)
		end,
		StartSearch = function(text)
			for _, v : thread in Explorer.SearchThreads do
				pcall(function()
					task.cancel(v)
				end)
				
			end
			Explorer.Window:SetTitle("Explorer - Searching")
			Explorer.SearchText = text
			Explorer.Searching = true
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			
			
			for _, inst in Explorer.GetInstances() do
				if not string.find(string.lower(inst.Name),string.lower(text)) then
					continue
				end
				Explorer.SearcherNodes[inst] = true
			end
			for inst,_ in Explorer.SearcherNodes do
				for _, v in Functions.GetAncestors(inst) do
					Explorer.SearcherNodes[v] = true
				end
			end
			--print(Explorer.SearcherNodes)
			Explorer.SearchThreads[#Explorer.SearchThreads+1] = task.spawn(function()
				for _, node2 in Explorer.Nodes do
					Explorer.ExpandAll(node2)
					task.wait()
				end
				Explorer.Refresh()
				Explorer.Window:SetTitle("Explorer")
			end)
			--Explorer.Window:SetTitle("Explorer")
			
		end,
		StopSearch = function()
			for _, v : thread in Explorer.SearchThreads do
				pcall(function()
					task.cancel(v)
				end)

			end
			Explorer.SearchText = ""
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			for _, node2 in Explorer.Nodes do
				if node2 == nil then continue end
				node2.Subnodes = {}
				node2.Expanded = false
			end
			Explorer.Searching = false
			Explorer.Refresh()
			Explorer.Window:SetTitle("Explorer")
			
		end,
		CheckForInstance = function(node,inst)
			if node == nil then return end
			if node.Instance == inst then return true end
			for _,node2 in node.Subnodes do
				if Explorer.CheckForInstance(node2,inst) == true then return true end
			end
			
			return false
			
		end,
		CheckForConflicts = function()
			if Explorer.Searching then
				return
			end
			local OnNode; OnNode =  function(node,pnode)
				local function CheckChildren()
					for _,node2 in node.Subnodes do
						OnNode(node2,node)
					end
				end
				if node == nil then return end
				if node.Instance == nil then return end
				if pnode == nil then
					return CheckChildren()
				end
				if pnode.Instance == nil then return  end
				if pnode.Expanded then
					if #pnode.Subnodes ~= #pnode.Instance:GetChildren() then
						--Explorer.CollapseNode(pnode)
						--task.wait()
						Explorer.ExpandNode(pnode)
					end
				end
				if pnode == node then
					return
				end
				
				if node.Expanded then
					if #node.Subnodes ~= #node.Instance:GetChildren() then
						--Explorer.CollapseNode(pnode)
						--task.wait()
						Explorer.ExpandNode(node)

					end
				end
				
				if node.Instance.Parent ~= pnode.Instance and pnode.Instance ~= Explorer.NilInstancesFolder and node.Instance ~= Explorer.NilInstancesFolder then
					--print(node.Instance," is not child of ",pnode.Instance, ' instead',node.Instance.Parent)
					--warn("REMOVING",node.Instance)
					node.RemoveOnSight = true
					Explorer.GetAtIndex(Explorer.GetNodeIndex(node))
					if pnode.Expanded then
						--Explorer.CollapseNode(pnode)
						--task.wait()
						Explorer.ExpandNode(pnode)
						Explorer.Refresh()
					end
				else
					CheckChildren()
				end
			end
			for _,node in Explorer.Nodes do
				OnNode(node,nil)
			end
		end,
		GetIndentIncrement = function(node)
			local x = 0
			local OnNode;OnNode = function(node2)
				if node2.IndentIncrement then
					x = x + node2.IndentIncrement
				end
				if node2.Parent then
					OnNode(node2.Parent)
				end
			end
			OnNode(node)
			return x
		end,
		ExpandNode = function(node,Instant,NoRefresh)
			if node == nil then return end
			
			if node.Instance then
				local IsNil = table.find(Enviorment.Functions.getnilinstances(),node.Instance)
				for _, inst2 in node.Instance:GetChildren() do
					
					local n = {
						Instance = inst2,
						Parent = node,
						IndentIncrement = IsNil == true and (node.IndentIncrement ~= nil and node.IndentIncrement or 1) + 1 or 0,
						Renaming = false,
						Expanded = false,
						Selected = false,
						CanExpand = nil,
						Highlighted = false,
						Subnodes = {}
					}
					--task.spawn(function()
					local f = function()
						if Explorer.CheckForInstance(node,inst2) then return end
						node.Subnodes[#node.Subnodes+1] = n
					end
					if Instant then
						task.spawn(f)
					else
						Explorer.AddToQueue(f)
					end
					
						
					--end)
					
				end
				
			end
			node.Expanded = true
			if NoRefresh then return node end
			Explorer.Refresh(true)
			return node
		end,
		ExpandAll = function(node)
			if node == nil then return end
			local OnNode;OnNode = function(node2)
				if node2 == nil then 
					return 
				end
				if node2.Instance then
					if #node2.Instance:GetChildren() == 0 then
						return
					end
				end
				Explorer.ExpandNode(node2,false,true)
				task.wait()
				for _,node3 in node2.Subnodes do
					OnNode(node3)
				end
			end
			OnNode(node)
			Explorer.Refresh()
		end,
		CollapseNode = function(node,clean)
			if node == nil then return end
			if clean then
				node.Subnodes = {}
			end
			node.Expanded = false
			Explorer.Refresh(true)
		end,
		CollapseAll = function(node)
			return Explorer.CollapseNode(node,true)
		end,
		SelectNode = function(node,state,apply)
			if Explorer.RunOnSelect and state == true then
				task.spawn(Explorer.RunOnSelect,node)
				Explorer.RunOnSelect = nil
				return
			end
			if node == nil then
				for _,node2 in Explorer.GetNodes_Raw() do
					if node2 == nil then continue end
					node2.Selected = false
				end
				return
			end
			if state == false then
				if apply then
					for _,node2 in Explorer.GetNodes_Raw() do
						if node2 == nil then continue end
						node2.Selected = false
					end
				end
				node.Selected = false
				Explorer.Refresh()
				return
			end
			
			local ToSelect = {}
			if apply then
				if Enviorment.UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
					local firstSelected = node
					local nodes = Explorer.GetNodes_Raw()
					for _,node2 in nodes do 
						if node2 == nil then continue end; 
						if node2.Selected then firstSelected = node2; 
							break
						end 
					end
					for _,node2 in nodes do
						if node2 == nil then continue end
						node2.Selected = false
					end
					
					local firstIndex = Explorer.GetNodeIndex(firstSelected)
					local secondIndex = Explorer.GetNodeIndex(node)
					
					for i=firstIndex,secondIndex do
						local node2 = nodes[i]
						if node2 == nil then continue end
						node2.Selected = true
					end
					for i=secondIndex,firstIndex do
						local node2 = nodes[i]
						if node2 == nil then continue end
						node2.Selected = true
					end
					firstSelected.Selected = true
					node.Selected = true
					
				elseif Enviorment.UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
					node.Selected = true
					
					
				else
					for _,node2 in Explorer.GetNodes_Raw() do
						if node2 == nil then continue end
						node2.Selected = false
					end

					node.Selected = true
				end
			else
				for _,node2 in Explorer.GetNodes_Raw() do
					node2.Selected = false
				end
				node.Selected = true
			end
			
			Explorer.Refresh()
		end,
		RegisterCallback = function(f)
			Explorer.Callbacks[#Explorer.Callbacks+1] = f
		end,
		Refresh = function(fast)
			task.spawn(function()
			
				for _, f in Explorer.Callbacks do if f ~= nil then if fast then task.spawn(f) else f() end end end
			end)
			
			Explorer.selection.List = Explorer.GetSelectedObjects()
			Explorer.Selected = Explorer.selection.List
			local match = true
			for i, v in Explorer.Selected do
				if Explorer._selected[i] ~= v then
					match = false
				end
			end
			if match == false then
				Enviorment.AppSignal:Fire("Properties",Explorer.Selected)
				Explorer._selected = Explorer.Selected
			end
			if Explorer.NilNode then
				Explorer.NilNode.CanExpand = #Explorer.NilNode.Subnodes >= 1 and true or false
				for _, why in Explorer.NilInstancesFolder:GetChildren() do why.Parent = nil end
			end
		end,
		GetAtIndex_Raw = function(index)
			local c = 0
			local r_node = nil
			local function OnNode(node)
				if node == nil then return end
				--if pnode ~= nilt then node.Parent = pnode end
				c += 1
				if c == index then
					r_node = node
				end
				if node.Subnodes then
					for _, node2 in node.Subnodes do
						OnNode(node2)
					end
				end
			end
			for _,node2 in Explorer.Nodes do
				OnNode(node2)
			end
			return r_node
		end,
		GetAtIndex = function(index)
			if index == nil then
				return nil
			end
			local index = index + Explorer.YOffset
			local c = 0
			local r_node = nil
			local function OnNode(node)
				if node == nil then return end
				if node.RemoveOnSight then
					return
				end
				if Explorer.Searching == true and node.Instance ~= nil then
					if Explorer.SearcherNodes[node.Instance] ~= true then
						return
					end
				end
				--if pnode ~= nilt then node.Parent = pnode end
				c += 1
				if c == index then
					r_node = node
				end
				if node.Expanded ~= true then return end
				if node.Subnodes then
					for w, node2 in node.Subnodes do
						if node2 == nil then continue end
						if node2.RemoveOnSight then
							node.Subnodes[w] = nil
							warn("Removed on sight")
							continue
						end
						OnNode(node2)
					end
				end
			end
			for _,node2 in Explorer.Nodes do
				OnNode(node2)
			end
			return r_node
		end,
		GetNodesInRange = function(a,b)
			local a = a or 1
			local b = b or math.huge
			local c = 0
			local nodes = {}
			local function OnNode(node)
				if node == nil then return end
				if node.RemoveOnSight then
					return
				end
				--if pnode ~= nilt then node.Parent = pnode end
				c += 1
				if c >= a and c <= b then
					nodes[#nodes+1] = node
				end
				if node.Expanded ~= true then return end
				if node.Subnodes then
					for w, node2 in node.Subnodes do
						if node2 == nil then continue end
						if node2.RemoveOnSight then
							node.Subnodes[w] = nil
							warn("Removed on sight")
							continue
						end
						OnNode(node2)
					end
				end
			end
			for _,node2 in Explorer.Nodes do
				OnNode(node2)
			end
			return nodes
		end,
		GetNodes = function()
			return Explorer.GetNodesInRange(1,Explorer.GetMaxIndex())
		end,
		GetNodes_Raw = function()
			local nodes = {}
			local OnNode;OnNode = function(node)
				if node == nil then return end
				if node.RemoveOnSight then return end
				nodes[#nodes+1] = node
				if node.Subnodes ~= nil then
					for _,node2 in node.Subnodes do OnNode(node2) end
				end
			end
			for _,node in Explorer.Nodes do
				OnNode(node)
			end
			return nodes
		end,
		GetNodeIndex = function(node)
			if node == nil then return 1 end
			return table.find(Explorer.GetNodes(),node)
		end,
		GetMaxNode = function()
			local n = Explorer.GetNodesInRange()
			return n[#n]
		end,
		GetMaxIndex = function()
			local n = Explorer.GetNodesInRange()
			return #n
		end,
		GetLenght = function()
			local x = 0
			local function OnNode(node)
				if node == nil then return end
				x += 1
				if node.Expanded and node.Subnodes then
					for _, v in node.Subnodes do OnNode(v) end
				end
			end
			for _, v in Explorer.Nodes do OnNode(v) end
			return x
		end,
		GetNodeFromInstance = function(obj)
			for _,node in Explorer.GetNodes() do
				if node.Instance == obj then return node end
			end
			return nil
		end,
		GetSelection = function()
			local nodes = {}
			for _,node in Explorer.GetNodes() do if node == nil then continue end;if node.Selected then nodes[#nodes+1] = node end; end
			return nodes
		end,
		GetSelectedObjects = function()
			local inst = {}
			for _,node in Explorer.GetSelection() do
				inst[#inst+1] = node.Instance
			end
			return inst
		end,
		SetRenaming = function(node,state)
			if node == nil then return end
			node.Renaming = state ~= nil and state or true
			node.NotYet = true
			Explorer.Refresh()
		end,
		ShowContextMenu = function()
			local context = Explorer.ContextMenu
			context:Clear()

			local sList = Explorer.selection.List
			local emptyClipboard = #Explorer.clipboard == 0
			local presentClasses = {}
			--local apiClasses = API.Classes

			--for i = 1, #sList do
			--	local node = sList[i]
			--	local class = node.Class
			--	if not class then
			--		class = node.Obj.ClassName
			--		node.Class = class
			--	end

			--	local curClass = apiClasses[class]
			--	while curClass and not presentClasses[curClass.Name] do
			--		presentClasses[curClass.Name] = true
			--		curClass = curClass.Superclass
			--	end
			--end
			
			context:AddRegistered("CUT",Explorer.NilNode.Selected == true)
			context:AddRegistered("COPY",Explorer.NilNode.Selected == true)
			context:AddRegistered("PASTE", emptyClipboard or Explorer.NilNode.Selected == true)
			context:AddRegistered("DUPLICATE",Explorer.NilNode.Selected == true)
			context:AddRegistered("DELETE",Explorer.NilNode.Selected == true)
			context:AddRegistered("RENAME", #sList ~= 1 or Explorer.NilNode.Selected == true)

			context:AddDivider()
			context:AddRegistered("GROUP",Explorer.NilNode.Selected == true)
			context:AddRegistered("UNGROUP",Explorer.NilNode.Selected == true)
			context:AddRegistered("SELECT_CHILDREN")
			context:AddRegistered("SELECT_DESCENDANTS")
			context:AddRegistered("JUMP_TO_PARENT",Explorer.NilNode.Selected == true)
			context:AddRegistered("EXPAND_ALL")
			context:AddRegistered("COLLAPSE_ALL")

			context:AddDivider()
			--if expanded == Explorer.SearchExpanded then
			--	context:AddRegistered("CLEAR_SEARCH_AND_JUMP_TO")
			--end
			if Explorer.Searching then
				context:AddRegistered("CLEAR_SEARCH_AND_JUMP_TO")
			end
			if Enviorment.setclipboard then
				context:AddRegistered("COPY_PATH")
			end
			context:AddRegistered("INSERT_OBJECT")
			context:AddRegistered("SAVE_INST")
			context:AddRegistered("CALL_FUNCTION",Explorer.NilNode.Selected == true)
			context:AddRegistered("VIEW_CONNECTIONS",Explorer.NilNode.Selected == true)
			context:AddRegistered("GET_REFERENCES")
			context:AddRegistered("VIEW_API")

			context:QueueDivider()

			if #sList == 1 then
				if Explorer.selection.List[1]:IsA("BasePart") or Explorer.selection.List[1]:IsA("Model") then
					context:AddRegistered("TELEPORT_TO")
					context:AddRegistered("VIEW_OBJECT")
				end
			else
				local found = false
				for _, obj in Explorer.selection.List do
					if obj:IsA("BasePart") or obj:IsA("Model") then
						found = true
						break
					end
				end
				if found then
					context:AddRegistered("TELEPORT_TO",true)
					context:AddRegistered("VIEW_OBJECT",true)
				end
				
			end

			if #sList == 1 then
				if Explorer.selection.List[1]:IsA("Player") then
					context:AddRegistered("SELECT_CHARACTER")
				end
				if Explorer.selection.List[1]:IsA("LuaSourceContainer") then
					context:AddRegistered("VIEW_SCRIPT")
				end
			else
				local found = false
				for _, obj in Explorer.selection.List do
					if obj:IsA("Player") then
						found = true
						break
					end
				end
				if found then
					context:AddRegistered("SELECT_CHARACTER",true)
				end

			end

			

			--if sMap[nilNode] then
			--	context:AddRegistered("REFRESH_NIL")
			--	context:AddRegistered("HIDE_NIL")
			--end1
			context:Show()
		end,
		ViewObject = function(inst)
			if Explorer.IsObjectVisible(inst) then
				--return
			end
			local ancestors = Functions.GetAncestors(inst)
			ancestors = Functions.ReverseTable(ancestors)
			for _, inst2 in ancestors do
				local node2 = Explorer.GetNodeFromInstance(inst2)
				if node2 then
					Explorer.ExpandNode(node2)
				end
				task.wait(0.1)
			end
			task.wait(0.1)
			local node = Explorer.GetNodeFromInstance(inst)
			if node then
				local old = Explorer.GetNodes()
				node.Selected = true
				for _,node2 in old do
					if node2 == node then
						continue
					end
				end
				node.Selected = true
				local index = Explorer.GetNodeIndex(node)
				Explorer.ScrollY.Index = index - 2
				Explorer.ScrollY:Update()
			end
			for _, v in Explorer.GetNodes() do
				if v == nil then
					continue
				end
				
				if v == node then
					continue
				end
				v.Selected = false
			end
			Explorer.Refresh()
		end,
		IsNodeVisible = function(node)
			if node == nil then return false end
			local index = Explorer.GetNodeIndex(node)
			if index == nil then return false end
			return index >= Explorer.ScrollY.Index and index <= Explorer.ScrollY.Index + Explorer.ScrollY.VisibleSpace
		end,
		IsObjectVisible = function(obj : Instance)
			local node = Explorer.GetNodeFromInstance(obj)
			if node == nil then return false end
			return Explorer.IsNodeVisible(node)
		end,
	}
	Explorer.NodeContainer = Explorer.Window.GuiElems.Content:Clone()
	Explorer.NodeContainer.BackgroundTransparency = 1
	Explorer.NodeContainer.Name = "NodeContainer"
	Explorer.NodeContainer.Parent = Explorer.Window.GuiElems.Content
	Explorer.NodeContainer.ZIndex = -1
	Explorer.NodeContainer.Size = UDim2.new(1,-16,1,-33)
	Explorer.NodeContainer.Position = UDim2.new(0,0,0,23)
	--Instance.new("UIListLayout",Explorer.NodeContainer)
	local explorerItems = create({
		{ 1, "Folder", { Name = "ExplorerItems" } },
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.20392157137394, 0.20392157137394, 0.20392157137394),
				BorderSizePixel = 0,
				Name = "ToolBar",
				Parent = { 1 },
				Size = UDim2.new(1, 0, 0, 22),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.14901961386204, 0.14901961386204, 0.14901961386204),
				BorderColor3 = Color3.new(0.1176470592618, 0.1176470592618, 0.1176470592618),
				BorderSizePixel = 0,
				Name = "SearchFrame",
				Parent = { 2 },
				Position = UDim2.new(0, 3, 0, 1),
				Size = UDim2.new(1, -6, 0, 18),
			},
		},
		{
			4,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				Font = 3,
				Name = "SearchBox",
				Parent = { 3 },
				PlaceholderColor3 = Color3.new(0.39215689897537, 0.39215689897537, 0.39215689897537),
				PlaceholderText = "Filter workspace (Ctrl+Shift+X)",
				Position = UDim2.new(0, 4, 0, 0),
				Size = UDim2.new(1, -24, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{ 5, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 3 } } },
		{
			6,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Reset",
				Parent = { 3 },
				Position = UDim2.new(1, -17, 0, 1),
				Size = UDim2.new(0, 16, 0, 16),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
		{
			7,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5034718129",
				ImageColor3 = Color3.new(0.39215686917305, 0.39215686917305, 0.39215686917305),
				Parent = { 6 },
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{
			8,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Color3.new(0.12549020349979, 0.12549020349979, 0.12549020349979),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Refresh",
				Parent = { 2 },
				Position = UDim2.new(1, -20, 0, 1),
				Size = UDim2.new(0, 18, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				Visible = false,
			},
		},
		{
			9,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5642310344",
				Parent = { 8 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 12, 0, 12),
			},
		},
		{
			10,
			"Frame",
			{
				BackgroundColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
				BorderSizePixel = 0,
				Name = "ScrollCorner",
				Parent = { 1 },
				Position = UDim2.new(1, -16, 1, -16),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = false,
			},
		},
		{
			11,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Name = "List",
				Parent = { 1 },
				Position = UDim2.new(0, 0, 0, 23),
				Size = UDim2.new(1, 0, 1, -23),
			},
		},
	})
	Explorer.Window:SetTitle("Explorer")
	Explorer.Window.GuiElems.Line.Position = UDim2.new(0, 0, 0, 22)
	local toolBar = explorerItems.ToolBar
	local treeFrame = explorerItems.List
	local SearchBox : TextBox = toolBar.SearchFrame.SearchBox
	Explorer.GuiElems.ToolBar = toolBar
	Explorer.GuiElems.TreeFrame = treeFrame
	toolBar.Parent = Explorer.Window.GuiElems.Content
	treeFrame.Parent = Explorer.Window.GuiElems.Content
	explorerItems.ScrollCorner.Parent = Explorer.Window.GuiElems.Content
	
	Explorer.NilInstancesFolder.Name = table.pack(Enviorment.Functions.getnilinstances())[2] == true and "Nil Instances" or "Nil Instances [Not Supported]"
	
	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SearchBox.Text == "" then
			Explorer.StopSearch()
		end
		
	end)
	SearchBox.FocusLost:Connect(function(pressed : boolean)
		if pressed then
			Explorer.StopSearch()
			task.wait()
			Explorer.StartSearch(SearchBox.Text)
		end
	end)
	
	local function AddTopObject(obj)
		local node = {
			Instance = obj,
			Expanded = false,
			Renaming = false,
			CanExpand = nil,
			Subnodes = {},
			Highlighted = false,
			Selected = false,
			Icon = nil,
			Text = nil,
		}
		Explorer.Nodes[#Explorer.Nodes+1] = node
		return node
	end
	local function IndexNodes()
		for i=1,50 do
			local new = module.CreateNode(Explorer,i)
			new.Parent = Explorer.NodeContainer
		end
		Explorer.Refresh()
	end
	for _, v in game:GetChildren() do AddTopObject(v) end
	
	
	IndexNodes()
	Explorer.NilNode = AddTopObject(Explorer.NilInstancesFolder)
	-- Nil Handling
	task.spawn(function()
		
		repeat task.wait(0.1) until Explorer.GetNodeFromInstance(Explorer.NilInstancesFolder) ~= nil
		Explorer.NilNode.IndentIncrement = 1
		local function AddNilInstance(obj)
			local node = {
				IndentIncrement = 2,
				Instance = obj,
				Expanded = false,
				Renaming = false,
				CanExpand = nil,
				Subnodes = {},
				Highlighted = false,
				Selected = false,
				Icon = nil,
				Text = nil,
			}
			if Explorer.CheckForInstance(Explorer.NilNode,obj) then
				return
			end
			Explorer.NilNode.Subnodes[#Explorer.NilNode.Subnodes+1] = node
		end
		for _,obj in Enviorment.Functions.getnilinstances() do
			AddNilInstance(obj)
		end
		task.spawn(function()
			while task.wait() do
				if not table.find(Explorer.Nodes,Explorer.NilNode) then
					Explorer.Nodes[#Explorer.Nodes+1] = Explorer.NilNode
				end
			end
		end)
		
	end)
	
	--- ScrollBar
	--workspace:SetAttribute("YOffset",0)
	local explorerScroll = ScrollBar.new()
	local explorerScrollH = ScrollBar.new(true)
	
	Explorer.ScrollY = explorerScroll
	Explorer.ScrollH = explorerScrollH
	explorerScroll.Gui.Parent = Explorer.Window.GuiElems.Content
	explorerScroll:Texture({
		ThumbColor = Enviorment.Settings.Theme.Button,
		ThumbSelectColor = Enviorment.Settings.Theme.Highlight,
		ArrowColor = Color3.new(1,1,1),
		FrameColor = Enviorment.Settings.Theme.ButtonPress,
		ButtonColor = Enviorment.Settings.Theme.Highlight
	})
	explorerScroll:SetScrollFrame(Explorer.Window.GuiElems.Content,3)
	explorerScrollH.Gui.Visible = false
	explorerScrollH.Gui.Parent = Explorer.Window.GuiElems.Content
	explorerScrollH:Texture({
		ThumbColor = Enviorment.Settings.Theme.Button,
		ThumbSelectColor = Enviorment.Settings.Theme.Highlight,
		ArrowColor = Color3.new(1,1,1),
		FrameColor = Enviorment.Settings.Theme.ButtonPress,
		ButtonColor = Enviorment.Settings.Theme.Highlight
	})
	explorerScroll.Gui.Position = UDim2.new(0,0,0,20)
	task.spawn(function()
		task.wait(1)
		local OldSize = explorerScroll.Gui.Size
		explorerScroll.Gui.Size = UDim2.new(0,16,1,-20)
		explorerScroll.Gui.Position = UDim2.new(1,-16,0,20)
	end)
	--explorerScrollH.Increment = info.Explorer_IndentSeparation
	explorerScrollH.Gui.Position = UDim2.new(0,0,1,-16)
	explorerScrollH.Gui.Size = UDim2.new(1,-16,0,16)
	task.spawn(function()
		while task.wait(5) do
			explorerScroll.TotalSpace = Explorer.GetLenght()
		end
	end)
	task.spawn(function()
		local old = 0
		local old2 = 0
		while task.wait() do

			--NodeWidth = node_list.NodeWidth
			local highest = 0
			for i, v in Explorer.NodeContainer:GetChildren() do
				if v:IsA("UIListLayout") then continue end
				if v.Visible == false  then
					continue
				end
				if v.Name == "Line" then continue end
				if v:FindFirstChild("Indent") == nil then continue end
				--print(Functions.GetTextWidth(v.Indent.EntryName.Text))
				if highest < Functions.GetTextWidth(v.Indent.EntryName.Text) + (v:GetAttribute("XOffset") or 0) then
					highest = Functions.GetTextWidth(v.Indent.EntryName.Text) + (v:GetAttribute("XOffset") or 0)
				end

			end

			local NodeWidth = highest
			 --* info.Explorer_IndentSeparation
			if explorerScroll.Index ~= old then
				Explorer.YOffset = explorerScroll.Index
				old = explorerScroll.Index
				explorerScroll.TotalSpace = Explorer.GetLenght()
				Explorer.Refresh(true)
			end
			if explorerScrollH.Index ~= old2 then
				Explorer.XOffset = explorerScrollH.Index
				old2 = explorerScrollH.Index
				explorerScroll.TotalSpace = Explorer.GetLenght()
				Explorer.Refresh(true)
			end

			local guiX = Explorer.NodeContainer.AbsoluteSize.X-16
			explorerScrollH.VisibleSpace = guiX
			explorerScrollH.TotalSpace = NodeWidth+10
			if NodeWidth > guiX then
				explorerScrollH.Gui.Visible = true
				--explorerScroll.Gui.Size = UDim2.new(0,16,1,-16)
				--self.DisplayFrame.Size = UDim2.new(1,-16,1,-16)
			else
				explorerScrollH.Gui.Visible = false
				--explorerScroll.Gui.Size = UDim2.new(0,16,1,0)
				--self.DisplayFrame.Size = UDim2.new(1,-16,1,0)
			end

			explorerScrollH:Update()		
			explorerScroll:Update()
			if explorerScrollH.Index > 0 then
				Explorer.XOffset = explorerScrollH.Index + 16
			else
				Explorer.XOffset = 0
			end




		end
	end)
	local function MakeQueueThread()
		task.spawn(function()
			while task.wait() do
				for i,f in Explorer.Queue do
					if f == nil then continue end
					f()
					table.remove(Explorer.Queue,i)
				end
			end
			MakeQueueThread()
		end)
	end
	MakeQueueThread()
	task.spawn(function()
		while task.wait(1) do
			if Explorer.Searching then
				continue
			end
			Explorer.Refresh();Explorer.CheckForConflicts() 
		end
	end)
	local context = require(script.Parent.Parent.UI.Normal.ContextMenu)
	module.InitInsertObject(Explorer)
	local clipboard = Explorer.clipboard
	context = context.new()
	context.Iconless = true
	Explorer.ContextMenu = context
	Explorer.Context = context
	local ContextFunctions = {
		Cut = function()
			table.clear(Explorer.clipboard)
			for _, inst in Explorer.selection.List do
				pcall(function()
					Explorer.clipboard[#Explorer.clipboard+1] = inst:Clone()
				end)

				pcall(function()
					inst:Destroy()
				end)

			end
		end,
		Copy = function()
			table.clear(Explorer.clipboard)
			for _, inst in Explorer.selection.List do
				pcall(function()
					Explorer.clipboard[#Explorer.clipboard+1] = inst:Clone()
				end)
			end
		end,
		Paste = function()

			for _,inst in Explorer.clipboard do
				inst.Parent = Explorer.selection.List[1]
			end
			--n--ode_list.ViewObject(Explorer.selection.List[1])
		end,
		
		Duplicate = function()
			for _, inst in Explorer.selection.List do
				pcall(function() inst:Clone().Parent = inst.Parent end)
			end
		end,
		Delete = function()
			for _, inst in Explorer.selection.List do
				pcall(game.Destroy,inst)
			end
		end,
		
		Rename = function()
			Explorer.SetRenaming(Explorer.GetNodeFromInstance(Explorer.selection.List[1]))
		end,
		Group = function()
			local sList = Explorer.selection.List
			if #sList == 0 then
				return
			end

			local model = Instance.new("Model", sList[#sList].Parent)
			for i = 1, #sList do
				pcall(function()
					sList[i].Parent = model
				end)
			end
			Explorer.Refresh()
			task.spawn(function()
				repeat task.wait(0.1) until Explorer.GetNodeFromInstance(model) ~= nil
				Explorer.SelectNode(Explorer.GetNodeFromInstance(model),true,true)
			end)
		end,
		Ungroup = function()
			local newSelection = {}
			for _,inst in Explorer.selection.List do
				for _, v in inst:GetChildren() do
					newSelection[#newSelection+1] = v
					v.Parent = inst.Parent
				end
				inst:Destroy()
			end
			Explorer.Refresh()
			task.wait(0.1)
			for _,node in Explorer.GetNodes() do if node == nil then continue end;node.Selected = false; end
			task.wait(0.1)
			for _, inst in newSelection do
				Explorer.SelectNode(Explorer.GetNodeFromInstance(inst),true,false)
			end
		end,
		Select_Children = function()
			local newSelection = {}
			local oldSelection = {}
			for _, inst in Explorer.selection.List do
				local node = Explorer.GetNodeFromInstance(inst)
				if node == nil then
					continue
				end

				local firstIndex = Explorer.GetNodeIndex(node)
				local secondNode = node
				local secondIndex = 0
				for _,node2 in Explorer.GetNodes() do
					if node2 == nil then continue end
					if node2.Instance == nil then continue end
					if node2 == node then continue end
					if node2.Instance.Parent == inst then
						if secondIndex < Explorer.GetNodeIndex(node2) then
							secondNode = node2
							secondIndex = Explorer.GetNodeIndex(node2)
						end
					end
				end
				for i=firstIndex,secondIndex do
					local node2 = Explorer.GetAtIndex(i)
					newSelection[#newSelection+1] = node2
				end
				for i=secondIndex,firstIndex do
					local node2 = Explorer.GetAtIndex(i)
					newSelection[#newSelection+1] = node2
				end
				oldSelection[#oldSelection+1] = node
			end
			for _,node in newSelection do
				node.Selected = true
			end
			for _,node in oldSelection do
				node.Selected = false
			end
			Explorer.Refresh()
		end,
		Select_Descendants = function()
			for _, inst in Explorer.selection.List do
				local node = Explorer.GetNodeFromInstance(inst)
				if node == nil then
					continue
				end
				node.Selected = false
				local firstIndex = Explorer.GetNodeIndex(node)
				local secondNode = node
				local secondIndex = 0
				for _,node2 in Explorer.GetNodes() do
					if node2 == nil then continue end
					if node2.Instance == nil then continue end
					if node2.Instance:IsDescendantOf(inst) then
						if secondIndex < Explorer.GetNodeIndex(node2) then
							secondNode = node2
							secondIndex = Explorer.GetNodeIndex(node2)
						end
					end
				end
				for i=firstIndex,secondIndex do
					local node2 = Explorer.GetAtIndex(i)
					if node2 then
						node2.Selected = true
					end
				end
				for i=secondIndex,firstIndex do
					local node2 = Explorer.GetAtIndex(i)
					if node2 then
						node2.Selected = true
					end
				end
			end
			Explorer.Refresh()
		end,
		Jump_To_Parent = function()
			local newSelection = {}
			local oldSelection = {}
			for _,inst in Explorer.selection.List do
				local node = Explorer.GetNodeFromInstance(inst)
				local node2 = Explorer.GetNodeFromInstance(inst.Parent)
				if node2 == nil then continue end
				newSelection[#newSelection+1] = node2
				oldSelection[#oldSelection+1] = node
			end
			for _,node in newSelection do
				node.Selected = true
			end
			for _,node in oldSelection do
				node.Selected = false
			end
		end,
		TeleportTo = function()
			pcall(function()
				Enviorment.LocalPlayer.Character.PrimaryPart:PivotTo(Explorer.selection.List[1]:GetPivot())
			end)
		end,	
		ExpandAll = function()
			for _, inst in Explorer.selection.List do
				local node = Explorer.GetNodeFromInstance(inst)
				Explorer.ExpandAll(node)
			end
			Explorer.Refresh()
		end,	
		CollapseAll = function()
			for _, inst in Explorer.selection.List do
				Explorer.CollapseAll(Explorer.GetNodeFromInstance(inst))
			end
		end,	
		Clear_Search_And_Jump_To = function()
			local inst = Explorer.selection.List[1]
			SearchBox.Text = "";
			task.wait(0.1)
			Explorer.ViewObject(inst)
		end,
		CopyPath = function()
			local path = ""
			if #Explorer.selection.List > 1 then
				path = path .. "{"
			end
			for i, inst in Explorer.selection.List do
				path = path .. Functions.GetInstancePath(inst)
				if #Explorer.selection.List > 1 and i ~= #Explorer.selection.List then
					path = path .. ", "
				elseif #Explorer.selection.List > 1 and i == #Explorer.selection.List then
					path = path .. "}"
				end
			end
			Enviorment.Functions.setclipboard(path)
		end,
		InsertObject = function()
			local mouse = Enviorment.LocalPlayer:GetMouse()
			local x = module.LastX or mouse.X
			local y = module.LastY or mouse.Y
			Explorer.InsertObjectContext:Show(x, y)
		end,
		CallFunction = function()
			module.InitCallFunction(Explorer)
			local mouse = Enviorment.LocalPlayer:GetMouse()
			Explorer.CallFunctionContext:Show(module.LastX or mouse.X,module.LastY or mouse.Y)
		end,
		SaveToFile = function()
			local passed = false
			module.SaveInstance:Show()
			module.SaveInstance:SetText(game.Name .. "rbxl")

			module.SaveInstance.OnSave:Connect(function(text)
				if passed then return end
				passed = true
				Enviorment.Functions.saveinstance({
					SafeMode = false,
					SaveBytecode = true,
					ExtraInstances = table.clone(Explorer.selection.List),
					mode = "invalid",
					__DEBUG_MODE = true,
					FileName = text,
					FilePath = text,
				})

			end)
			module.SaveInstance.OnCancel:Connect(function()
				if passed then return end
				passed = true
			end)
		end,	
		ViewObject = function()
			local sList = selection.List

			for i = 1, #sList do
				local node = sList[i]

				if node.Obj:IsA("BasePart") or node.Obj:IsA("Model") then
					ObjectViewer.ViewObject(node.Obj)
				end
			end
		end,	
		ViewScript = function()
			Enviorment.AppSignal:Fire("ScriptViewer",Explorer.selection.List[1])
		end,	
		SelectCharacter = function()
			for _,plr : Player in Explorer.selection.List do
				local node = Explorer.GetNodeFromInstance(plr)
				if plr.Character == nil then continue end
				for _, parent in Functions.ReverseTable(Functions.GetAncestors(plr.Character)) do
					local node2 = Explorer.GetNodeFromInstance(parent)
					if node2 then
						Explorer.ExpandNode(node2)
					end
					task.wait(0.1)
					Explorer.Refresh()
				end
				task.wait(0.1)
				Explorer.Refresh()
				local node2 = Explorer.GetNodeFromInstance(plr.Character)
				if node2 then
					node2.Selected = true
				end

				node.Selected = false
			end
		end,	
	}
	
	local uis : UserSettings = Enviorment.UIS
	uis.InputBegan:Connect(function(input, gameProcessed)
		if Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.Z then ContextFunctions.Cut() end
		if Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.C then ContextFunctions.Copy() end
		if Enviorment.IsCtrlDown() and Enviorment.IsShiftDown() and input.KeyCode == Enum.KeyCode.V then ContextFunctions.Paste() end
		if Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.D then ContextFunctions.Duplicate() end
		if input.KeyCode == Enum.KeyCode.Delete then ContextFunctions.Delete() end
		if input.KeyCode == Enum.KeyCode.F2 then ContextFunctions.Rename() end
		if Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.G then ContextFunctions.Group() end
		if Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.U then ContextFunctions.Ungroup() end
		if Enviorment.IsShiftDown() and Enviorment.IsCtrlDown() and input.KeyCode == Enum.KeyCode.X then SearchBox:CaptureFocus() end
	end)
	
	context:Register("CUT", {
		Name = "Cut",
		IconMap = module.MiscIcons,
		Icon = "Cut",
		DisabledIcon = "Cut_Disabled",
		Shortcut = "Ctrl+Z",
		OnClick = function()
			ContextFunctions.Cut()
		end,
	})

	context:Register("COPY", {
		Name = "Copy",
		IconMap = module.MiscIcons,
		Icon = "Copy",
		DisabledIcon = "Copy_Disabled",
		Shortcut = "Ctrl+C",
		OnClick = function()
			ContextFunctions.Copy()
		end,
	})

	context:Register("PASTE", {
		Name = "Paste Into",
		IconMap = module.MiscIcons,
		Icon = "Paste",
		DisabledIcon = "Paste_Disabled",
		Shortcut = "Ctrl+Shift+V",
		OnClick = function()
			ContextFunctions.Paste()
		end,
	})

	context:Register("DUPLICATE", {
		Name = "Duplicate",
		IconMap = module.MiscIcons,
		Icon = "Copy",
		DisabledIcon = "Copy_Disabled",
		Shortcut = "Ctrl+D",
		OnClick = function()
			ContextFunctions.Duplicate()
		end,
	})

	context:Register("DELETE", {
		Name = "Delete",
		IconMap = module.MiscIcons,
		Icon = "Delete",
		DisabledIcon = "Delete_Disabled",
		Shortcut = "Del",
		OnClick = function()
			ContextFunctions.Delete()
		end,
	})

	context:Register("RENAME", {
		Name = "Rename",
		IconMap = module.MiscIcons,
		Icon = "Rename",
		DisabledIcon = "Rename_Disabled",
		Shortcut = "F2",
		OnClick = function()
			ContextFunctions.Rename()
			
		end,
	})

	context:Register("GROUP", {
		Name = "Group",
		IconMap = module.MiscIcons,
		Icon = "Group",
		DisabledIcon = "Group_Disabled",
		Shortcut = "Ctrl+G",
		OnClick = function()
			ContextFunctions.Group()

		end,
	})

	context:Register("UNGROUP", {
		Name = "Ungroup",
		IconMap = module.MiscIcons,
		Icon = "Ungroup",
		DisabledIcon = "Ungroup_Disabled",
		Shortcut = "Ctrl+U",
		OnClick = function()
			ContextFunctions.Ungroup()

		end,
	})

	context:Register("SELECT_CHILDREN", {
		Name = "Select Children",
		IconMap = module.MiscIcons,
		Icon = "SelectChildren",
		DisabledIcon = "SelectChildren_Disabled",
		OnClick = function()
			--for _,node in Explorer.GetNodes() do if node == nil then continue end;node.Selected = false end
			ContextFunctions.Select_Children()
		end,
	})
	context:Register("SELECT_DESCENDANTS", {
		Name = "Select Descendants",
		IconMap = module.MiscIcons,
		Icon = "SelectChildren",
		DisabledIcon = "SelectChildren_Disabled",
		OnClick = function()
			ContextFunctions.Select_Descendants()
		end,
	})
	context:Register("JUMP_TO_PARENT", {
		Name = "Jump to Parent",
		IconMap = module.MiscIcons,
		Icon = "JumpToParent",
		OnClick = function()
			ContextFunctions.Jump_To_Parent()
		end,
	})

	context:Register("TELEPORT_TO", {
		Name = "Teleport To",
		IconMap = module.MiscIcons,
		Icon = "TeleportTo",
		OnClick = function()
			ContextFunctions.TeleportTo()
		end,
	})

	context:Register("EXPAND_ALL", {
		Name = "Expand All",
		OnClick = function()
			ContextFunctions.ExpandAll()
		end,
	})

	context:Register("COLLAPSE_ALL", {
		Name = "Collapse All",
		OnClick = function()
			ContextFunctions.CollapseAll()
		end,
	})

	context:Register("CLEAR_SEARCH_AND_JUMP_TO", {
		Name = "Clear Search and Jump to",
		OnClick = function()
			ContextFunctions.Clear_Search_And_Jump_To()
		end,
	})

	context:Register("COPY_PATH", {
		Name = "Copy Path",
		OnClick = function()
			ContextMenu.CopyPath()
		end,
	})

	context:Register("INSERT_OBJECT", {
		Name = "Insert Object",
		IconMap = module.MiscIcons,
		Icon = "InsertObject",
		OnClick = function()
			ContextFunctions.InsertObject()
		end,
	})

	context:Register(
		"CALL_FUNCTION",
		{ Name = "Call Function", IconMap = module.ClassIcons, Icon = 66, OnClick = 
			function() 
				ContextFunctions.CallFunction()
			end }
	)

	context:Register(
		"GET_REFERENCES",
		{ Name = "Get Lua References", IconMap = module.ClassIcons, Icon = 34, OnClick = function() end }
	)

	context:Register(
		"SAVE_INST",
		{ Name = "Save to File", IconMap = module.MiscIcons, Icon = "Save", OnClick = 
			function()
				ContextFunctions.SaveToFile()
			end }
	)

	context:Register("VIEW_CONNECTIONS", { Name = "View Connections", OnClick = function() end })

	context:Register(
		"VIEW_API",
		{ Name = "View API Page", IconMap = module.MiscIcons, Icon = "Reference", OnClick = function() end }
	)

	context:Register("VIEW_OBJECT", {
		Name = "View Object",
		IconMap = module.ClassIcons,
		Icon = 5,
		OnClick = function()
			ContextFunctions.ViewObject()
		end,
	})

	context:Register("VIEW_SCRIPT", {
		Name = "View Script",
		IconMap = module.MiscIcons,
		Icon = "ViewScript",
		OnClick = function()
			ContextFunctions.ViewScript()
		end,
	})

	--context:Register("VIEW_SCRIPT", {
	--	Name = "View Object",
	--	IconMap = module.MiscIcons,
	--	Icon = "ViewScript",
	--	OnClick = function()
	--		local scr = selection.List[1] and selection.List[1].Obj
	--		if scr then
	--			ObjectViewer.ViewObject(scr)
	--		end
	--	end,
	--})

	context:Register("SELECT_CHARACTER", {
		Name = "Select Character",
		IconMap = module.ClassIcons,
		Icon = 9,
		OnClick = function()
			ContextFunctions.SelectCharacter()
			--Explorer.ViewObject()
			
		end,
	})

	context:Register("REFRESH_NIL", {
		Name = "Refresh Nil Instances",
		OnClick = function()
			Explorer.RefreshNilInstances()
		end,
	})

	context:Register("HIDE_NIL", {
		Name = "Hide Nil Instances",
		OnClick = function()
			Explorer.HideNilInstances()
		end,
	})
	Enviorment.AppSignal:Connect(function(app,...)
		if app ~= script.Name then
			return
		end
		local args = {...}
		if args[1] == "NewIndex" then
			Explorer[args[2]] = args[3]
		end
	end)
	return Explorer
end
module.Init = module.NewExplorer
Enviorment.AppSignal:Connect(function(app,command,index,callback)
	if app == "Explorer" then
		if command == "index" then
			callback(module[index])
		end
	end
end)
Enviorment.UIS.InputBegan:Connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		module.LastX = Enviorment.LocalPlayer:GetMouse().X
		module.LastY = Enviorment.LocalPlayer:GetMouse().Y
	end
end)

return module

end;
};
G2L_MODULES[G2L["26"]] = {
Closure = function()
    local script = G2L["26"];local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local SSI = require(script.Parent.Parent.UI.Normal.SSI)
local SaveInstanceWindow = SSI.new()
local module = {}

module.CloseButton = Enviorment.CloseButton
module.NewTab = function()
	local new;
	local elems = {}
	elems["Frame"] = Instance.new("Frame")
	elems["Frame"].Size = UDim2.new(0,56,0,18)
	elems["Frame"].BackgroundColor3 = Enviorment.Settings.Theme.Outline1
	elems["Frame"].BorderSizePixel = 0
	elems["TextButton"] = Instance.new("TextButton")
	elems["TextButton"].BackgroundTransparency = 1
	elems["TextButton"].Position = UDim2.new(0, 0, 0, 0)
	elems["TextButton"].Size = UDim2.new(1,-16, 1,0)
	elems["TextButton"].TextColor3 = Enviorment.Settings.Theme.Text
	elems["TextButton"].Parent = elems["Frame"]
	elems["TextButton"].FontFace = Font.fromName("SourceSansPro")
	elems["TextButton"].TextSize = 14
	elems["TextButton"].TextXAlignment = Enum.TextXAlignment.Left
	elems["CloseButton"] = module.CloseButton()
	elems["CloseButton"].Parent = elems["Frame"]
	elems["CloseButton"].AnchorPoint = Vector2.new(0,0.5)
	elems["CloseButton"].Position = UDim2.new(1,-18,0.5,0)
	elems["CloseButton"].MouseEnter:Connect(function()
		elems["CloseButton"].BackgroundTransparency = 0
	end)
	elems["CloseButton"].MouseLeave:Connect(function()
		elems["CloseButton"].BackgroundTransparency = 1
	end)
	local function Update()
		elems["TextButton"].Text = new.Text
		elems["Frame"].Size = UDim2.new(0,Enviorment.GetTextSize(new.Text).X + 30,0,18)
	end
	new = setmetatable({
		Text = "",
		GuiElems = elems,
		Gui = elems["Frame"],
		Update = Update,
	},{__newindex = function(s,k,v)
		rawset(s,k,v)
		print("changed __newindex",s,k,v)
		Update()
		return nil
	end,})
	Update()
	return new
end



module.NewScriptViewer = function()
	local window, currentFrame
	local Tabs, Scripts = {}, {}
	local new = {}
	local window = require(script.Parent.Parent.UI.Normal.Window).new()
	window:SetTitle("Script Viewer")
	window:Resize(500, 400)
	new.Window = window
	new.Frame = require(script.Parent.Parent.UI.Normal.CodeFrame).new()
	new.Frame.Frame.Position = UDim2.new(0, 0, 0, 20)
	new.Frame.Frame.Size = UDim2.new(1, 0, 1, -40)
	new.Frame.Frame.Parent = window.GuiElems.Content
	new.Frame.Gui.Visible = true
	--ScriptViewer.Window = window
	local copyButton = Instance.new("TextButton", window.GuiElems.Content)
	copyButton.BackgroundTransparency = 1
	copyButton.Position = UDim2.new(0.0, 0, 1, -20)
	copyButton.Size = UDim2.new(0.5, 0, 0, 20)
	copyButton.Text = "Copy To Clipboard"
	copyButton.TextColor3 = Color3.new(1, 1, 1)
	copyButton.BorderSizePixel = 0
	copyButton.BackgroundTransparency = 1
	copyButton.MouseButton1Click:Connect(function()
		for _, tab in Tabs do
			if tab.Selected ~= true then continue end	
		
			pcall(Enviorment.Functions.setclipboard, tab.Source)
			return
		end
	end)

	local saveButton = Instance.new("TextButton", window.GuiElems.Content)
	saveButton.BackgroundTransparency = 1
	saveButton.Size = UDim2.new(0.5, 0, 0, 20)
	saveButton.Position = UDim2.new(0.5, 0, 1, -20)
	saveButton.Text = "Save To File"
	saveButton.TextColor3 = Color3.new(1, 1, 1)
	saveButton.MouseButton1Click:Connect(function()
		-- TODO use SSI
		--pcall(Enviorment.Functions.writefile, "Place_" .. game.PlaceId .. "_Script_" .. os.time() .. ".lua", currentFrame:GetText())
		SaveInstanceWindow:Show()
	end)
	SaveInstanceWindow.OnSave:Connect(function(path)
		for _, tab in Tabs do
			if tab.Selected ~= true then continue end
			Enviorment.Functions.writefile(path,tab.Source)
			return
		end
		
	end)
	local selectionLine = Instance.new("Frame")
	selectionLine.Size = UDim2.new(0,10,0,1)
	selectionLine.BackgroundColor3 = Color3.new(1, 1, 1)
	selectionLine.BorderSizePixel = 0
	selectionLine.Position = UDim2.new(0,0,0,18)
	selectionLine.Name = "SLine"
	selectionLine.Parent = new.Window.GuiElems.Content
	selectionLine.ZIndex = 2
	local function addNewTab(Script: LocalScript | ModuleScript)
		local newTab = module.NewTab()
		
		newTab.Text = Script.Name
		newTab.Gui.Parent = window.GuiElems.Content
		local old = newTab.Update
		local first = true
		local idx = #Tabs+1
		local Hook = function()
			old()
			local xoffset = 3
			for i, tab in Tabs do
				if tab == nil then continue end
				if tab.Gui == nil then continue end
				if tab.Gui.Parent == nil then continue end
				local idx = table.find(Tabs,newTab) or idx
				if i >= idx then continue end
				print("b offset",xoffset)
				xoffset = xoffset + tab.Gui.Size.X.Offset + 3
				print("new offset",xoffset)
			end
			if true then
				first = false
				newTab.Gui.Position = UDim2.new(0,xoffset,0,1)
			--else
				--Enviorment.TweenS:Create(new.Gui,TweenInfo.new(0.25),{Position = UDim2.new(0,xoffset,0,1)}):Play()
			end
			
		end
		for _, tab in Tabs do
			tab.Selected = false
		end
		newTab.Script = Script
		newTab.Modifiable = false
		newTab.Selected = true
		newTab.Source = Enviorment.Functions.decompile(Script)
		newTab.Update = Hook
		newTab.Hook = Hook
		Hook()
		new.Frame:SetText(newTab.Source)
		
		local x = newTab.Gui.Position.X.Offset + newTab.Gui.Size.X.Offset
		print(x,new.Window.GuiElems.Content.AbsoluteSize.X)
		if x > new.Window.GuiElems.Content.AbsoluteSize.X then
			
			idx = #Tabs
			if Tabs[idx] then
				Tabs[idx].Gui:Destroy()
			end
			Hook()
		end
		
		Tabs[idx] = newTab
		newTab.Gui.Close.Activated:Connect(function()
			table.remove(Tabs,idx)
			newTab.Gui:Destroy()
			newTab.Gui = nil
			newTab = nil
			for _, v in Tabs do
				if v.Gui == nil then
					continue
				end
				v.Update()
				v.Hook()
			end
			if Tabs[idx] then
				Tabs[idx].Selected = true
			end
			
		end)
		newTab.GuiElems.TextButton.Activated:Connect(function()
			for _, tab in Tabs do
				tab.Selected = false
			end
			newTab.Selected = true
		end)
		
		
		
	end
	new.ViewScript = function(Script: LocalScript | ModuleScript)
		task.spawn(function() window:Show() end)
		local f = nil
		for _, tab in Tabs do
			if tab.Script == Script then f = tab end
		end
		if not f then
			addNewTab(Script)
		else
			for _, Tab in Tabs do Tab.Selected = false end
			f.Selected = true
		end
	end
	task.spawn(function()
		while task.wait() do
			local no_more = false
			for idx,Tab in Tabs do
				if no_more then continue end
				if Tab.Gui == nil then
					local no_more = true
					continue
				end
				if Tab.Selected == true then
					Enviorment.TweenS:Create(selectionLine,TweenInfo.new(0.25,Enum.EasingStyle.Linear),{Position = UDim2.new(0,Tab.Gui.Position.X.Offset,0,18)}):Play()
					selectionLine.Size = UDim2.new(0,Tab.Gui.Size.X.Offset,0,1)
				end
				if Tab.Selected == true and new.Frame:GetText() ~= Tab.Source then
					if Tab.Modifiable == false then
						new.Frame:SetText(Tab.Source)
					else
						Tab.Source = new.Frame:GetText()
					end
				end
			end
		end
	end)
	return new
end
module.Init = function()
	local new = module.NewScriptViewer()
	Enviorment.AppSignal:Connect(function(app,...)
		if app ~= script.Name then
			return
		end
		new.ViewScript(...)
	end)
	return new
end
return module
end;
};
G2L_MODULES[G2L["27"]] = {
Closure = function()
    local script = G2L["27"];local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Label = require(script.Parent.Parent.UI.Base.Label)
local Button = require(script.Parent.Parent.UI.Base.Button)
local ViewportTextBox = require(script.Parent.Parent.UI.Base.ViewportTextBox)
local Checkbox = require(script.Parent.Parent.UI.Base.Checkbox)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local DropDown = require(script.Parent.Parent.UI.Normal.DropDown)
local ContextMenu = require(script.Parent.Parent.UI.Normal.ContextMenu)
local Signal = require(script.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Modules.Functions)
local ColorPicker = require(script.Parent.Parent.UI.Normal.ColorPicker)
local ColorSequenceEditor = require(script.Parent.Parent.UI.Normal.ColorSequenceEditor)
local module = {}
local create__ = create
local function create(...): GuiBase
	return create__(...)
end
module.ExpandHighlight = function(exp)
	--exp.MouseLeave:Connect(function()
	--	exp.Icon.ImageRectOffset = Vector2.new(176,16) --  Icon_Expand
	--	exp.Icon.ImageRectOffset = Vector2.new(144,16) -- Icon_Retract
	--end)
	--exp.MouseEnter:Connect(function()
	--	exp.Icon.ImageRectOffset = Vector2.new(160,16) -- Icon_Expand
	--	exp.Icon.ImageRectOffset = Vector2.new(128,16) -- Icon_Retract
	--end)
	exp.MouseEnter:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(176,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset =  Vector2.new(160,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(144,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(128,16)
		end
	end)
	exp.MouseLeave:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(160,16) then --  Icon_Expand 
			exp.Icon.ImageRectOffset = Vector2.new(176,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(128,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(144,16)
		end
	end)
end
module.NewEntryTemplate = function()
	local f = create({
		{1,"TextButton",{
			AutoButtonColor = false,
			BackgroundColor3 = Enviorment.Settings.Theme.Main2,
			BorderColor3 = Enviorment.Settings.Theme.Outline1,
			Font=3,
			Name="Entry",
			Position=UDim2.new(0,1,0,1),
			Size=UDim2.new(0,250,0,22),
			Text=""
			,TextSize=14,}},
		{2,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.ListSelection,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),
			BorderSizePixel=0,
			Name="NameFrame",
			Parent={1},
			Position=UDim2.new(0,20,0,0),
			Size=UDim2.new(1,-40,1,0),}},
		{3,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="PropName",
			Parent={2},
			Position=UDim2.new(0,2,0,0),
			Size=UDim2.new(1,-2,1,0),
			Text="Anchored",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			TextTruncate=1,
			TextXAlignment=0,}},
		{4,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			ClipsDescendants=true,Font=3,
			Name="Expand",
			Parent={2},
			Position=UDim2.new(0,-20,0,1)
			,Size=UDim2.new(0,20,0,20),
			Text="",
			TextSize=14,
			Visible=false,}},
		{5,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5642383285",ImageRectOffset=Vector2.new(144,16),
			ImageRectSize=Vector2.new(16,16),
			Name="Icon",
			Parent={4},
			Position=UDim2.new(0,2,0,2),
			ScaleType=4,
			Size=UDim2.new(0,16,0,16),}},
		{6,"TextButton",{BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=4
			,Name="ToggleAttributes",
			Parent={2},
			Position=UDim2.new(1,-85,0,0),
			Size=UDim2.new(0,85,0,22),
			Text="[SETTING: OFF]",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			Visible=false,}},
		{7,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.ListSelection,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.33725491166115,0.49019607901573,0.73725491762161),
			BorderSizePixel=0,
			Name="ValueFrame",
			Parent={1},
			Position=UDim2.new(1,-100,0,0),
			Size=UDim2.new(0,80,1,0),}},
		{8,"Frame",{
			BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14117647707462),
			BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),
			BorderSizePixel=0,
			Name="Line",
			Parent={7},
			Position=UDim2.new(0,-1,0,0),
			Size=UDim2.new(0,1,1,0),}},
		{9,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="ColorButton",
			Parent={7},
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{10,"Frame",{
			BackgroundColor3=Color3.new(1,1,1),
			BorderColor3=Color3.new(0,0,0),
			Name="ColorPreview",
			Parent={9},
			Position=UDim2.new(0,5,0,6),
			Size=UDim2.new(0,10,0,10),}},
		{11,"UIGradient",{
			Parent={10},}},
		{12,"Frame",{
			BackgroundTransparency=1,
			Name="EnumArrow",
			Parent={7},
			Position=UDim2.new(1,-16,0,3),
			Size=UDim2.new(0,16,0,16),
			Visible=false,}},
		{13,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,8,0,9),
			Size=UDim2.new(0,1,0,1),}},
		{14,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,7,0,8),
			Size=UDim2.new(0,3,0,1),}},
		{15,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,6,0,7),
			Size=UDim2.new(0,5,0,1),}},
		{16,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="ValueBox",
			Parent={7},
			Position=UDim2.new(0,4,0,0),
			Size=UDim2.new(1,-8,1,0),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			TextTruncate=1,
			TextXAlignment=0,}},
		{17,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="RightButton",
			Parent={7},Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="...",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{18,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3
			,Name="SettingsButton",
			Parent={7},
			Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{19,"Frame",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Name="SoundPreview",
			Parent={7},
			Size=UDim2.new(1,0,1,0),
			Visible=false,}},
		{20,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="ControlButton",
			Parent={19},
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,}},
		{21,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5642383285",
			ImageRectOffset=Vector2.new(144,16),
			ImageRectSize=Vector2.new(16,16),
			Name="Icon",
			Parent={20},
			Position=UDim2.new(0,2,0,3),
			ScaleType=4,
			Size=UDim2.new(0,16,0,16),}},
		{22,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Highlight2,
			BorderSizePixel=0,
			Name="TimeLine",
			Parent={19},
			Position=UDim2.new(0,26,0.5,-1),
			Size=UDim2.new(1,-34,0,2),}},
		{23,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Button,
			BorderColor3=Enviorment.Settings.Theme.Outline1,
			Name="Slider",
			Parent={22},
			Position=UDim2.new(0,-4,0,-8),
			Size=UDim2.new(0,8,0,18),}},
		{24,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="EditAttributeButton",
			Parent={1},
			Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,}},
		{25,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5034718180",
			ImageTransparency=0.20000000298023
			,Name="Icon",Parent={24},
			Position=UDim2.new(0,2,0,3),
			Size=UDim2.new(0,16,0,16),}},
		{26,"TextButton",{
			AutoButtonColor=false,
			BackgroundColor3=Enviorment.Settings.Theme.Button,
			BorderSizePixel=0,
			Font=3,
			Name="RowButton",
			Parent={1},
			Size=UDim2.new(1,0,1,0),
			Text="Add Attribute",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			Visible=false,}},
		
		--{27,"UIStroke",{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.fromRGB(33,33,33),Thickness=1,Parent={1}}},
	})
	local G2L = {
		
	}
	G2L["2"] = Instance.new("ImageLabel", f.ValueFrame.RightButton);
	G2L["2"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["2"]["Image"] = [[rbxassetid://6511490623]];
	G2L["2"]["ImageRectSize"] = Vector2.new(16, 16);
	G2L["2"]["Size"] = UDim2.new(0, 16, 0, 16);
	G2L["2"]["BackgroundTransparency"] = 1;
	G2L["2"]["ImageRectOffset"] = Vector2.new(112, 0);
	G2L["2"]["Position"] = UDim2.new(0, 2, 0, 3);
	return f
end
module.InitInputBox = function(Properties)
	
end
module.MakeNode = function(Properties,index)
	local new = module.NewEntryTemplate()
	new.Parent = Properties.NodeContent
	
	local function f1(ex)
		for _, v in new.ValueFrame:GetChildren() do
			if table.find({"SettingsButton","RightButton","Line","Delete"},v.Name) then continue end
			if v == Properties.InputBox then continue end
			if ex == nil then v.Visible = false end
			if typeof(ex) == "table" then
				if table.find(ex,v) then
					v.Visible = true
				else
					v.Visible = false
				end
				continue
			end
			if v ~= ex then v.Visible = false;continue end
			
			
			v.Visible = true
		end
	end
	Properties.Connected[index] = true
	local Connections = {}
	local checkbox2 = Checkbox.new(1)
	local delete_button = Enviorment.CloseButton()
	delete_button.Parent = new.ValueFrame
	delete_button.Position = UDim2.new(1,-delete_button.AbsoluteSize.X,0,delete_button.Position.Y.Offset)
	delete_button.Name = "Delete"
	checkbox2.Gui.Parent = new.ValueFrame
	module.ExpandHighlight(new.NameFrame.Expand)
	local function RightButton(txt,vis)
		if txt == "..." then
			new.ValueFrame.RightButton:FindFirstChildOfClass("ImageLabel").Visible = false
			new.ValueFrame.RightButton.Text = txt
		elseif txt == "close" then
			new.ValueFrame.RightButton:FindFirstChildOfClass("ImageLabel").Visible = true
			new.ValueFrame.RightButton.Text = ""
		end
		new.ValueFrame.RightButton.Visible = vis or false
	end
	local function Refresh()
		for _, v in Connections do local s,err = pcall(function() v:Disconnect() end); if not s then warn("Errored while disconnecting ",err) end end
		if new == nil then
			return
		end
		if new.Parent == nil then
			new = nil
			return
		end
		local node = Properties.GetNodeAtIndex(index)
		if node == nil then
			new.Visible = false
			return
		end
		
		
		new.Visible = true
		local value = node.GetValue()
		local type_value = typeof(value)
		
		if type_value == "nil" then
			local s,_ = pcall(function()
				node.SetValue(Instance.new("Frame"),true)
			end)
			local s2,_ = pcall(function()
				node.SetValue(PhysicalProperties.new(node.GetObject().Material),true)
			end)
			local s3,_ = pcall(function()
				node.SetValue(Instance.new("Camera"),true)
			end)
			local s4,_ = pcall(function()
				node.SetValue(Instance.new("Part"),true)
			end)
			local s5,_ = pcall(function()
				node.SetValue(Instance.new("Humanoid"),true)
			end)
			if s or s3 or s4 or s5 then
				type_value = "Instance"
				node.SetValue(nil)
			end
			if s2 then
				type_value = "PhysicalProperties"
				node.SetValue(nil)
			end
		end
		
		
		new.NameFrame.PropName.Text = node.Name
		if node.Writable() ~= true then
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
			new.ValueFrame.ValueBox.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
			
		else
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.Text
			new.ValueFrame.ValueBox.TextColor3 = Enviorment.Settings.Theme.Text
		end
		
		--
		
		new.Position = UDim2.new(0,0,0,new.Position.Y.Offset)
		new.Size = UDim2.new(1,0,0,22)
		
		local xoffset = 20 + node.Depth * 16
		
		
		
		new.NameFrame.Position = UDim2.new(0,xoffset,0,0)
		new.NameFrame.Size = UDim2.new(0.5,-(xoffset + 1),1,0)
		
		new.ValueFrame.Position = UDim2.new(0.5,0,0,0)
		new.ValueFrame.Size = UDim2.new(0.5,0,1,0)
		
		RightButton("...",false)
		
		Connections[#Connections+1] = new.NameFrame.Expand.Activated:Connect(function()
			if node.Button then
				return
			end
			if node.RowText ~= nil then
				if Properties.ExpandedCategories[node.RowText] == nil then
					Properties.ExpandedCategories[node.RowText] = true
				end
				Properties.ExpandedCategories[node.RowText] = not Properties.ExpandedCategories[node.RowText]
				--print("Written at index ",node.RowText, Properties.ExpandedCategories[node.RowText]," at node render function ",node)
				new.NameFrame.Expand.Icon.ImageRectOffset = (Properties.ExpandedCategories[node.RowText]) and Vector2.new(176,16) or Vector2.new(144,16)
			else
				node.Expanded = node.Expanded or false
				node.Expanded = not node.Expanded
				new.NameFrame.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16)  or Vector2.new(144,16)
			end
			
			
			Properties.Refresh()
		end)
		new.RowButton.Visible = false
		delete_button.Visible = false
		if node.Button ~= nil then
			new.RowButton.Visible = true
			new.RowButton.Text = node.Button.Text or "Button"
			
			Connections[#Connections+1] = new.RowButton.Activated:Connect(function() node.Button.Activated:Fire() end)
			return
		elseif node.IsTag then
			delete_button.Visible = true
			f1(nil)
			new.NameFrame.PropName.Text = node.Name
			new.NameFrame.PropName.Font = Enum.Font.SourceSans
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main2
			new.NameFrame.Expand.Visible = false
			Connections[#Connections+1] = delete_button.Activated:Connect(function() node.TagSignal:Fire() end)
			new.ValueFrame.Visible = true
			return
		elseif node.RowText ~= nil then
			new.Visible = true
			if Properties.ExpandedCategories[node.RowText] == nil then
				Properties.ExpandedCategories[node.RowText] = true
			end
			
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main1
			new.ValueFrame.Visible = false

			new.NameFrame.PropName.Text = node.RowText
			new.NameFrame.PropName.Font = Enum.Font.SourceSansBold
			new.NameFrame.Expand.Visible = true
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.Text
			new.NameFrame.BackgroundTransparency = 1
			new.NameFrame.Size = UDim2.new(1,0,1,0)
			new.EditAttributeButton.Visible = false
			new.NameFrame.Expand.Icon.ImageRectOffset = Properties.ExpandedCategories[node.RowText] == true and Vector2.new(176,16) or  Vector2.new(144,16)
			return
		else
			new.NameFrame.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16) or Vector2.new(144,16)
			new.NameFrame.PropName.Text = node.Name
			new.NameFrame.PropName.Font = Enum.Font.SourceSans
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main2
			new.NameFrame.Expand.Visible = false
			new.ValueFrame.Visible = true
			
		end
		new.ValueFrame.ValueBox.BackgroundColor3 = Enviorment.Settings.Theme.Main1
		new.EditAttributeButton.Visible = node.IsAttribute or false
		if not node.Subnodes then
			new.NameFrame.Expand.Visible = false
		elseif #node.Subnodes == 0 then
			new.NameFrame.Expand.Visible = false
		else
			new.NameFrame.Expand.Visible = true
		end
		Connections[#Connections+1] = new.EditAttributeButton.Activated:Connect(function()
			if not node.Writable() then
				return
			end
			Properties.AttributeContext:Clear()
			Properties.AttributeContext.Add(Properties.AttributeContext,{
				Name = "Delete",
				Disabled = false,
				OnClick = function()
					if node.IsCategory or node.IsAttribute ~= true or node.Button ~= nil or node.IsButton == true then
						return
					end
					node.SetValue(nil)
				end
			})
			Properties.AttributeContext.Add(Properties.AttributeContext,{
				Name = "Edit",
				Disabled = false,
				OnClick = function()
					if node.IsCategory or node.IsAttribute ~= true or node.Button ~= nil or node.IsButton == true then
						return
					end
					Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects,node.Name)
				end
			})
			Properties.AttributeContext.Gui.Parent = new.ValueFrame
			Properties.AttributeContext.Width = new.ValueFrame.AbsoluteSize.X
			Properties.AttributeContext:Show(new.ValueFrame.AbsolutePosition.X,new.ValueFrame.AbsolutePosition.Y)
		end)
		new.ValueFrame.ValueBox.Position = UDim2.new(0,0,0,0)
		new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = false
		if table.find({"string","CFrame","Vector3int16","Vector3","Vector2int16","Vector2","Color3","number","SecurityCapabilities","Ray","UDim2","UDim","Rect","Color3","ColorSequence"},type_value) then
			local btn : TextButton = new.ValueFrame.ValueBox
			if type_value == "Color3" or type_value == "ColorSequence" then
				f1({btn,new.ValueFrame.ColorButton})
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = true
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Color = type_value == "Color3" and ColorSequence.new(node.GetValue()) or node.GetValue()
			else
				f1(btn)
			end
			
			btn.Text = type_value == "ColorSequence" and "< Color Sequence >" or tostring(value)
			local poffset2 = 0
			if new.ValueFrame.ColorButton.Visible then
				poffset2 = poffset2 + new.ValueFrame.ColorButton.AbsoluteSize.X
			end
			btn.Position = UDim2.new(0,poffset2,0,0)
			local function OpenColorSeq()
				local connection;connection = Properties.ColorSequenceEditor.OnSelect:Connect(function()
					node.SetValue(Properties.ColorSequenceEditor.Sequence)
					connection:Disconnect()
				end)
				Properties.ColorSequenceEditor:SetSequence(node.GetValue())
				Properties.ColorSequenceEditor:Show()
			end
			Connections[#Connections+1] = new.ValueFrame.ColorButton.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				if type_value == "ColorSequence" then
					OpenColorSeq()
					return
				end
				local connection;connection = Properties.ColorPicker.OnSelect:Connect(function()
					node.SetValue(Properties.ColorPicker.Color)
					connection:Disconnect()
				end)
				Properties.ColorPicker:SetColor(node.GetValue())
				Properties.ColorPicker:Show()
				
			end)
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				if type_value == "ColorSequence" then
					OpenColorSeq()
					return
				end
				
				Properties.InputProp = node.Name
				local box : TextBox = Properties.InputTextBox
				Properties.InputBox.Parent = new.ValueFrame
				
				local offset = 2
				local poffset = 0
				if new.EditAttributeButton.Visible then
					offset = offset + new.EditAttributeButton.AbsoluteSize.X
				end
				--if new.ValueFrame.ColorButton.Visible then
				--	offset = offset + new.ValueFrame.ColorButton.AbsoluteSize.X
				--	poffset = poffset + new.ValueFrame.ColorButton.AbsoluteSize.X
				--end
				local prev_visible = new.ValueFrame.ColorButton.Visible
				new.ValueFrame.ColorButton.Visible = prev_visible
				Properties.InputBox.Position = UDim2.new(0,2 + poffset,0,0)
				Properties.InputBox.Size = UDim2.new(1,-offset,1,0)
				
				Properties.InputBox.Visible = true
				Properties.InputTextBox.Text = tostring(value)
				Properties.TextBoxNode = node
				box:CaptureFocus()
				local i = #Connections+1
				btn.Visible = false
				if prev_visible == true then
					Properties.MakeVisibleOnLostFocus(new.ValueFrame.ColorButton)
				end
				Properties.MakeVisibleOnLostFocus(btn)
				--Connections[i] = 
			end)
		elseif table.find({"boolean","PhysicalProperties"},type_value) then
			f1(checkbox2.Gui)
			
			Connections[#Connections+1] = checkbox2.OnInput:Connect(function() 
				if type_value == "PhysicalProperties" then
					node.SetValue(checkbox2.Toggled and PhysicalProperties.new(node.GetObject().Material) or nil)
					if checkbox2.Toggled then
						for i,subprop in Properties.ExpandableTypes[type_value] do
							local subnode = Properties.AddNode(node,subprop,true,i)
							node.Subnodes[i] = subnode
						end
					else
						node.Subnodes = {}
					end
				else
					node.SetValue(checkbox2.Toggled);
				end
				
			end)
			checkbox2.Disabled = not node.Writable()
			checkbox2:Paint()
			if node.GetValue() ~= checkbox2.Toggled then
				if type_value == "PhysicalProperties" then
					checkbox2:SetState(node.GetValue() ~= nil and true or false)
					
				else
					checkbox2:SetState(node.GetValue())
					Refresh()
					checkbox2:Paint()
				end
				
			end
		elseif type_value == "Instance" then
			local btn : TextButton = new.ValueFrame.ValueBox
			f1(btn)
			btn.Text = node.GetValue() == nil and "" or node.GetValue().Name
			RightButton("close",false)
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				RightButton("close",true)
				Properties.InputProp = node.Name
				local box : TextBox = Properties.InputTextBox
				Properties.InputBox.Parent = new.ValueFrame
				Properties.InputBox.Position = UDim2.new(0,2,0,0)
				local offset = 2
				if new.EditAttributeButton.Visible then
					offset = offset + 20
				end
				Properties.InputBox.Size = UDim2.new(1,-offset,1,0)
				Properties.InputBox.Visible = true
				Properties.InputTextBox.Text = tostring(value)
				box:CaptureFocus()
				btn.Visible = false
				Properties.MakeVisibleOnLostFocus(btn)
				Enviorment.AppSignal:Fire("Explorer","NewIndex","RunOnSelect",function(ExplorerNode)
					print("pressed ",ExplorerNode)
					task.spawn(node.SetValue,ExplorerNode.Instance)
					task.spawn(function()
						btn.Visible = true
						Properties.InputTextBox:ReleaseFocus()
						Properties.InputBox.Visible = false
						RightButton("close",false)
					end)
					
				end)
				
			end)
			Connections[#Connections+1] = new.ValueFrame.RightButton.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				task.spawn(node.SetValue,nil)
			end)
		elseif type_value == "EnumItem" then
			local btn : TextButton = new.ValueFrame.ValueBox
			if node.Writable() then
				f1({new.ValueFrame:FindFirstChild("EnumArrow"),btn})
			else
				f1(btn)
			end
			
			btn.Text = node.GetValue().Name
			
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				Properties.ArrowContext:Clear()
				local options = {}
				local EnumItem : EnumItem = node.GetValue()
				
				for _, enum in node.GetValue().EnumType:GetEnumItems() do
					options[#options+1] = enum.Name
				end
				for _,option in options do
					Properties.ArrowContext.Add(Properties.ArrowContext,{
						Name = option,
						Disabled = false,
						OnClick = function()
							node.SetValue(EnumItem.EnumType[option])
						end
					})
				end
				Properties.ArrowContext.Gui.Parent = new.ValueFrame
				Properties.ArrowContext.Width = new.ValueFrame.AbsoluteSize.X
				Properties.ArrowContext:Show(new.ValueFrame.AbsolutePosition.X,new.ValueFrame.AbsolutePosition.Y)
				
				
				
				
			end)
			
		else
			f1(nil)
		end
		
		
		
	end
	Refresh()
	Properties.RegisterCallback(Refresh,new)
end

module.New = function()
	local Properties = {ViewWidth = 0,YOffset = 0,SearchText = ""}
	Properties.Entry_List = {}
	Properties.Node_List = {}
	Properties.AllowedAttributeTypes = {"string","boolean","number","UDim","UDim2","BrickColor","Color3","Vector2","Vector3","NumberSequence","ColorSequence","NumberRange","Rect","Font"}
	Properties.Connections = {}
	Properties.ExpandedCategories = {}
	Properties.Refresh_Callbacks = {}
	Properties.MakeVisibleContent = {}
	Properties.Connected = {}
	Properties.ActiveNodes = {}
	Properties.TagEditor = module.NewTagEditor(Properties)
	Properties.RegisterCallback = function(f,entry)
		if entry then
			local idx = #Properties.Refresh_Callbacks+1
			Properties.Refresh_Callbacks[idx] = f
			Properties.Entry_List[idx] = {
				Func = f, 
				Entry = entry, 
				Disable = function() 
					Properties.ActiveNodes[idx] = false
					table.remove(Properties.Refresh_Callbacks,idx); 
					table.remove(Properties.Entry_List,idx) 
					entry:Destroy();
					
				end}
		else
			local idx = #Properties.Refresh_Callbacks+1
			Properties.Refresh_Callbacks[idx] = f
		end
		
	end
	Properties.MakeVisibleOnLostFocus = function(v)
		Properties.MakeVisibleContent[#Properties.MakeVisibleContent+1] = v
	end
	Properties.StringToValue = function(value : any,s)
		if table.find({"CFrame","Vector3int16","Vector3","Vector2int16","Vector2","Color3","PhysicalProperties","Rect","UDim2","UDim"},s)then
			local numbers = string.split(value,","); for i, v in numbers do numbers[i] = tonumber(v) end
			return getfenv()[s].new(table.unpack(numbers))
		end
		if s == "SecurityCapabilities" then
			local strings = string.split(value,"|");
			for i, v in strings do
				local new = ""
				for _, c in string.split(v,"") do if c == " " or c == "\n" or c == "	" then continue end;new = new .. c end
				strings[i] = new
			end
			local args = {}
			for _, v in strings do
				pcall(function()
					args[#args+1] = Enum.SecurityCapability[v]
				end)
			end
			return SecurityCapabilities.new(table.unpack(args))
		end
		if s == "Ray" then
			local numbers = string.split(value,",");for i, v in numbers do numbers[i] = tonumber(v) end
			return Ray.new(Vector3.new(numbers[1],numbers[2],numbers[3]),Vector3.new(numbers[4],numbers[5],numbers[6]))
		end
		if s == "string" then return value elseif s == "number" then return tonumber(value) elseif s == "boolean" then return value == "true" end
	end
	Properties.GetNodeAtIndex = function(index,nooffset)
		local final = nooffset == true and index or index + Properties.YOffset
		local x = 0
		local s = nil
		local function OnNode(node)
			if node == nil then return end
			if node.Category ~= nil then
				--print(node.Category,Properties.ExpandedCategories[node.Category])
				if Properties.ExpandedCategories[node.Category] == false then
					--print("skipped",node)
					return
				end
			end
			if Properties.SearchText ~= "" and node.IsCategory ~= true then
				if string.find(string.lower(node.Name),string.lower(Properties.SearchText)) == nil then
					return
				end
			end
			x = x + 1
			if x == final then
				s = node
				return
			end
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end
		end
		for _, v in Properties.Node_List do OnNode(v) end
		return s
	end
	Properties.GetIndexOfNode = function(node)
		local x = 0
		local s = nil
		local function OnNode(node)
			if node == nil then return end
			if node.Category ~= nil then
				if Properties.ExpandedCategories[node.Category] == false then
					return
				end
			end
			if Properties.SearchText ~= "" and node.IsCategory ~= true then
				if string.find(string.lower(node.Name),string.lower(Properties.SearchText)) == nil then
					return
				end
			end
			x = x + 1
			if Properties.GetNodeAtIndex(x) == node then
				s = node
				return
			end
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end

		end
		for _, v in Properties.Node_List do OnNode(v) end
		return s
	end
	Properties.GetMaxIndex = function()
		local x = 0
		local n = nil
		repeat 
			x = x + 1
			n = Properties.GetNodeAtIndex(x,true)
		until n == nil
		x = x - 1
		n = Properties.GetNodeAtIndex(x,true)
		return x
	end
	Properties.GetMaxNode = function()
		local x = 0
		local n = nil
		repeat 
			x = x + 1
			n = Properties.GetNodeAtIndex(x,true)
		until n == nil
		x = x - 1
		n = Properties.GetNodeAtIndex(x,true)
		return n
	end
	Properties.GetLenght = function()
		local x = 0
		local function OnNode(node)
			if node == nil then
				return
			end
			if typeof(node) ~= "table" then
				return
			end
			x = x + 1
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end
		end
		for _, v in Properties.Node_List do OnNode(v) end
		return x
	end
	Properties.Refresh = function(instant)
		--local instant = true
		task.spawn(function()
			Properties.ScrollY.TotalSpace = #Properties.Node_List * 4
			--Properties.ScrollY:Update()
		end)
		
		for i, f in Properties.Refresh_Callbacks do
			if Properties.ActiveNodes[i] == false then continue end
			if instant then 
				task.spawn(f)
			else 
				f() 
			end
		end
	end
	Properties.ClearNodes = function() table.clear(Properties.Connected);table.clear(Properties.Node_List);Properties.Refresh() end
	Properties.GetProperies_Sorted = function(obj)
		local currentTitle = ""
		local sortedList = {}
		local SuperClass = ""
		--print(Enviorment.API)
		for class_name, instance_data in Enviorment.API.Classes do
			
			if obj:IsA(class_name) == false then continue end
			
			for d, Property in instance_data.Properties do
				--if Property["MemberType"] ~= "Property" then continue end
				local readable,writable = Functions.GetPropertyData(obj,Property["Name"])
				if readable == false then continue end
				
				local AddToTable = true
				if Property["Tags"] ~= nil then
					for i, tag in Property["Tags"] do
						if Enviorment.Settings.Properties.ShowDeprecated == false and tag == "Deprecated" then
							AddToTable = false
						end
						if Enviorment.Settings.Properties.ShowHidden == false     and tag == "Hidden" then
							AddToTable = false
						end
					end
				end
				if AddToTable == true then
					--print("Found Property in API: " .. tostring(Property["Name"]))
					local FoundCategory = false
					for c, Category in sortedList do
						if Category.Category == Property["Category"] then
							table.insert(Category.props,Property["Name"])
							FoundCategory = true
						end
					end
					if FoundCategory == false then
						table.insert(sortedList,{Category = Property["Category"],props = {Property["Name"]}})
					end
				end
			end
		end

		return sortedList -- {Category = "CategoryName",props = {"propname1","propname2","propname3"}}
	end
	Properties.ExpandableTypes = {
		["Vector3int16"] = {"X","Y","Z","Magnitude"},
		["Vector3"] = {"X","Y","Z","Magnitude"},
		["Vector2int16"] = {"X","Y","Magnitude"},
		["Vector2"] = {"X","Y","Magnitude"},
		["CFrame"] = {"Position","XVector","YVector","ZVector"},
		["PhysicalProperties"] = {"AcousticAbsorption","Density","Friction","Elasticity","FrictionWeight","ElasticityWeight"},
		["Ray"] = {"Origin","Direction"},
		["UDim"] = {"Scale","Offset"},
		["UDim2"] = {"X","Y"},
		["Rect"] = {"Width","Height","Min","Max"},
		["SecurityCapabilities"] = {},
	}
	Properties.DefaultPropValue = {
		string = "",
		boolean = false,
		int = 0,
		UDim = UDim.new(0,0),
		UDim2 = UDim2.new(0,0,0,0),
		BrickColor = BrickColor.new("Medium stone grey"),
		Color3 = Color3.new(1,1,1),
		Vector2 = Vector2.new(0,0),
		Vector3 = Vector3.new(0,0,0),
		NumberSequence = NumberSequence.new(1),
		ColorSequence = ColorSequence.new(Color3.new(1,1,1)),
		NumberRange = NumberRange.new(0),
		Rect = Rect.new(0,0,0,0),
		Font = Font.fromEnum(Enum.Font.SourceSans),
		CFrame = CFrame.new(0,0,0),
	}

	
	for _, capability in Enum.SecurityCapability:GetEnumItems() do
		Properties.ExpandableTypes["SecurityCapabilities"][#Properties.ExpandableTypes["SecurityCapabilities"]+1] = capability.Name
	end
	Properties.AddNode = function(parent,prop,norefresh,index)
		
		local node;node = {
			Name = prop,
			Depth = parent.Depth + 1,
			Expanded = false,
			Subnodes = {},
			Category = parent.Category,
			GetValue = function() 
				if typeof(parent.GetValue()) == "SecurityCapabilities" then
					return parent.GetValue():Contains(Enum.SecurityCapability[prop])
				end
				return parent.GetValue()[prop] 
			end,
			SetValue = function(num) 
				local r = parent.GetValue();
				if typeof(parent.GetValue()) == "Vector3" then 
					return parent.SetValue(Vector3.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"],prop == "Z" and num or r["Z"]))
				end 
				if typeof(parent.GetValue()) == "Vector2" then 
					return parent.SetValue(Vector2.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end 
				if typeof(parent.GetValue()) == "Vector3int16" then 
					return parent.SetValue(Vector3int16.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"],prop == "Z" and num or r["Z"]))
				end 
				if typeof(parent.GetValue()) == "Vector2int16" then 
					return parent.SetValue(Vector2int16.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end
				if typeof(parent.GetValue()) == "Ray" then
					return parent.SetValue(Ray.new(prop == "Origin" and num or r["Origin"],prop == "Direction" and num or r["Direction"]))
				end
				if typeof(parent.GetValue()) == "Rect" then
					return parent.SetValue(Rect.new(prop == "Min" and num or r["Min"],prop == "Max" and num or r["Max"]))
				end
				if typeof(parent.GetValue())  == "UDim2" then
					return parent.SetValue(UDim2.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end
				if typeof(parent.GetValue()) == "UDim" then
					return parent.SetValue(UDim.new(prop == "Scale" and num or r["Scale"],prop == "Offset" and num or r["Offset"]))
				end
				if typeof(parent.GetValue()) == "PhysicalProperties" then
					local args = {}
					for _, arg in Properties.ExpandableTypes["PhysicalProperties"] do
						if arg == "AcousticAbsorption" then continue end
						args[#args+1] = prop == arg and num or r[arg]
					end
					return parent.SetValue(PhysicalProperties.new(table.unpack(args)))
				end
				if typeof(parent.GetValue()) == "CFrame" then 
					if prop == "Position" then
						return parent.SetValue(CFrame.new(num.X,num.Y,num.Z,r.XVector.X,r.XVector.Y,r.XVector.Z,r.YVector.X,r.YVector.Y,r.YVector.Z,r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "XVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,num.X,num.Y,num.Z, r.YVector.X,r.YVector.Y,r.YVector.Z,r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "YVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,r.XVector.X,r.XVector.Y,r.XVector.Z, num.X,num.Y,num.Z,  r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "ZVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,	r.XVector.X,r.XVector.Y,r.XVector.Z, r.YVector.X,r.YVector.Y,r.YVector.Z, num.X,num.Y,num.Z ))
					end
					return nil
				end 
				if typeof(parent.GetValue()) == "SecurityCapabilities" then
					local args = {}
					for _, enum in Enum.SecurityCapability:GetEnumItems() do
						if parent.GetValue():Contains(enum) then
							args[#args+1] = enum
						end
					end
					local argument = Enum.SecurityCapability[prop]
					if num == true and not table.find(args,argument) then
						args[#args+1] = argument
					elseif num == false then
						table.remove(args,table.find(args,argument))
					end
					return parent.SetValue(SecurityCapabilities.new(table.unpack(args)))
				end
			end,
			GetObject = function() return parent.GetObject() end,
			Writable = function() 
				if parent.Writable() == false then return false end
				local stype = typeof(parent.GetValue())
				if stype ==  "SecurityCapabilities" then
					local s : SecurityCapabilities = parent.GetValue()
					if s:Contains(Enum.SecurityCapability[prop]) then
						local writable,_ = pcall(parent.SetValue,s:Remove(Enum.SecurityCapability[prop]),true)
						if writable then
							pcall(parent.SetValue,s:Add(Enum.SecurityCapability[prop]),true)
						end
						return writable
					end
					local writable,_ = pcall(parent.SetValue,s:Add(Enum.SecurityCapability[prop]),true)
					if writable then
						pcall(parent.SetValue,s:Remove(Enum.SecurityCapability[prop]),true)
					end
					return writable
				end
				if stype == "Rect" then
					return (prop ~= "Width" and prop ~= "Height")
				end
				return (prop ~= "Magnitude" and prop ~= "AcousticAbsorption") 
			end,
		}
		--print("Adding ",node,prop, " with index ",index , " to ",parent)
		if Properties.ExpandableTypes[typeof(node.GetValue())] then
			for i,subprop in Properties.ExpandableTypes[typeof(node.GetValue())] do
				local subnode = Properties.AddNode(node,subprop,true,i)
				node.Subnodes[i] = subnode
			end
		end
		return node
	end
	Properties.AddProperty = function(data)
		local node;node = {
			Name = data.Property,
			GetValue = function()
				if node.IsAttribute then
					return data.Object:GetAttribute(data.Property)
				end
				return data.Object[data.Property]
			end,
			IsAttribute = data.IsAttribute,
			IsTag = data.IsTag,
			TagSignal = data.TagSignal,
			Category = data.IsCategory ~= true and data.Category,
			IsCategory = data.IsCategory,
			IsButton = data.IsButton,
			SetValue = function(val,NoCall)
				if node.IsAttribute then
					if NoCall then
						data.Object:SetAttribute(data.Property,val)
						return
					end
					pcall(data.Object.SetAttribute,data.Object,data.Property,val)
					return
				end
				if NoCall then
					data.Object[data.Property] = val;return
				end
				pcall(function() data.Object[data.Property] = val end)
			end,
			Writable = function()
				if node.IsAttribute then
					return table.pack(pcall(node.SetValue,node.GetValue(),true))[1]
				end
				local API_Writable = table.pack(pcall(function() node.SetValue(node.GetValue(),true) end))[1]
				local Locked = false
				return (API_Writable == true and Locked == false ) and true or false
			end,
			Expanded = false,
			Subnodes = {},
			Button = data.Button,
			GetObject = function()
				return data.Object
			end,
			Depth = 0,
		}
		if data.IsCategory then
			node.GetValue = function() return "" end
			node.SetValue = function() return end
			node.Writable = function() return false end
			node.RowText = data.Property
			node.ForceVisible = true
			node.Category = nil
			--node.Name = nil
		end
		if data.IsButton or data.IsTag then
			node.GetValue = function() return "" end
			node.SetValue = function() return end
			node.Writable = function() return data.IsTag == true and true or false end
			node.ForceVisible = true
			node.Category = nil
		end
		
		if Properties.ExpandableTypes[typeof(node.GetValue())] then
			for i,subprop in Properties.ExpandableTypes[typeof(node.GetValue())] do
				local subnode = Properties.AddNode(node,subprop,true,i)
				node.Subnodes[i] = subnode
			end
		end
		if data.AutoAdd ~= false then
			Properties.Node_List[#Properties.Node_List+1] = node
		end
		
		if data.NoRefresh ~= true then
			Properties.Refresh()
		end
		return node
	end
	Properties.ForceRebuild = function(node)
		--Properties.AddProperty(node.GetObject(),node.Name,true,node.RowText ~= nil,node.Category,true)
		local new_node = Properties.AddProperty({
			Object = node.GetObject(),
			Property = node.Name,
			NoRefresh = true,
			IsCategory = node.RowText ~= nil,
			Category = node.Category,
			AutoAdd = false,
		})
		for index, node2 in Properties.Node_List do
			if node2 == node then
				Properties.Node_List[index] = node
				print("Replaced at ",index)
			end
		end
		Properties.Refresh()
	end
	Properties.ClearNonProperties = function()
		for index,node in Properties.Node_List do
			if node.IsAttribute or node.IsTag or (node.IsCategory == true and node.RowText == "Attributes") or (node.IsCategory == true and node.RowText == "Tags") or (node.IsButton) or node.Button ~= nil then
				Properties.Node_List[index] = nil
				task.wait()
			end
		end
	end
	Properties.SConnections = {}
	Properties.ShowObjectNonProperties = function(obj)
		Properties.DisplayedObjects = {obj}
		Properties.ClearNonProperties()
		for _, v in Properties.SConnections do
			pcall(function() v:Disconnect() end)
		end
		local add_in_order = {}
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = true,
			Property = "Tags",
			NoRefresh = true,
			AutoAdd = false,
		})
		local before_tags = obj:GetTags()
		for i, tag in before_tags do
			local n = Properties.AddProperty({
				Object = obj,
				IsCategory = false,
				Property = tag,
				Category = "Tags",
				AutoAdd = false,
				NoRefresh = true,
				IsAttribute = false,
				IsTag = true,
				TagSignal = Signal.new()
			})
			add_in_order[#add_in_order+1] = n
			Properties.SConnections[#Properties.SConnections+1] = n.TagSignal:Connect(function()
				obj:RemoveTag(tag)
				Properties.ShowObjectNonProperties(obj)
			end)
		end
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = true,
			Property = "Attributes",
			NoRefresh = true,
			AutoAdd = false,
		})
		local before = obj:GetAttributes()
		
		for attribute, value in before do
			add_in_order[#add_in_order+1] = Properties.AddProperty({
				Object = obj,
				IsCategory = false,
				Property = attribute,
				Category = "Attributes",
				AutoAdd = false,
				NoRefresh = true,
				IsAttribute = true,
			})
		end
		
		local Button = {
			Text = "Add Attribute",
			Activated = Signal.new(),
		}
		local EditorButton = {
			Text = "Add Tag",
			Activated = Signal.new(),
		}
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = Button,
			IsButton = true,
		})
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = EditorButton,
			IsButton = true,
		})
		local Button_node = add_in_order[#add_in_order+1]
		local EditorButton_node = add_in_order[#add_in_order]
		Properties.SConnections[#Properties.SConnections+1] = Button.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects)
		end)
		Properties.SConnections[#Properties.SConnections+1] = EditorButton.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects,nil,true)
		end)
		Properties.SConnections[#Properties.SConnections+1] = obj.AttributeChanged:Connect(function(attribute)
			if obj:GetAttribute(attribute) == nil then
				for i, node in Properties.Node_List do
					if node.Name == attribute and node.IsAttribute == true and node.Button == nil then
						table.remove(Properties.Node_List,i)
						Properties.Refresh()
						return
					end
				end
			end
			if before[attribute] == nil then
				local new_node = Properties.AddProperty({
					Object = obj,
					IsCategory = false,
					Property = attribute,
					Category = "Attributes",
					AutoAdd = false,
					NoRefresh = true,
					IsAttribute = true,
				})
				Properties.Node_List[#Properties.Node_List] = new_node
				for i, v in Properties.Node_List do
					if v == Button_node then
						Properties.Node_List[i] = nil
					end
					if v == EditorButton_node then
						Properties.Node_List[i] = nil
						task.wait()
					end
				end
				
				
				--Properties.Node_List[table.find(Properties.Node_List,Button_node)] = nil
				
				before = obj:GetAttributes()
				Properties.Refresh()
				task.spawn(function()
					task.wait(0.1)
					Properties.ShowObjectNonProperties(obj)
				end)
			end
		end)
		Properties.SConnections[#Properties.SConnections+1] = Enviorment.RunService.Heartbeat:Connect(function()
			local new = obj:GetTags()
			for i,v in new do
				if not table.find(before_tags,v) then
					before_tags = new
					Properties.ShowObjectNonProperties(obj)
					return
				end
			end
		end)
		for _, v in add_in_order do 
			Properties.Node_List[#Properties.Node_List+1] = v
		end
	end
	Properties.ShowObjectProperties = function(obj : Instance)
		Properties.ClearNodes()
		Properties.TagEditor.AddObjectProperties(obj)
		for _, v in Properties.Connections do
			pcall(function() v:Disconnect() end)
		end
		for _, category in Properties.GetProperies_Sorted(obj) do
			Properties.AddProperty({
				Object = obj,
				IsCategory = true,
				Property = category.Category,
				NoRefresh = true,
			})
			for _,prop in category.props do
				Properties.AddProperty({
					Object = obj,
					Property = prop,
					Category = category.Category,
					AutoAdd = true,
					NoRefresh = true,
				})
			end
		end
		
		Properties.ShowObjectNonProperties(obj)
		
		
		Properties.Refresh()
	end
	Properties.ShowExplorerProps = function(objects)
		Properties.ScrollY.Index = 0
		Properties.ScrollY:Update()
		Properties.DisplayedObjects = typeof(objects) == "table" and objects or {objects}
		if typeof(objects) == "table" then
			Properties.ShowObjectProperties(objects[1])
			return
		end
		Properties.ShowObjectProperties(objects)
	end
	Properties.RemakeNodes = function()
		--local count = math.round(Properties.NodeContent.AbsoluteSize.Y / 20)
		--if count < Properties.NodeContent.AbsoluteSize.Y / 20 then
		--	count = count + 1
		--end
		--for i=1,count do
		--	local entry = Properties.Entry_List[i]
		--	Properties.ActiveNodes[i] = true
		--	if entry == nil then
				
		--		module.MakeNode(Properties,i)
		--	end
			
			
			
			
			
		--end
		--for i, entry in Properties.Entry_List do
		--	if i > count then
		--		print("disabling ",i,count)
		--		entry.Disable()
		--	end
		--end
		for i=1,45 do
			module.MakeNode(Properties,i)
		end
	end
	
	Properties.DisplayAddAttributeWindow = function(objects,attribute,is_tag)
		local win = Properties.AddAttributeWindow
		if not win then
			win = Window.new()
			win.Alignable = false
			win.Resizable = false
			win:SetTitle("Add Attribute")
			win:SetSize(200,130)

			local saveButton = Button.new()
			local nameLabel = Label.new()
			nameLabel.Text = "Name"
			nameLabel.Position = UDim2.new(0,30,0,10)
			nameLabel.Size = UDim2.new(0,40,0,20)
			nameLabel.Parent = win.GuiElems.Content

			local nameBox = ViewportTextBox.new()
			nameBox.Position = UDim2.new(0,75,0,10)
			nameBox.Size = UDim2.new(0,120,0,20)
			nameBox.Parent = win.GuiElems.Content
			nameBox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				saveButton:SetDisabled(#nameBox:GetText() == 0)
			end)

			local typeLabel = Label.new()
			typeLabel.Text = "Type"
			typeLabel.Position = UDim2.new(0,30,0,40)
			typeLabel.Size = UDim2.new(0,40,0,20)
			typeLabel.Parent = win.GuiElems.Content

			local typeChooser = DropDown.new()
			typeChooser.CanBeEmpty = false
			typeChooser.Gui.Position = UDim2.new(0,75,0,40)
			typeChooser.Gui.Size = UDim2.new(0,120,0,20)
			typeChooser:SetOptions(Properties.AllowedAttributeTypes)
			typeChooser.Gui.Parent = win.GuiElems.Content

			local errorLabel = Label.new()
			errorLabel.Text = ""
			errorLabel.Position = UDim2.new(0,5,1,-45)
			errorLabel.Size = UDim2.new(1,-10,0,20)
			errorLabel.TextColor3 = Enviorment.Settings.Theme.Important
			win.ErrorLabel = errorLabel
			errorLabel.Parent = win.GuiElems.Content

			local cancelButton = Button.new()
			cancelButton.Gui.Text = "Cancel"
			cancelButton.Gui.Position = UDim2.new(1,-97,1,-25)
			cancelButton.Gui.Size = UDim2.new(0,92,0,20)
			cancelButton.OnClick:Connect(function()
				win:Close()
			end)
			cancelButton.Gui.Parent = win.GuiElems.Content

			saveButton.Gui.Text = "Save"
			saveButton.Gui.Position = UDim2.new(0,5,1,-25)
			saveButton.Gui.Size = UDim2.new(0,92,0,20)
			saveButton.OnClick:Connect(function()
				local name = nameBox:GetText()
				if is_tag then
					for _,obj in objects do
						pcall(obj.AddTag,obj,name)
					end
				else
					if #name > 100 then
						errorLabel.Text = "Error: Name over 100 chars"
						return
					elseif name:sub(1,3) == "RBX" and not Enviorment.IsElevated() then
						errorLabel.Text = "Error: Name begins with 'RBX'"
						return
					end

					local typ = typeChooser.Selected
					if attribute then
						for _, obj in objects do
							local _,val = pcall(obj.GetAttribute,obj,attribute)
							pcall(obj.SetAttribute,obj,attribute,nil)
							pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,val)
						end
					else
						for _, obj in objects do
							pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,Properties.DefaultPropValue[typ])
						end
					end
				end
				
				win:Close()
			end)
			saveButton.Gui.Parent = win.GuiElems.Content
			win.Elements.NameBox = nameBox
			win.Elements.Error = errorLabel
			win.Elements.SaveButton = saveButton
			win.Elements.TypeChooser = typeChooser
			Properties.AddAttributeWindow = win
		end

		if is_tag then win:SetTitle("Add Tag") else win:SetTitle(attribute ~= nil and "Edit Attribute " .. attribute or "Add Attribute") end
		win.Elements.Error.Text = ""
		win.Elements.NameBox:SetText("")
		win.Elements.SaveButton:SetDisabled(true)
		win.Elements.TypeChooser:SetSelected(1)
		win:Show()
	end
	
	Properties.Window = Window.new()
	Properties.Window:SetTitle("Properties")
	Properties.NodeContent = Properties.Window.GuiElems.Content:Clone()
	Properties.NodeContent.BackgroundTransparency = 1
	Properties.NodeContent.Parent = Properties.Window.GuiElems.Content
	Properties.NodeContent.Size = UDim2.new(1,-16,1,-23)
	Properties.NodeContent.Position = UDim2.new(0,0,0,23)
	
	Properties.ColorPicker = ColorPicker.new()
	Properties.ColorSequenceEditor = ColorSequenceEditor.new()
	
	Properties.ScrollY = ScrollBar.new()
	Properties.ScrollY.Gui.Parent = Properties.Window.GuiElems.Content
	Properties.ScrollY.Gui.Position = UDim2.new(1,-16,0,20)
	Properties.ScrollY.Gui.Size = UDim2.new(0,16,1,-20)
	Properties.ScrollY.Increment = 1
	Properties.ScrollY:SetScrollFrame(Properties.Window.GuiElems.Content)
	--Instance.new("UIListLayout",Properties.NodeContent)
	Properties.ArrowContext = ContextMenu.new()
	Properties.ArrowContext.SearchEnabled = false
	Properties.ArrowContext.Iconless = true
	
	Properties.AttributeContext = ContextMenu.new()
	Properties.AttributeContext.SearchEnabled = false
	Properties.AttributeContext.Iconless = true
	Properties.AttributeContext.Clear(Properties.AttributeContext)
	
	
	local propertiesItems = create({
		{ 1, "Folder", { Name = "PropertiesItems" } },
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Main1,
				BorderSizePixel = 0,
				Name = "ToolBar",
				Parent = { 1 },
				Size = UDim2.new(1, 0, 0, 22),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Color3.new(0.1176470592618, 0.1176470592618, 0.1176470592618),
				BorderSizePixel = 0,
				Name = "SearchFrame",
				Parent = { 2 },
				Position = UDim2.new(0, 3, 0, 1),
				Size = UDim2.new(1, -6, 0, 18),
			},
		},
		{
			4,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				Font = 3,
				Name = "SearchBox",
				Parent = { 3 },
				PlaceholderColor3 = Color3.new(0.39215689897537, 0.39215689897537, 0.39215689897537),
				PlaceholderText = "Search Properties",
				Position = UDim2.new(0, 4, 0, 0),
				Size = UDim2.new(1, -24, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{ 5, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 3 } } },
		{
			6,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Enviorment.Settings.Theme.Menu,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Reset",
				Parent = { 3 },
				Position = UDim2.new(1, -17, 0, 1),
				Size = UDim2.new(0, 16, 0, 16),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
		{
			7,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5034718129",
				ImageColor3 = Color3.new(0.39215686917305, 0.39215686917305, 0.39215686917305),
				Parent = { 6 },
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{
			8,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Enviorment.Settings.Theme.Menu,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Refresh",
				Parent = { 2 },
				Position = UDim2.new(1, -20, 0, 1),
				Size = UDim2.new(0, 18, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				Visible = false,
			},
		},
		{
			9,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5642310344",
				Parent = { 8 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 12, 0, 12),
			},
		},
		{
			10,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.ButtonPress,
				BorderSizePixel = 0,
				Name = "ScrollCorner",
				Parent = { 1 },
				Position = UDim2.new(1, -16, 1, -16),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = false,
			},
		},
		{
			11,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Name = "List",
				Parent = { 1 },
				Position = UDim2.new(0, 0, 0, 23),
				Size = UDim2.new(1, 0, 1, -23),
			},
		},
	})
	
	local toolBar = propertiesItems.ToolBar
	local treeFrame = propertiesItems.List
	local SearchBox : TextBox = toolBar.SearchFrame.SearchBox
	--Explorer.GuiElems.ToolBar = toolBar
	--Explorer.GuiElems.TreeFrame = treeFrame
	toolBar.Parent = Properties.Window.GuiElems.Content
	treeFrame.Parent = Properties.Window.GuiElems.Content
	
	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		local n = SearchBox.Text
		Properties.SearchText = n
		Properties.Refresh(true)
	end)
	
	Properties.InputBox = create({
		{1,"Frame",{BackgroundColor3=Enviorment.Settings.Theme.TextBox,
			BorderSizePixel=0
			,Name="InputBox",
			Size=UDim2.new(0,200,0,22),
			Visible=false,
			ZIndex=2,}},
		{2,"TextBox",{
			BackgroundColor3=Enviorment.Settings.Theme.Main2,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.062745101749897,0.51764708757401,1),
			BorderSizePixel=0,ClearTextOnFocus=false,
			Font=3,
			Parent={1},
			PlaceholderColor3=Color3.new(0.69803923368454,0.69803923368454,0.69803923368454),
			Position=UDim2.new(0,3,0,0),
			Size=UDim2.new(1,-6,1,0),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextXAlignment=0,
			ZIndex=2,}},
	})
	
	Properties.InputTextBox = Properties.InputBox.TextBox
	Properties.InputBox.BackgroundColor3 = Enviorment.Settings.Theme.TextBox
	Properties.InputBox.Parent = Properties.Window.GuiElems.Content
	Properties.InputTextBox.FocusLost:Connect(function()
		if Properties.TextBoxNode == nil then return end
		Properties.TextBoxNode.SetValue(Properties.StringToValue(Properties.InputTextBox.Text,typeof(Properties.TextBoxNode.GetValue())))
		Properties.InputBox.Visible = false
		Properties.Refresh()
		Properties.TextBoxNode = nil
		for i, v in Properties.MakeVisibleContent do
			if v == nil then
				table.remove(Properties.MakeVisibleContent,i)
				continue
			end
			v.Visible = true
			table.remove(Properties.MakeVisibleContent,i)
		end
	end)

	Properties.InputTextBox.Focused:Connect(function()
		Properties.InputTextBox.SelectionStart = 1
		Properties.InputTextBox.CursorPosition = #Properties.InputTextBox.Text + 1
	end)

	ViewportTextBox.convert(Properties.InputTextBox)
	
	Properties.RemakeNodes()
	task.spawn(function()
		Properties.ShowObjectProperties(workspace)
	end)
	local OldYOffset = 0
	local OldYSize = Properties.Window.GuiElems.Content.AbsoluteSize.Y
	task.spawn(function()
		while task.wait() do
			if Properties.Window.GuiElems.Content.AbsoluteSize.Y - OldYSize ~= 0  then
				--Properties.RemakeNodes()
				OldYSize = Properties.Window.GuiElems.Content.AbsoluteSize.Y
			end
			if Properties.ScrollY.Index ~= OldYOffset then
				OldYOffset = Properties.ScrollY.Index
				Properties.YOffset = OldYOffset
				Properties.ScrollY.TotalSpace = Properties.GetLenght()
				Properties.InputTextBox:ReleaseFocus()
				Properties.Refresh(true)
			end
			Properties.ScrollY.VisibleSpace = math.round(Properties.Window.GuiElems.Content.AbsoluteSize.Y / 20) - 10
			
			local index = 0
			for _, new in Properties.NodeContent:GetChildren() do
				if new.Visible == false then
					continue
				end
				index = index + 1
				new.Position = UDim2.new(0,0,0,(index - 2) * new.Size.Y.Offset)
			end
		end
	end)
	task.spawn(function()
		while task.wait(1) do Properties.Refresh() end
	end)
	Enviorment.AppSignal:Connect(function(app,inst)
		if app ~= script.Name then return end
		if inst == nil then return end
		Properties.ShowExplorerProps(inst)
	end)
	return Properties
end
module.NewTagEditor = function(Properties)
	local sub_module = {}
	sub_module.YOffset = 0
	sub_module.Node_List = {}
	sub_module.Window = Window.new()
	sub_module.Window.SetTitle(sub_module.Window,"Tag Editor")
	sub_module.Window.Resizable = false
	
	sub_module.UpdateFunctions = {}
	sub_module.GetAtIndex = function(index,nooffset) local final = nooffset == true and index or index + sub_module.YOffset ;return sub_module.Node_List[final] end
	sub_module.MakeNode = function(i)
		local new = module.NewEntryTemplate()
		local delete_button = Enviorment.CloseButton()
		delete_button.Parent = new.ValueFrame
		delete_button.Position = UDim2.new(1,-delete_button.AbsoluteSize.X,0,delete_button.Position.Y.Offset)
		delete_button.Name = "Delete"
		local function f1(ex)
			for _, v in new.ValueFrame:GetChildren() do
				if table.find({"SettingsButton","RightButton","Line","Delete"},v.Name) then continue end
				if v == Properties.InputBox then continue end
				if ex == nil then v.Visible = false end
				if typeof(ex) == "table" then
					if table.find(ex,v) then
						v.Visible = true
					else
						v.Visible = false
					end
					continue
				end
				if v ~= ex then v.Visible = false;continue end


				v.Visible = true
			end
		end
		f1(nil)
		new.ValueFrame.Visible = true
		local connections = {}
		sub_module[#sub_module+1] = function()
			for _,v in connections do
				pcall(function()
					connections:Disconnect()
				end)
			end
			local node = sub_module.GetAtIndex(i)
			if node == nil then
				new.Visible = false
				return
			end
			new.NameFrame.Expand.Visible = false
			new.NameFrame.PropName.Text = node.Name;
			connections[#connections+1] = delete_button.Activated:Connect(function()
				node.Object:RemoveTag(node.Name)
			end)
		end
		new.Parent = sub_module.Window.GuiElems.Content
		new.Position = UDim2.new(0,0,0,20 * (i-1))
		
	end
	sub_module.Clear = function() sub_module.Node_List = {} end
	sub_module.Refresh = function(instant) 
		for _, v in sub_module.UpdateFunctions do 
			if instant then 
				task.spawn(v)
			else 
				v()
			end 
		end 
	end
	sub_module.AddProperty = function(data)
		local new = {
			Object = data.Object,
			Name = data.Name,
		}
		if data.AutomaticAdd ~= false then
			sub_module.Node_List[#sub_module.Node_List+1] = new
		end
		sub_module.Refresh()
	end
	sub_module.RemakeEntries = function()
		for i=1,15 do sub_module.MakeNode(i) end
	end
	sub_module.AddObjectProperties = function(object : Instance)
		sub_module.Clear()
		for _, tag in object:GetTags() do
			sub_module.AddProperty({Object = object,Name = tag,Tag = tag})
		end
		sub_module.Clear()
	end
	sub_module.RemakeEntries()
	return sub_module
end
module.Init = module.New
return module

end;
};
G2L_MODULES[G2L["28"]] = {
Closure = function()
    local script = G2L["28"];--[[
	Console Module
]]

local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local module = {}
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Frame = require(script.Parent.Parent.UI.Base.Frame)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)


module.New = function()
	local Console = {}

	local window,ConsoleFrame

	local OutputLimit = 500 -- Same as Roblox Console.


	-- Instances: 29 | Scripts: 1 | Modules: 1 | Tags: 0
	local G2L = {};

	-- StarterGui.ScreenGui
	window = Window.new()
	window:SetTitle("Console")
	window:Resize(500,400)
	Console.Window = window

	-- StarterGui.ScreenGui.Console
	ConsoleFrame = Instance.new("ImageButton", window.GuiElems.Content);
	ConsoleFrame["BorderSizePixel"] = 0;
	ConsoleFrame["AutoButtonColor"] = false;
	ConsoleFrame["BackgroundTransparency"] = 1;
	ConsoleFrame["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
	ConsoleFrame["Selectable"] = false;
	ConsoleFrame["Size"] = UDim2.new(1,0,1,0);
	ConsoleFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	ConsoleFrame["Name"] = [[Console]];
	ConsoleFrame["Position"] = UDim2.new(0,0,0,0);


	-- StarterGui.ScreenGui.Console.CommandLine
	G2L["3"] = Frame.new().Gui--Instance.new("Frame", ConsoleFrame);
	G2L["3"].Parent = ConsoleFrame
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["BackgroundColor3"] = Enviorment.Settings.Theme.Main3;
	G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 1);
	G2L["3"]["ClipsDescendants"] = true;
	G2L["3"]["Size"] = UDim2.new(1, -8, 0, 22);
	G2L["3"]["Position"] = UDim2.new(0.5, 0, 1, -5);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3"]["Name"] = [[CommandLine]];


	-- StarterGui.ScreenGui.Console.CommandLine.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["3"]);
	G2L["4"]["Transparency"] = 0.65;
	G2L["4"]["Thickness"] = 1.25;


	-- StarterGui.ScreenGui.Console.CommandLine.ScrollingFrame
	G2L["5"] = Instance.new("ScrollingFrame", G2L["3"]);
	G2L["5"]["Active"] = true;
	G2L["5"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["5"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
	G2L["5"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.Always;
	G2L["5"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
	G2L["5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
	G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["5"]["ScrollBarImageColor3"] = Color3.fromRGB(57, 57, 57);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["ScrollBarThickness"] = 2;
	G2L["5"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Console.CommandLine.ScrollingFrame.TextBox
	G2L["6"] = Instance.new("TextBox", G2L["5"]);
	G2L["6"]["CursorPosition"] = -1;
	G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["6"]["PlaceholderColor3"] = Color3.fromRGB(211, 211, 211);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["TextSize"] = 13;
	G2L["6"]["TextColor3"] = Color3.fromRGB(211, 211, 211);
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["6"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["6"]["ClearTextOnFocus"] = false;
	G2L["6"]["PlaceholderText"] = [[Run a command]];
	G2L["6"]["Size"] = UDim2.new(0, 246, 0, 22);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Text"] = [[]];
	G2L["6"]["BackgroundTransparency"] = 1;


	-- StarterGui.ScreenGui.Console.CommandLine.ScrollingFrame.TextBox.UIPadding
	G2L["7"] = Instance.new("UIPadding", G2L["6"]);
	G2L["7"]["PaddingLeft"] = UDim.new(0, 7);


	-- StarterGui.ScreenGui.Console.CommandLine.ScrollingFrame.Highlight
	G2L["8"] = Instance.new("TextLabel", G2L["5"]);
	G2L["8"]["Interactable"] = false;
	G2L["8"]["ZIndex"] = 2;
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["TextSize"] = 13;
	G2L["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["BackgroundTransparency"] = 1;
	G2L["8"]["RichText"] = true;
	G2L["8"]["Size"] = UDim2.new(0, 246, 0, 22);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Text"] = [[]];
	G2L["8"]["Selectable"] = true;
	G2L["8"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["8"]["Name"] = [[Highlight]];


	-- StarterGui.ScreenGui.Console.CommandLine.ScrollingFrame.Highlight.UIPadding
	G2L["9"] = Instance.new("UIPadding", G2L["8"]);
	G2L["9"]["PaddingLeft"] = UDim.new(0, 7);

	G2L["backgroundOutput"] = Instance.new("Frame", ConsoleFrame);
	G2L["backgroundOutput"]["BorderSizePixel"] = 0;
	G2L["backgroundOutput"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	G2L["backgroundOutput"]["Name"] = [[BackgroundOutput]];
	G2L["backgroundOutput"]["AnchorPoint"] = Vector2.new(0, 0);
	G2L["backgroundOutput"]["Size"] = UDim2.new(1, -8, 1, -55);
	G2L["backgroundOutput"]["Position"] = UDim2.new(0, 4, 0, 23);
	G2L["backgroundOutput"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["backgroundOutput"]["ZIndex"] = 1;

	local scrollbar = ScrollBar.new()
	scrollbar.Gui.Parent = ConsoleFrame
	scrollbar.Gui.Size = UDim2.new(0, 16, 1, -55);
	scrollbar.Gui.Position = UDim2.new(1, -20,0, 23);
	scrollbar.Gui.Up.ZIndex = 3
	scrollbar.Gui.Down.ZIndex = 3

	-- StarterGui.ScreenGui.Console.Output
	G2L["a"] = Instance.new("ScrollingFrame", ConsoleFrame);
	G2L["a"]["Active"] = true;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["a"]["TopImage"] = '';
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	G2L["a"].BackgroundTransparency = 1
	G2L["a"]["Name"] = [[Output]];
	G2L["a"]["ScrollBarImageTransparency"] = 0;
	G2L["a"]["BottomImage"] = '';
	G2L["a"]["AnchorPoint"] = Vector2.new(0, 0);
	G2L["a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	G2L["a"]["Size"] = UDim2.new(1, -8, 1, -55);
	G2L["a"]["Position"] = UDim2.new(0, 4, 0, 23);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"].ScrollBarImageColor3 = Color3.fromRGB(70, 70, 70)
	G2L["a"]["ScrollBarThickness"] = 16;
	G2L["a"]["ZIndex"] = 1;

	G2L["a"]:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function()
		if G2L["a"].AbsoluteCanvasSize ~= G2L["a"].AbsoluteWindowSize then
			scrollbar.Gui.Visible = true
		else
			scrollbar.Gui.Visible = false
		end
	end)

	-- StarterGui.ScreenGui.Console.Output.UIListLayout
	G2L["b"] = Instance.new("UIListLayout", G2L["a"]);
	G2L["b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


	-- StarterGui.ScreenGui.Console.Output.UIStroke
	G2L["c"] = Instance.new("UIStroke", G2L["a"]);
	G2L["c"]["Transparency"] = 0.7;
	G2L["c"]["Thickness"] = 1.25;
	G2L["c"]["Color"] = Color3.fromRGB(12, 12, 12);


	-- StarterGui.ScreenGui.Console.Output.OutputTextSize
	G2L["d"] = Instance.new("NumberValue", G2L["a"]);
	G2L["d"]["Name"] = [[OutputTextSize]];
	G2L["d"]["Value"] = 15;


	-- StarterGui.ScreenGui.Console.Output.OutputLimit
	G2L["e"] = Instance.new("NumberValue", G2L["a"]);
	G2L["e"]["Name"] = [[OutputLimit]];
	G2L["e"]["Value"] = OutputLimit;


	-- StarterGui.ScreenGui.Console.Output.UIPadding
	G2L["f"] = Instance.new("UIPadding", G2L["a"]);
	G2L["f"]["PaddingTop"] = UDim.new(0, 2);


	-- StarterGui.ScreenGui.Console.TextSizeBox
	G2L["10"] = Instance.new("Frame", ConsoleFrame);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
	G2L["10"]["ClipsDescendants"] = true;
	G2L["10"]["Size"] = UDim2.new(0, 37, 0, 15);
	G2L["10"]["Position"] = UDim2.new(0, 4, 0, 4);
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["Name"] = [[TextSizeBox]];


	-- StarterGui.ScreenGui.Console.TextSizeBox.TextBox
	G2L["11"] = Instance.new("TextBox", G2L["10"]);
	G2L["11"]["PlaceholderColor3"] = Color3.fromRGB(108, 108, 108);
	G2L["11"]["BorderSizePixel"] = 0;
	G2L["11"]["TextWrapped"] = true;
	G2L["11"]["TextSize"] = 15;
	G2L["11"]["TextColor3"] = Color3.fromRGB(211, 211, 211);
	G2L["11"]["TextScaled"] = true;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["11"]["PlaceholderText"] = [[Size]];
	G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["Text"] = [[]];
	G2L["11"]["BackgroundTransparency"] = 1;


	-- StarterGui.ScreenGui.Console.TextSizeBox.TextBox.UIPadding
	G2L["12"] = Instance.new("UIPadding", G2L["11"]);
	G2L["12"]["PaddingTop"] = UDim.new(0, 2);
	G2L["12"]["PaddingRight"] = UDim.new(0, 5);
	G2L["12"]["PaddingLeft"] = UDim.new(0, 5);
	G2L["12"]["PaddingBottom"] = UDim.new(0, 2);


	-- StarterGui.ScreenGui.Console.TextSizeBox.UIStroke
	G2L["13"] = Instance.new("UIStroke", G2L["10"]);
	G2L["13"]["Transparency"] = 0.65;
	G2L["13"]["Thickness"] = 1.25;


	-- StarterGui.ScreenGui.Console.Clear
	G2L["14"] = Instance.new("ImageButton", ConsoleFrame);
	G2L["14"]["BorderSizePixel"] = 0;
	G2L["14"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
	G2L["14"]["Size"] = UDim2.new(0, 37, 0, 15);
	G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["14"]["Name"] = [[Clear]];
	G2L["14"]["Position"] = UDim2.new(1, -42, 0, 4);


	-- StarterGui.ScreenGui.Console.Clear.TextLabel
	G2L["15"] = Instance.new("TextLabel", G2L["14"]);
	G2L["15"]["TextWrapped"] = true;
	G2L["15"]["Interactable"] = false;
	G2L["15"]["BorderSizePixel"] = 0;
	G2L["15"]["TextSize"] = 20;
	G2L["15"]["TextScaled"] = true;
	G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["BackgroundTransparency"] = 1;
	G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["15"]["Text"] = [[Clear]];


	-- StarterGui.ScreenGui.Console.Clear.UIPadding
	G2L["16"] = Instance.new("UIPadding", G2L["14"]);
	G2L["16"]["PaddingTop"] = UDim.new(0, 1);
	G2L["16"]["PaddingBottom"] = UDim.new(0, 1);


	-- StarterGui.ScreenGui.Console.OutputTemplate
	G2L["17"] = Instance.new("TextBox", ConsoleFrame);
	G2L["17"]["Visible"] = false;
	G2L["17"]["Active"] = false;
	G2L["17"]["Name"] = [[OutputTemplate]];
	G2L["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["17"]["BorderSizePixel"] = 0;
	G2L["17"]["TextEditable"] = false;
	G2L["17"]["TextWrapped"] = true;
	G2L["17"]["TextSize"] = 15;
	G2L["17"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["17"]["RichText"] = true;
	G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["17"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	G2L["17"]["Selectable"] = false;
	G2L["17"]["ClearTextOnFocus"] = false;
	G2L["17"]["Size"] = UDim2.new(1, 0, 0, 1);
	G2L["17"]["Position"] = UDim2.new(0, 20, 0, 0);
	G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["17"]["Text"] = [[(timestamp) <font color="rgb(255, 255, 255)">Output</font>]];
	G2L["17"]["BackgroundTransparency"] = 1;


	-- StarterGui.ScreenGui.Console.OutputTemplate.UIPadding
	G2L["18"] = Instance.new("UIPadding", G2L["17"]);
	G2L["18"]["PaddingRight"] = UDim.new(0, 6);
	G2L["18"]["PaddingLeft"] = UDim.new(0, 6);


	-- StarterGui.ScreenGui.Console.CtrlScroll
	G2L["19"] = Instance.new("ImageButton", ConsoleFrame);
	G2L["19"]["BorderSizePixel"] = 0;
	G2L["19"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
	G2L["19"]["Size"] = UDim2.new(0, 60, 0, 15);
	G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["19"]["Name"] = [[CtrlScroll]];
	G2L["19"]["Position"] = UDim2.new(0, 46, 0, 4);


	-- StarterGui.ScreenGui.Console.CtrlScroll.TextLabel
	G2L["1a"] = Instance.new("TextLabel", G2L["19"]);
	G2L["1a"]["TextWrapped"] = true;
	G2L["1a"]["Interactable"] = false;
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["TextSize"] = 20;
	G2L["1a"]["TextScaled"] = true;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["BackgroundTransparency"] = 1;
	G2L["1a"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["Text"] = [[Ctrl Scroll]];


	-- StarterGui.ScreenGui.Console.CtrlScroll.UIPadding
	G2L["1b"] = Instance.new("UIPadding", G2L["19"]);
	G2L["1b"]["PaddingTop"] = UDim.new(0, 1);
	G2L["1b"]["PaddingBottom"] = UDim.new(0, 1);

	-- StarterGui.ScreenGui.Console.AutoScroll
	G2L["20"] = Instance.new("ImageButton", ConsoleFrame);
	G2L["20"]["BorderSizePixel"] = 0;
	G2L["20"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
	G2L["20"]["Size"] = UDim2.new(0, 60, 0, 15);
	G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["20"]["Name"] = [[AutoScroll]];
	G2L["20"]["Position"] = UDim2.new(0, 110, 0, 4);


	-- StarterGui.ScreenGui.Console.AutoScroll.TextLabel
	G2L["1e"] = Instance.new("TextLabel", G2L["20"]);
	G2L["1e"]["TextWrapped"] = true;
	G2L["1e"]["Interactable"] = false;
	G2L["1e"]["BorderSizePixel"] = 0;
	G2L["1e"]["TextSize"] = 20;
	G2L["1e"]["TextScaled"] = true;
	G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1e"]["BackgroundTransparency"] = 1;
	G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1e"]["Text"] = [[Auto Scroll]];


	-- StarterGui.ScreenGui.Console.AutoScroll.UIPadding
	G2L["1f"] = Instance.new("UIPadding", G2L["20"]);
	G2L["1f"]["PaddingTop"] = UDim.new(0, 1);
	G2L["1f"]["PaddingBottom"] = UDim.new(0, 1);


	-- StarterGui.ScreenGui.ConsoleHandler
	G2L["1c"] = Instance.new("LocalScript", G2L["1"]);
	G2L["1c"]["Name"] = [[ConsoleHandler]];


	-- StarterGui.ScreenGui.ConsoleHandler.SyntaxHighlighter
	G2L["1d"] = Instance.new("ModuleScript", G2L["1c"]);
	G2L["1d"]["Name"] = [[SyntaxHighlighter]];


	-- Require G2L wrapper
	local G2L_REQUIRE = require;
	local G2L_MODULES = {};
	local function require(Module)
		local ModuleState = G2L_MODULES[Module];
		if ModuleState then
			if not ModuleState.Required then
				ModuleState.Required = true;
				ModuleState.Value = ModuleState.Closure();
			end
			return ModuleState.Value;
		end;
		return G2L_REQUIRE(Module);
	end

	G2L_MODULES[G2L["1d"]] = {
		Closure = function()
			local script = G2L["1d"];local highlighter = {}
			local keywords = {
				lua = {
					"and", "break", "or", "else", "elseif", "if", "then", "until", "repeat", "while", "do", "for", "in", "end",
					"local", "return", "function", "export"
				},
				rbx = {
					"game", "workspace", "script", "math", "string", "table", "task", "wait", "select", "next", "Enum",
					"error", "warn", "tick", "assert", "shared", "loadstring", "tonumber", "tostring", "type",
					"typeof", "unpack", "print", "Instance", "CFrame", "Vector3", "Vector2", "Color3", "UDim", "UDim2", "Ray", "BrickColor",
					"OverlapParams", "RaycastParams", "Axes", "Random", "Region3", "Rect", "TweenInfo",
					"collectgarbage", "not", "utf8", "pcall", "xpcall", "_G", "setmetatable", "getmetatable", "os", "pairs", "ipairs"
				},
				exploit = {
					"hookmetamethod", "hookfunction", "getgc", "filtergc", "Drawing", "getgenv", "getsenv", "getrenv", "getfenv", "setfenv",
					"decompile", "saveinstance", "getrawmetatable", "setrawmetatable", "checkcaller", "cloneref", "clonefunction",
					"iscclosure", "islclosure", "isexecutorclosure", "newcclosure", "getfunctionhash", "crypt", "writefile", "appendfile", "loadfile", "readfile", "listfiles",
					"makefolder", "isfolder", "isfile", "delfile", "delfolder", "getcustomasset", "fireclickdetector", "firetouchinterest", "fireproximityprompt"
				},
				operators = {
					"#", "+", "-", "*", "%", "/", "^", "=", "~", "=", "<", ">", ",", ".", "(", ")", "{", "}", "[", "]", ";", ":"
				}
			}

			local colors = {
				numbers = Color3.fromRGB(255, 198, 0),
				boolean = Color3.fromRGB(255, 198, 0),
				operator = Color3.fromRGB(204, 204, 204),
				lua = Color3.fromRGB(132, 214, 247),
				exploit = Color3.fromRGB(171, 84, 247),
				rbx = Color3.fromRGB(248, 109, 124),
				str = Color3.fromRGB(173, 241, 132),
				comment = Color3.fromRGB(102, 102, 102),
				null = Color3.fromRGB(255, 198, 0),
				call = Color3.fromRGB(253, 251, 172),
				self_call = Color3.fromRGB(253, 251, 172),
				local_color = Color3.fromRGB(248, 109, 115),
				function_color = Color3.fromRGB(248, 109, 115),
				self_color = Color3.fromRGB(248, 109, 115),
				local_property = Color3.fromRGB(97, 161, 241),
			}

			local function createKeywordSet(keywords)
				local keywordSet = {}
				for _, keyword in ipairs(keywords) do
					keywordSet[keyword] = true
				end
				return keywordSet
			end

			local luaSet = createKeywordSet(keywords.lua)
			local exploitSet = createKeywordSet(keywords.exploit)
			local rbxSet = createKeywordSet(keywords.rbx)
			local operatorsSet = createKeywordSet(keywords.operators)

			local function getHighlight(tokens, index)
				local token = tokens[index]

				if colors[token .. "_color"] then
					return colors[token .. "_color"]
				end

				if tonumber(token) then
					return colors.numbers
				elseif token == "nil" then
					return colors.null
				elseif token:sub(1, 2) == "--" then
					return colors.comment
				elseif operatorsSet[token] then
					return colors.operator
				elseif luaSet[token] then
					return colors.rbx
				elseif rbxSet[token] then
					return colors.lua
				elseif exploitSet[token] then
					return colors.exploit
				elseif token:sub(1, 1) == "\"" or token:sub(1, 1) == "\'" then
					return colors.str
				elseif token == "true" or token == "false" then
					return colors.boolean
				end

				if tokens[index + 1] == "(" then
					if tokens[index - 1] == ":" then
						return colors.self_call
					end

					return colors.call
				end

				if tokens[index - 1] == "." then
					if tokens[index - 2] == "Enum" then
						return colors.rbx
					end

					return colors.local_property
				end
			end

			function highlighter.run(source)
				local tokens = {}
				local currentToken = ""

				local inString = false
				local inComment = false
				local commentPersist = false

				for i = 1, #source do
					local character = source:sub(i, i)

					if inComment then
						if character == "\n" and not commentPersist then
							table.insert(tokens, currentToken)
							table.insert(tokens, character)
							currentToken = ""

							inComment = false
						elseif source:sub(i - 1, i) == "]]" and commentPersist then
							currentToken ..= "]"

							table.insert(tokens, currentToken)
							currentToken = ""

							inComment = false
							commentPersist = false
						else
							currentToken = currentToken .. character
						end
					elseif inString then
						if character == inString and source:sub(i-1, i-1) ~= "\\" or character == "\n" then
							currentToken = currentToken .. character
							inString = false
						else
							currentToken = currentToken .. character
						end
					else
						if source:sub(i, i + 1) == "--" then
							table.insert(tokens, currentToken)
							currentToken = "-"
							inComment = true
							commentPersist = source:sub(i + 2, i + 3) == "[["
						elseif character == "\"" or character == "\'" then
							table.insert(tokens, currentToken)
							currentToken = character
							inString = character
						elseif operatorsSet[character] then
							table.insert(tokens, currentToken)
							table.insert(tokens, character)
							currentToken = ""
						elseif character:match("[%w_]") then
							currentToken = currentToken .. character
						else
							table.insert(tokens, currentToken)
							table.insert(tokens, character)
							currentToken = ""
						end
					end
				end

				table.insert(tokens, currentToken)

				local highlighted = {}

				for i, token in ipairs(tokens) do
					local highlight = getHighlight(tokens, i)

					if highlight then
						local syntax = string.format("<font color = \"#%s\">%s</font>", highlight:ToHex(), token:gsub("<", "&lt;"):gsub(">", "&gt;"))

						table.insert(highlighted, syntax)
					else
						table.insert(highlighted, token)
					end
				end

				return table.concat(highlighted)
			end

			return highlighter
		end;
	};

	Console.Init = function()
		-- StarterGui.ScreenGui.ConsoleHandler

		local CtrlScroll = false
		local AutoScroll = false

		local LogService = game:GetService("LogService")
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")

		local Console = ConsoleFrame
		local SyntaxHighlightingModule = require(G2L["1c"].SyntaxHighlighter)
		local OutputTextSize = Console.Output.OutputTextSize

		local function Tween(obj, info, prop)
			local tween = game:GetService("TweenService"):Create(obj, info, prop)
			tween:Play()
			return tween
		end



		-- MOUSE STUFFS

		if CtrlScroll == true then
			Console.CtrlScroll.BackgroundColor3 = Color3.fromRGB(11, 90, 175)
		elseif CtrlScroll == false then
			Console.CtrlScroll.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
		end
		Console.CtrlScroll.MouseButton1Click:Connect(function()
			CtrlScroll = not CtrlScroll
			if CtrlScroll == true then
				Console.CtrlScroll.BackgroundColor3 = Color3.fromRGB(11, 90, 175)
			elseif CtrlScroll == false then
				Console.CtrlScroll.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
			end
		end)

		local IsHoldingCTRL = false
		UserInputService.InputBegan:Connect(function(input, gameproc)
			if not gameproc then
				if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
					IsHoldingCTRL = true
				end
			end
		end)
		UserInputService.InputEnded:Connect(function(input, gameproc)
			if not gameproc then
				if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
					IsHoldingCTRL = false
				end
			end
		end)

		if AutoScroll == true then
			Console.AutoScroll.BackgroundColor3 = Color3.fromRGB(11, 90, 175)
		elseif AutoScroll == false then
			Console.AutoScroll.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
		end
		Console.AutoScroll.MouseButton1Click:Connect(function()
			AutoScroll = not AutoScroll
			if AutoScroll == true then
				Console.AutoScroll.BackgroundColor3 = Color3.fromRGB(11, 90, 175)
				Console.Output.CanvasPosition = Vector2.new(0, 9e9)
			elseif AutoScroll == false then
				Console.AutoScroll.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
			end
		end)

		-- Console part
		local displayedOutput = {}
		local OutputLimit = Console.Output.OutputLimit

		Console.TextSizeBox.TextBox.Text = tostring(OutputTextSize.Value)

		Console.TextSizeBox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			local tonum = tonumber(Console.TextSizeBox.TextBox.Text)
			if tonum then
				OutputTextSize.Value = tonum
			end
		end)
		OutputTextSize:GetPropertyChangedSignal("Value"):Connect(function()
			Console.TextSizeBox.TextBox.Text = tostring(OutputTextSize.Value)
		end)

		local scrollConsoleInput
		Console.Output.MouseEnter:Connect(function()
			scrollConsoleInput = UserInputService.InputChanged:Connect(function(input)
				if CtrlScroll and input.UserInputType == Enum.UserInputType.MouseWheel and IsHoldingCTRL == true then
					Console.Output.ScrollingEnabled = false
					local newTextSize = OutputTextSize.Value + input.Position.Z
					if newTextSize >= 1 then
						OutputTextSize.Value = newTextSize
					end
				else
					Console.Output.ScrollingEnabled = true
				end
			end)
		end)
		Console.Output.MouseLeave:Connect(function()
			if scrollConsoleInput then
				scrollConsoleInput:Disconnect()
				scrollConsoleInput = nil
			end
		end)


		Console.Clear.MouseButton1Click:Connect(function()
			for _, log in pairs(Console.Output:GetChildren()) do
				if log:IsA("TextBox") then
					log:Destroy()
				end
			end
		end)

		local focussedOutput

		LogService.MessageOut:Connect(function(msg, msgtype)
			local formattedText = ""
			local unformattedText = ""
			local newOutputText = Console.OutputTemplate:Clone()
			table.insert(displayedOutput, newOutputText)

			if #displayedOutput > OutputLimit.Value then
				local oldest = table.remove(displayedOutput, 1)
				if oldest and typeof(oldest) == "Instance" then
					oldest:Destroy()
				end
			end

			unformattedText = os.date("%H:%M:%S")..'   '..msg
			if msgtype == Enum.MessageType.MessageOutput then
				formattedText = os.date("%H:%M:%S")..'   <font color="rgb(204, 204, 204)">'..msg..'</font>'
				newOutputText.Text = formattedText
			elseif msgtype == Enum.MessageType.MessageWarning then
				formattedText = os.date("%H:%M:%S")..'   <b><font color="rgb(255, 142, 60)">'..msg..'</font></b>'
				newOutputText.Text = formattedText
			elseif msgtype == Enum.MessageType.MessageError then
				formattedText = os.date("%H:%M:%S")..'   <b><font color="rgb(255, 68, 68)">'..msg..'</font></b>'
				newOutputText.Text = formattedText
			elseif msgtype == Enum.MessageType.MessageInfo then
				formattedText = os.date("%H:%M:%S")..'   <font color="rgb(128, 215, 255)">'..msg..'</font>'
				newOutputText.Text = formattedText
			end

			newOutputText.TextSize = OutputTextSize.Value
			OutputTextSize:GetPropertyChangedSignal("Value"):Connect(function()
				newOutputText.TextSize = OutputTextSize.Value
			end)

			newOutputText.Focused:Connect(function()
				focussedOutput = newOutputText
				newOutputText.Text = unformattedText
			end)
			newOutputText.FocusLost:Connect(function()
				focussedOutput = nil
				newOutputText.Text = formattedText
			end)

			newOutputText.Parent = Console.Output
			newOutputText.Visible = true

			if AutoScroll then
				Console.Output.CanvasPosition = Vector2.new(0, 9e9)
			end
		end)

		Console.Output.MouseLeave:Connect(function()
			if focussedOutput then
				focussedOutput:ReleaseFocus()
			end
		end)

		Console.CommandLine.ScrollingFrame.TextBox:GetPropertyChangedSignal("Text"):Connect(function()

			local oneliner = string.gsub(Console.CommandLine.ScrollingFrame.TextBox.Text, "\n", "    ")
			Console.CommandLine.ScrollingFrame.TextBox.Text = oneliner

			Console.CommandLine.ScrollingFrame.Highlight.Text = SyntaxHighlightingModule.run(Console.CommandLine.ScrollingFrame.TextBox.Text)
		end)



		Console.CommandLine.ScrollingFrame.TextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed and Console.CommandLine.ScrollingFrame.TextBox.Text ~= "" then
				print("> "..Console.CommandLine.ScrollingFrame.TextBox.Text)
				loadstring(Console.CommandLine.ScrollingFrame.TextBox.Text)()
			end
		end)
	end
	Console.Init()
	return Console
end
module.Init = module.New
return module 
end;
};
G2L_MODULES[G2L["29"]] = {
Closure = function()
    local script = G2L["29"];--[[
	Save Instance App Module
	
	Revival of the old dex's Save Instance
]] 
local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Label = require(script.Parent.Parent.UI.Base.Label)
local Checkbox = require(script.Parent.Parent.UI.Base.Checkbox)
local Frame = require(script.Parent.Parent.UI.Base.Frame)
local Window = require(script.Parent.Parent.UI.Normal.Window)
local ViewportTextBox = require(script.Parent.Parent.UI.Base.ViewportTextBox)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local module = {}

module.New = function()
	local SaveInstance = {}
	local new = {}
	local window, ListFrame
	local placeName = "Place_"..game.PlaceId
	pcall(function() placeName = Enviorment.MarketplaceService:GetProductInfo(game.PlaceId).Name end)
	local fileName = placeName .. "_{TIMESTAMP}"
	local Saving = false

	local SaveInstanceArgs = {
		Decompile = true,
		DecompileTimeout = 10,
		DecompileIgnore = {"Chat", "CoreGui", "CorePackages"},
		NilInstances = false,
		RemovePlayerCharacters = true,
		SavePlayers = false,
		MaxThreads = 3,
		ShowStatus = true,
		IgnoreDefaultProps = true,
		IsolateStarterPlayer = true
	}

	local function AddCheckbox(title, default)
		local frame = Frame.new()
		frame.Gui.Parent = ListFrame
		frame.Gui.Transparency = 1
		frame.Gui.Size = UDim2.new(1,0,0,20)

		local listlayout = Instance.new("UIListLayout")
		listlayout.Parent = frame.Gui
		listlayout.FillDirection = Enum.FillDirection.Horizontal
		listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		listlayout.VerticalAlignment = Enum.VerticalAlignment.Center
		listlayout.Padding = UDim.new(0, 10)

		-- Checkbox
		local checkbox = Checkbox.new()

		checkbox.Gui.Parent = frame.Gui
		checkbox.Gui.Size = UDim2.new(0,15,0,15)

		-- Label
		local label = Label.new()

		label.Parent = frame.Gui
		label.Size = UDim2.new(1, 0,1, -15)
		label.Text = title
		label.TextTruncate = Enum.TextTruncate.AtEnd

		checkbox:SetState(default)

		return checkbox
	end

	local function AddTextbox(title, default, sizeX)
		default = tostring(default)
		local frame = Frame.new()
		frame.Gui.Parent = ListFrame
		frame.Gui.Transparency = 1
		frame.Gui.Size = UDim2.new(1,0,0,20)

		local listlayout = Instance.new("UIListLayout")
		listlayout.Parent = frame.Gui
		listlayout.FillDirection = Enum.FillDirection.Horizontal
		listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		listlayout.VerticalAlignment = Enum.VerticalAlignment.Center
		listlayout.Padding = UDim.new(0, 10)

		-- Textbox
		local textbox = Instance.new("TextBox") -- replaced cuz why Moon make every inputs only work on mouse/pc users >:( 
		textbox.BackgroundColor3 = Enviorment.Settings.Theme.TextBox
		textbox.BorderColor3 = Enviorment.Settings.Theme.Outline3
		textbox.ClearTextOnFocus = false
		textbox.TextColor3 = Enviorment.Settings.Theme.Text
		textbox.Font = Enum.Font.SourceSans
		textbox.TextSize = 14
		textbox.ZIndex = 2

		textbox.Parent = frame.Gui
		if sizeX and type(sizeX) == "number" then
			textbox.Size = UDim2.new(0,sizeX,0,15)
		else
			textbox.Size = UDim2.new(0,45,0,15)
		end

		frame.Gui.AutomaticSize = Enum.AutomaticSize.X
		textbox.AutomaticSize = Enum.AutomaticSize.X

		-- Label
		local label = Label.new()

		label.Parent = frame.Gui
		label.Size = UDim2.new(1, 0,1, -15)
		label.Text = title
		label.TextTruncate = Enum.TextTruncate.AtEnd

		textbox.Text = default

		return {TextBox = textbox}
	end

	SaveInstance.Init = function()
		window = Window.new()
		window:SetTitle("Save Instance")
		window:Resize(350,350)
		SaveInstance.Window = window

		-- ListFrame

		-- Fake ScrollBar dex, because its too advanced
		ListFrame = Instance.new("ScrollingFrame")
		ListFrame.Parent = window.GuiElems.Content
		ListFrame.Size = UDim2.new(1, 0,1, -40)
		ListFrame.Position = UDim2.new(0, 0, 0, 0)
		ListFrame.Transparency = 1
		ListFrame.CanvasSize = UDim2.new(0,0,0,0)
		ListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ListFrame.ScrollBarThickness = 16
		ListFrame.BottomImage = ""
		ListFrame.TopImage = ""
		ListFrame.ScrollBarImageColor3 = Color3.fromRGB(70, 70, 70)
		ListFrame.ScrollBarImageTransparency = 0
		ListFrame.ZIndex = 2
		ListFrame.BorderSizePixel = 0

		local scrollbar = ScrollBar.new()
		scrollbar.Gui.Parent = window.GuiElems.Content
		scrollbar.Gui.Size = UDim2.new(1, 0,1, -40)
		scrollbar.Gui.Up.ZIndex = 3
		scrollbar.Gui.Down.ZIndex = 3

		ListFrame:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function()
			if ListFrame.AbsoluteCanvasSize ~= ListFrame.AbsoluteWindowSize then
				scrollbar.Gui.Visible = true
			else
				scrollbar.Gui.Visible = false
			end
		end)

		local ListLayout = Instance.new("UIListLayout")
		ListLayout.Parent = ListFrame
		ListLayout.Padding = UDim.new(0, 5)

		local Padding = Instance.new("UIPadding")
		Padding.Parent = ListFrame
		Padding.PaddingBottom = UDim.new(0, 5)
		Padding.PaddingLeft = UDim.new(0, 10)
		Padding.PaddingRight = UDim.new(0, 10)
		Padding.PaddingTop = UDim.new(0, 5)

		-- Options

		local Decompile = AddCheckbox("Decompile Scripts (LocalScript and ModuleScript)", SaveInstanceArgs.Decompile)
		Decompile.OnInput:Connect(function()
			SaveInstanceArgs.Decompile = Decompile.Toggled
		end)

		local decompileTimeout = AddTextbox("Decompile Timeout (s)", SaveInstanceArgs.DecompileTimeout, 15)
		decompileTimeout.TextBox.FocusLost:Connect(function()
			SaveInstanceArgs.DecompileTimeout = tonumber(decompileTimeout.TextBox.Text)
		end)

		local decompileThread = AddTextbox("Decompiler Max Threads", "3", 15)
		decompileThread.TextBox.FocusLost:Connect(function()
			SaveInstanceArgs.MaxThreads = tonumber(decompileThread.TextBox.Text)
		end)

		local decompileIgnore = AddTextbox("Decompile Ignore", table.concat(SaveInstanceArgs.DecompileIgnore, ","), 50)
		decompileIgnore.TextBox.FocusLost:Connect(function()
			local inputText = decompileIgnore.TextBox.Text
			local rawList = string.split(inputText, ", ") or string.split(inputText, ",")
			local finalList = {}

			for _, text in ipairs(rawList) do
				local split = string.split(text, ",") or string.split(text, ", ")
				for _, textFound in ipairs(split) do
					table.insert(finalList, textFound)
				end
			end
			SaveInstanceArgs.DecompileIgnore = finalList
		end)


		local NilObj = AddCheckbox("Save Nil Instances", SaveInstanceArgs.NilInstances)
		NilObj.OnInput:Connect(function()
			SaveInstanceArgs.NilInstances = NilObj.Toggled
		end)

		local RemovePlayerChar = AddCheckbox("Remove Player Characters", SaveInstanceArgs.RemovePlayerCharacters)
		RemovePlayerChar.OnInput:Connect(function()
			SaveInstanceArgs.RemovePlayerCharacters = RemovePlayerChar.Toggled
		end)

		local SavePlayerObj = AddCheckbox("Save Player Instance", SaveInstanceArgs.SavePlayers)
		SavePlayerObj.OnInput:Connect(function()
			SaveInstanceArgs.SavePlayers = SavePlayerObj.Toggled
		end)

		local IsolateStarterPlr = AddCheckbox("Isolate StarterPlayer", SaveInstanceArgs.IsolateStarterPlayer)
		IsolateStarterPlr.OnInput:Connect(function()
			SaveInstanceArgs.IsolateStarterPlayer = IsolateStarterPlr.Toggled
		end)

		local IgnoreDefaultProps = AddCheckbox("Ignore Default Properties", SaveInstanceArgs.IgnoreDefaultProps)
		IgnoreDefaultProps.OnInput:Connect(function()
			SaveInstanceArgs.IgnoreDefaultProps = IgnoreDefaultProps.Toggled
		end)

		local ShowStat = AddCheckbox("Show Status", SaveInstanceArgs.ShowStatus)
		ShowStat.OnInput:Connect(function()
			SaveInstanceArgs.ShowStatus = ShowStat.Toggled
		end)


		-- Decompile buttons below
		local FilenameTextBox = ViewportTextBox.new()
		FilenameTextBox.Gui.Parent = window.GuiElems.Content
		FilenameTextBox.Size = UDim2.new(1,0, 0,20)
		FilenameTextBox.Position = UDim2.new(0,0, 1,-40)

		local textpadding = Instance.new("UIPadding")
		textpadding.Parent = FilenameTextBox.Gui
		textpadding.PaddingLeft = UDim.new(0, 5)
		textpadding.PaddingRight = UDim.new(0, 5)

		local BackgroundButton = Frame.new()
		BackgroundButton.Gui.Parent = window.GuiElems.Content
		BackgroundButton.Size = UDim2.new(1,0, 0,20)
		BackgroundButton.Position = UDim2.new(0,0, 1,-20)

		local LabelButton = Label.new()
		LabelButton.Parent = window.GuiElems.Content
		LabelButton.Size = UDim2.new(1,0, 0,20)
		LabelButton.Position = UDim2.new(0,0, 1,-20)
		LabelButton.Text = "Save"
		LabelButton.TextXAlignment = Enum.TextXAlignment.Center

		local Button = Instance.new("TextButton")
		Button.Parent = BackgroundButton.Gui
		Button.Size = UDim2.new(1,0, 1,0)
		Button.Position = UDim2.new(0,0, 0,0)
		Button.Transparency = 1

		FilenameTextBox.TextBox.Text = fileName
		Button.MouseButton1Click:Connect(function()
			local fileName = FilenameTextBox.TextBox.Text:gsub("{TIMESTAMP}", os.date("%Y%m%d_%H%M%S"))
			
			window:SetTitle("Save Instance - Saving")
			SaveInstance.FileName = fileName
			local s, result = pcall(Enviorment.Functions.saveinstance,SaveInstanceArgs)
			if s then
				window:SetTitle("Save Instance - Saved")
			else
				window:SetTitle("Save Instance - Error")
				task.spawn(error("Failed to save the game: "..result))
			end
			task.wait(5)
			window:SetTitle("Save Instance")
			---env.saveinstance(game, fileName, SaveInstanceArgs)
		end)
	end
	SaveInstance.Init()
	new.Window = window
	return new
end
module.Init = module.New
return module
end;
};

require(G2L["2"]).Init()
