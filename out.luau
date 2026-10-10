--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 48 | Scripts: 1 | Modules: 40 | Tags: 0
local G2L = {};

-- StarterGui.dex
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[dex]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.dex.Loader
G2L["2"] = Instance.new("ModuleScript", G2L["1"]);
G2L["2"]["Name"] = [[Loader]];


-- StarterGui.dex.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.dex.UI
G2L["4"] = Instance.new("Folder", G2L["1"]);
G2L["4"]["Name"] = [[UI]];


-- StarterGui.dex.UI.Base
G2L["5"] = Instance.new("Folder", G2L["4"]);
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
G2L["f"] = Instance.new("Folder", G2L["4"]);
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


-- StarterGui.dex.UI.Normal.NewScrollView
G2L["1c"] = Instance.new("ModuleScript", G2L["f"]);
G2L["1c"]["Name"] = [[NewScrollView]];


-- StarterGui.dex.UI.Icons
G2L["1d"] = Instance.new("Folder", G2L["4"]);
G2L["1d"]["Name"] = [[Icons]];


-- StarterGui.dex.UI.Icons.Old
G2L["1e"] = Instance.new("ModuleScript", G2L["1d"]);
G2L["1e"]["Name"] = [[Old]];


-- StarterGui.dex.UI.Icons.Vanilla3
G2L["1f"] = Instance.new("ModuleScript", G2L["1d"]);
G2L["1f"]["Name"] = [[Vanilla3]];


-- StarterGui.dex.UI.Icons.NewDark
G2L["20"] = Instance.new("ModuleScript", G2L["1d"]);
G2L["20"]["Name"] = [[NewDark]];


-- StarterGui.dex.UI.Icons.NewLight
G2L["21"] = Instance.new("ModuleScript", G2L["1d"]);
G2L["21"]["Name"] = [[NewLight]];


-- StarterGui.dex.Modules
G2L["22"] = Instance.new("Folder", G2L["1"]);
G2L["22"]["Name"] = [[Modules]];


-- StarterGui.dex.Modules.Enviorment
G2L["23"] = Instance.new("ModuleScript", G2L["22"]);
G2L["23"]["Name"] = [[Enviorment]];


-- StarterGui.dex.Modules.Functions
G2L["24"] = Instance.new("ModuleScript", G2L["22"]);
G2L["24"]["Name"] = [[Functions]];


-- StarterGui.dex.Modules.Signal
G2L["25"] = Instance.new("ModuleScript", G2L["22"]);
G2L["25"]["Name"] = [[Signal]];


-- StarterGui.dex.Modules.Highlighter
G2L["26"] = Instance.new("ModuleScript", G2L["22"]);
G2L["26"]["Name"] = [[Highlighter]];


-- StarterGui.dex.Modules.PluginAPI
G2L["27"] = Instance.new("ModuleScript", G2L["22"]);
G2L["27"]["Name"] = [[PluginAPI]];


-- StarterGui.dex.Modules.ExecutorSupport
G2L["28"] = Instance.new("ModuleScript", G2L["22"]);
G2L["28"]["Name"] = [[ExecutorSupport]];


-- StarterGui.dex.Apps
G2L["29"] = Instance.new("Folder", G2L["1"]);
G2L["29"]["Name"] = [[Apps]];


-- StarterGui.dex.Apps.ScriptViewer
G2L["2a"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2a"]["Name"] = [[ScriptViewer]];


-- StarterGui.dex.Apps.Properties
G2L["2b"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2b"]["Name"] = [[Properties]];


-- StarterGui.dex.Apps.Console
G2L["2c"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2c"]["Name"] = [[Console]];


-- StarterGui.dex.Apps.SaveInstance
G2L["2d"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2d"]["Name"] = [[SaveInstance]];


-- StarterGui.dex.Apps.Interface
G2L["2e"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2e"]["Name"] = [[Interface]];


-- StarterGui.dex.Apps.Settings
G2L["2f"] = Instance.new("ModuleScript", G2L["29"]);
G2L["2f"]["Name"] = [[Settings]];


-- StarterGui.dex.Apps.Explorer
G2L["30"] = Instance.new("ModuleScript", G2L["29"]);
G2L["30"]["Name"] = [[Explorer]];


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
    local script = G2L["2"];
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
		local LoadSettings = {Beta = Enviorment.IsStudio}
		
		local IconMap = require(script.Parent.UI.Base.IconMap)
		Enviorment.MiscIcons = IconMap.new("rbxassetid://6511490623",256,256,16,16)
		Enviorment.MiscIcons:SetDict({
			Reference = 0,             Cut = 1,                         Cut_Disabled = 2,      Copy = 3,               Copy_Disabled = 4,    Paste = 5,                Paste_Disabled = 6,
			Delete = 7,                Delete_Disabled = 8,             Group = 9,             Group_Disabled = 10,    Ungroup = 11,         Ungroup_Disabled = 12,    TeleportTo = 13,
			Rename = 14,               JumpToParent = 15,               ExploreData = 16,      Save = 17,              CallFunction = 18,    CallRemote = 19,          Undo = 20,
			Undo_Disabled = 21,        Redo = 22,                       Redo_Disabled = 23,    Expand_Over = 24,       Expand = 25,          Collapse_Over = 26,       Collapse = 27,
			SelectChildren = 28,       SelectChildren_Disabled = 29,    InsertObject = 30,     ViewScript = 31,        AddStar = 32,         RemoveStar = 33,          Script_Disabled = 34,
			LocalScript_Disabled = 35, Play = 36,                       Pause = 37,            Rename_Disabled = 38,   Empty = 1000
		})
		Enviorment.LargeIcons = IconMap.new("rbxassetid://129589545519436",256,256,32,32)
		Enviorment.LargeIcons:SetDict({
			Explorer = 0, Properties = 1, Script_Viewer = 2, Watcher = 3, Output = 4, ScriptEdit = 5, Book = 6, Executor = 7, Object = 8, Honey = 9 })
		
		
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

			Main.MainGui.OpenButton.Text = val and "X" or "Dex++++"
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
				{2,"TextButton",{AnchorPoint=Vector2.new(0.5,0),AutoButtonColor=false,BackgroundColor3=Color3.new(0.17647059261799,0.17647059261799,0.17647059261799),BorderSizePixel=0,Font=4,Name="OpenButton",Parent={1},Position=UDim2.new(0.5,0,0,2),Size=UDim2.new(0,64,0,32),Text="Dex++++",TextColor3=Color3.new(1,1,1),TextSize=16,TextTransparency=0.20000000298023,}},
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
			openButton.MainFrame.BottomFrame.Settings.Activated:Connect(function()
				Apps.Settings.Window:ShowAndFocus()
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
		Intro.SetProgress("Done",1)
		task.wait(1)
		Intro.Close()
	end
}
return s
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
local IconList = {
	
	
}
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
		label.ImageRectSize = Vector2.new(self.IconSizeX, self.IconSizeY)
	else
		label.ImageRectOffset = Vector2.new(self.IconSizeX * index, 0)
		label.ImageRectSize = Vector2.new(self.IconSizeX, self.IconSizeY)
	end
end
function funcs:GetDisplayInfo(index)
	print(index)
	if index == nil then
		return self.MapId, Vector2.new(0, 0), Vector2.new(0, 0)
	end
	if self.NumX then
		return
			self.MapId,
			Vector2.new(self.IconSizeX * (index % self.NumX), self.IconSizeY * math.floor(index / self.NumX)), 
			Vector2.new(self.IconSizeX, self.IconSizeY)
	else
		return self.MapId,Vector2.new(self.IconSizeX * index, 0), Vector2.new(self.IconSizeX, self.IconSizeY)
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
	print(mapId,mapSizeX,mapSizeY,iconSizeX,iconSizeY)
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

return { new = new, newLinear = newLinear, IconList = IconList}
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
funcs.SetEditable = function(self,value)
	self.GuiElems.Int_Box.TextEditable = value
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
	int_box.TextEditable = true
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
					BackgroundColor3 = Enviorment.Settings.Theme.Checkbox,
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
					BackgroundColor3 = Enviorment.Settings.Theme.Syntax.Background,
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
					BackgroundColor3 = Enviorment.Settings.Theme.Highlight7,
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
					BackgroundColor3 = Enviorment.Settings.Theme.Highlight7,
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
					BackgroundColor3 = Enviorment.Settings.Theme.Highlight7,
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
					BackgroundColor3 = Enviorment.Settings.Theme.Highlight7,
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
					ImageColor3 = Enviorment.Settings.Theme.ListSelection3,
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
			Background = Enviorment.Settings.Theme.Syntax.Background,
			Primary = Enviorment.Settings.Theme.CheckboxPrimary,
			Secondary = Enviorment.Settings.Theme.CheckboxSecondary,
			Disabled = Enviorment.Settings.Theme.Highlight3,
			DisabledBackground = Enviorment.Settings.Theme.Main1,
			DisabledCheck = Enviorment.Settings.Theme.Highlight2,
		},
	}, mt)
	--print(obj.Colors)
	initGui(obj)
	return obj
end

local function fromFrame(frame)
	local obj = setmetatable({
		Toggled = false,
		Disabled = false,
		Colors = {
			--Background = c3(36, 36, 36),
			Background = Enviorment.Settings.Theme.Syntax.Background,
			--Primary = c3(49, 176, 230),
			Primary = Enviorment.Settings.Theme.Primary,
			--Secondary = c3(25, 25, 25),
			Secondary = Enviorment.Settings.Theme.CheckboxSecondary,
			--Disabled = c3(64, 64, 64),
			Disabled = Enviorment.Settings.Theme.Highlight3,
			--DisabledBackground = c3(52, 52, 52),
			DisabledBackground = Enviorment.Settings.Theme.Main1,
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

module.new = function(Parent : Instance | nil)
	local new = {
		Gui = Instance.new("Frame")
	}
	new.Gui.BorderSizePixel = 0
	new.Gui.Parent = Parent
	local mt = {
		__index = function(s,k)
			if k == "Gui" then
				return rawget(s,"Gui")
			end
			return rawget(s,"Gui")[k]
		end,
		__newindex = function(s,k,v)
			if k == "Gui" then
				rawset(s,k,v)
			else
				rawget(s,"Gui")[k] = v
			end
		end,
	}
	setmetatable(new,mt)
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

--local theme = {
--	MainColor1 = Lib.Settings.Theme.Main1,
--	MainColor2 = Lib.Settings.Theme.Main2,
--	Button = Lib.Settings.Theme.Button,
--}

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
				BackgroundColor3 = Lib.Settings.Theme.Main2,
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
				BackgroundColor3 = Lib.Settings.Theme.Outline1,
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
				BackgroundColor3 = Lib.Settings.Theme.Main1,
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
				Position =  UDim2.new(0, 5, 0, 0),
				Size = UDim2.new(1, -10, 0, 20),
				Text = "Window",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = Lib.Settings.Window.TitleOnMiddle and Enum.TextXAlignment.Center or 0,
			},
		},
		{
			7,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Lib.Settings.Theme.Menu,
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
				BackgroundColor3 = Lib.Settings.Theme.Menu,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 =Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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
				BackgroundColor3 = Lib.Settings.Theme.Highlight5,
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

	Lib.Settings.Window.Changed:Connect(function(key,value)
		if key == "TitleOnMiddle" then
			if value then
				guiTopBar.Title.TextXAlignment = Enum.TextXAlignment.Center
			else
				guiTopBar.Title.TextXAlignment = Enum.TextXAlignment.Left
			end
		end
		if key == "BackgroundTransparency" then
			guiMain.Content.BackgroundTransparency = value--Lib.Settings.Window.BackgroundTransparency
		end
	end)
	guiMain.Content.BackgroundTransparency = Lib.Settings.Window.BackgroundTransparency
	
	Lib.Settings.Theme.Changed:Connect(function(k,v,old)
		local OnGui;OnGui = function(g)
			if g:IsA("GuiObject") then
				pcall(function()
					if g.BackgroundColor3 == old then
						g.BackgroundColor3 = v
					end
				end)
				pcall(function()
					if g.BorderColor3 == old then
						g.BorderColor3 = v
					end
				end)
				pcall(function()
					if g.ImageColor3 == old then
						g.ImageColor3 = v
					end
				end)
				pcall(function()
					if g.TextColor3 == old then
						g.TextColor3 = v
					end
				end)
			end
			for _, x in g:GetChildren() do
				OnGui(x)
			end
		end
		OnGui(guiMain)
	end)
	
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
	leftSide.Frame.BackgroundTransparency = Lib.Settings.Window.BackgroundTransparency
	rightSide.Frame.BackgroundTransparency = Lib.Settings.Window.BackgroundTransparency
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
				resizer.BackgroundColor3 = Lib.Settings.Theme.Main2
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent, mouseEvent

				local offX = mouse.X - resizer.AbsolutePosition.X
				local offY = mouse.Y - resizer.AbsolutePosition.Y

				side.Resizing = resizer
				resizer.BackgroundColor3 = Lib.Settings.Theme.Main2

				releaseEvent = UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						side.Resizing = false
						resizer.BackgroundColor3 = Lib.Settings.Theme.Button
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
			resizer.BackgroundColor3 = Lib.Settings.Theme.Button
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
    local script = G2L["13"];-- TODO: Theme
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
				BackgroundColor3 = Lib.Settings.Theme.Syntax.Background,
				BorderColor3 = Lib.Settings.Theme.Syntax.Background,
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
				BackgroundColor3 = Lib.Settings.Theme.Main2,
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
				BackgroundColor3 = Lib.Settings.Theme.Main1,
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
				BackgroundColor3 = Lib.Settings.Theme.Main1,
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
				BackgroundColor3 = Lib.Settings.Theme.TextBox,
				BorderColor3 = Lib.Settings.Theme.Outline3,
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
				PlaceholderColor3 = Lib.Settings.Theme.PlaceholderText,
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
				BackgroundColor3 = Lib.Settings.Theme.Syntax.Background,
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
				BackgroundColor3 = Lib.Settings.Theme.Main1,
				BackgroundTransparency = 1,
				BorderColor3 = Lib.Settings.Theme.ListSelectionOutline,
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
				TextColor3 = Lib.Settings.Theme.Highlight6,
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
				TextColor3 = Lib.Settings.Theme.Highlight6,
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
				BackgroundColor3 = Lib.Settings.Theme.Outline2,
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
				BackgroundColor3 = Lib.Settings.Theme.Main1,
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
	theme.ContentColor = data.ContentColor or Lib.Settings.Theme.Menu
	theme.OutlineColor = data.OutlineColor or Lib.Settings.Theme.Menu
	theme.DividerColor = data.DividerColor or Lib.Settings.Theme.Outline2
	theme.TextColor = data.TextColor or Lib.Settings.Theme.Text
	theme.HighlightColor = data.HighlightColor or Lib.Settings.Theme.Main1

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
			Text="Dex++++",
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

static.new = function(count)
	local obj;
	obj = setmetatable({
		GuiElems = {},
		Arguments = {},
		Interaction = Signal.new(),
	},funcs)
	local w = Window.new()
	obj.GuiElems.Window = w;
	
	obj.Window = w;
	
	obj.GuiElems.Window:SetTitle('Function Arguments')
	Instance.new("UIListLayout",obj.GuiElems.Window.GuiElems.Content)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = obj.GuiElems.Window.GuiElems.Content
	frm.Name = "Indent"
	frm.BackgroundTransparency = 1
	--obj.GuiElems.Window.GuiElems.Content.Line:Destroy()
	for i=1,(count or 10) do obj:AddArgument() end
	obj.Window:SetSize(obj.Window.SizeX,(obj.Window.SizeY) / 10 * (count or 10))
	if count == 1 then
		obj.Window:SetSize(obj.Window.SizeX,obj.Window.SizeY + 50)
	elseif count == 10 then
		obj.Window:SetSize(obj.Window.SizeX,obj.Window.SizeY - 80)
	end
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
				BackgroundColor3 = Enviorment.Settings.Theme.ButtonPress,
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
	cursor.BackgroundColor3 = Enviorment.Settings.Theme.Highlight6
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
				BackgroundColor3 = Enviorment.Settings.Theme.ButtonPress,
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
			selectionHighlight.BackgroundColor3 = Enviorment.Settings.Theme.Syntax.SelectionBack
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
			floor(color.R * 255),
			floor(color.G * 255),
			floor(color.B * 255)
		)
	end

	self.RichTemplates = templates
end

funcs.ApplyTheme = function(self)
	local colors = Enviorment.Settings.Theme.Syntax
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
		Colors = Enviorment.Settings.Theme.Syntax,
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
	--Enviorment.Settings.Theme.Syntax.Changed:Connect(function()
	--	obj:ApplyTheme()
	--end)
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
G2L_MODULES[G2L["1c"]] = {
Closure = function()
    local script = G2L["1c"];local module = {}

module.New = function()
	local view = {
		NodeGroups = {
			
		},
		YOffset = 0,
	}
	view.NewGroup = function(name,content)
		view.NodeGroups[name] = content or {}
	end
	view.GetAtIndex = function(index)
		local final = index + view.YOffset
		local c = 0
		for _, group in view.NodeGroups do
			for _, n in group do
				c += 1
				if c == final then
					return n
				end
			end
		end
		return nil
	end
end

return module
end;
};
G2L_MODULES[G2L["1e"]] = {
Closure = function()
    local script = G2L["1e"];return {
	MapId = 483448923,
	IconSize = 16,
	Witdh = 16,
	Height = 16,
	Icons = {
		["Accessory"] = 32;
		["Accoutrement"] = 32;
		["AdService"] = 73;
		["Animation"] = 60;
		["AnimationController"] = 60;
		["AnimationTrack"] = 60;
		["Animator"] = 60;
		["ArcHandles"] = 56;
		["AssetService"] = 72;
		["Attachment"] = 34;
		["Backpack"] = 20;
		["BadgeService"] = 75;
		["BallSocketConstraint"] = 89;
		["BillboardGui"] = 64;
		["BinaryStringValue"] = 4;
		["BindableEvent"] = 67;
		["BindableFunction"] = 66;
		["BlockMesh"] = 8;
		["BloomEffect"] = 90;
		["BlurEffect"] = 90;
		["BodyAngularVelocity"] = 14;
		["BodyForce"] = 14;
		["BodyGyro"] = 14;
		["BodyPosition"] = 14;
		["BodyThrust"] = 14;
		["BodyVelocity"] = 14;
		["BoolValue"] = 4;
		["BoxHandleAdornment"] = 54;
		["BrickColorValue"] = 4;
		["Camera"] = 5;
		["CFrameValue"] = 4;
		["CharacterMesh"] = 60;
		["Chat"] = 33;
		["ClickDetector"] = 41;
		["CollectionService"] = 30;
		["Color3Value"] = 4;
		["ColorCorrectionEffect"] = 90;
		["ConeHandleAdornment"] = 54;
		["Configuration"] = 58;
		["ContentProvider"] = 72;
		["ContextActionService"] = 41;
		["CoreGui"] = 46;
		["CoreScript"] = 18;
		["CornerWedgePart"] = 1;
		["CustomEvent"] = 4;
		["CustomEventReceiver"] = 4;
		["CylinderHandleAdornment"] = 54;
		["CylinderMesh"] = 8;
		["CylindricalConstraint"] = 89;
		["Debris"] = 30;
		["Decal"] = 7;
		["Dialog"] = 62;
		["DialogChoice"] = 63;
		["DoubleConstrainedValue"] = 4;
		["Explosion"] = 36;
		["FileMesh"] = 8;
		["Fire"] = 61;
		["Flag"] = 38;
		["FlagStand"] = 39;
		["FloorWire"] = 4;
		["Folder"] = 70;
		["ForceField"] = 37;
		["Frame"] = 48;
		["GamePassService"] = 19;
		["Glue"] = 34;
		["GuiButton"] = 52;
		["GuiMain"] = 47;
		["GuiService"] = 47;
		["Handles"] = 53;
		["HapticService"] = 84;
		["Hat"] = 45;
		["HingeConstraint"] = 89;
		["Hint"] = 33;
		["HopperBin"] = 22;
		["HttpService"] = 76;
		["Humanoid"] = 9;
		["ImageButton"] = 52;
		["ImageLabel"] = 49;
		["InsertService"] = 72;
		["IntConstrainedValue"] = 4;
		["IntValue"] = 4;
		["JointInstance"] = 34;
		["JointsService"] = 34;
		["Keyframe"] = 60;
		["KeyframeSequence"] = 60;
		["KeyframeSequenceProvider"] = 60;
		["Lighting"] = 13;
		["LineHandleAdornment"] = 54;
		["LocalScript"] = 18;
		["LogService"] = 87;
		["MarketplaceService"] = 46;
		["Message"] = 33;
		["Model"] = 2;
		["ModuleScript"] = 71;
		["Motor"] = 34;
		["Motor6D"] = 34;
		["MoveToConstraint"] = 89;
		["NegateOperation"] = 78;
		["NetworkClient"] = 16;
		["NetworkReplicator"] = 29;
		["NetworkServer"] = 15;
		["NumberValue"] = 4;
		["ObjectValue"] = 4;
		["Pants"] = 44;
		["ParallelRampPart"] = 1;
		["Part"] = 1;
		["ParticleEmitter"] = 69;
		["PartPairLasso"] = 57;
		["PathfindingService"] = 37;
		["Platform"] = 35;
		["Player"] = 12;
		["PlayerGui"] = 46;
		["Players"] = 21;
		["PlayerScripts"] = 82;
		["PointLight"] = 13;
		["PointsService"] = 83;
		["Pose"] = 60;
		["PrismaticConstraint"] = 89;
		["PrismPart"] = 1;
		["PyramidPart"] = 1;
		["RayValue"] = 4;
		["ReflectionMetadata"] = 86;
		["ReflectionMetadataCallbacks"] = 86;
		["ReflectionMetadataClass"] = 86;
		["ReflectionMetadataClasses"] = 86;
		["ReflectionMetadataEnum"] = 86;
		["ReflectionMetadataEnumItem"] = 86;
		["ReflectionMetadataEnums"] = 86;
		["ReflectionMetadataEvents"] = 86;
		["ReflectionMetadataFunctions"] = 86;
		["ReflectionMetadataMember"] = 86;
		["ReflectionMetadataProperties"] = 86;
		["ReflectionMetadataYieldFunctions"] = 86;
		["RemoteEvent"] = 80;
		["RemoteFunction"] = 79;
		["ReplicatedFirst"] = 72;
		["ReplicatedStorage"] = 72;
		["RightAngleRampPart"] = 1;
		["RocketPropulsion"] = 14;
		["RodConstraint"] = 89;
		["RopeConstraint"] = 89;
		["Rotate"] = 34;
		["RotateP"] = 34;
		["RotateV"] = 34;
		["RunService"] = 66;
		["ScreenGui"] = 47;
		["Script"] = 6;
		["ScrollingFrame"] = 48;
		["Seat"] = 35;
		["Selection"] = 55;
		["SelectionBox"] = 54;
		["SelectionPartLasso"] = 57;
		["SelectionPointLasso"] = 57;
		["SelectionSphere"] = 54;
		["ServerScriptService"] = 0;
		["ServerStorage"] = 74;
		["Shirt"] = 43;
		["ShirtGraphic"] = 40;
		["SkateboardPlatform"] = 35;
		["Sky"] = 28;
		["SlidingBallConstraint"] = 89;
		["Smoke"] = 59;
		["Snap"] = 34;
		["Sound"] = 11;
		["SoundService"] = 31;
		["Sparkles"] = 42;
		["SpawnLocation"] = 25;
		["SpecialMesh"] = 8;
		["SphereHandleAdornment"] = 54;
		["SpotLight"] = 13;
		["SpringConstraint"] = 89;
		["StarterCharacterScripts"] = 82;
		["StarterGear"] = 20;
		["StarterGui"] = 46;
		["StarterPack"] = 20;
		["StarterPlayer"] = 88;
		["StarterPlayerScripts"] = 82;
		["Status"] = 2;
		["StringValue"] = 4;
		["SunRaysEffect"] = 90;
		["SurfaceGui"] = 64;
		["SurfaceLight"] = 13;
		["SurfaceSelection"] = 55;
		["Team"] = 24;
		["Teams"] = 23;
		["TeleportService"] = 81;
		["Terrain"] = 65;
		["TerrainRegion"] = 65;
		["TestService"] = 68;
		["TextBox"] = 51;
		["TextButton"] = 51;
		["TextLabel"] = 50;
		["Texture"] = 10;
		["TextureTrail"] = 4;
		["Tool"] = 17;
		["TouchTransmitter"] = 37;
		["TrussPart"] = 1;
		["UnionOperation"] = 77;
		["UserInputService"] = 84;
		["Vector3Value"] = 4;
		["VehicleSeat"] = 35;
		["VelocityMotor"] = 34;
		["WedgePart"] = 1;
		["Weld"] = 34;
		["Workspace"] = 19;

	}
}
end;
};
G2L_MODULES[G2L["1f"]] = {
Closure = function()
    local script = G2L["1f"];return {
	MapId = (114851699900089),
	IconSize = 32,
	Witdh = 25,
	Height = 25,
	Icons = {
		Accessory = 1,
		Accoutrement = 2,
		Actor = 3,
		AdGui = 4,
		AdPortal = 5,
		AdService = 6,
		AdvancedDragger = 7,
		AirController = 8,
		AlignOrientation = 9,
		AlignPosition = 10,
		AnalysticsService = 11,
		AnalysticsSettings = 12,
		AnalyticsService = 13,
		AngularVelocity = 14,
		Animation = 15,
		AnimationClip = 16,
		AnimationClipProvider = 17,
		AnimationController = 18,
		AnimationFromVideoCreatorService = 19,
		AnimationFromVideoCreatorStudioService = 20,
		AnimationRigData = 21,
		AnimationStreamTrack = 22,
		AnimationTrack = 23,
		Animator = 24,
		AppStorageService = 25,
		AppUpdateService = 26,
		ArcHandles = 27,
		AssetCounterService = 28,
		AssetDeliveryProxy = 29,
		AssetImportService = 30,
		AssetImportSession = 31,
		AssetManagerService = 32,
		AssetService = 33,
		AssetSoundEffect = 34,
		Atmosphere = 35,
		Attachment = 36,
		AvatarEditorService = 37,
		AvatarImportService = 38,
		Backpack = 39,
		BackpackItem = 40,
		BadgeService = 41,
		BallSocketConstraint = 42,
		BasePart = 43,
		BasePlayerGui = 44,
		BaseScript = 45,
		BaseWrap = 46,
		Beam = 47,
		BevelMesh = 48,
		BillboardGui = 49,
		BinaryStringValue = 50,
		BindableEvent = 51,
		BindableFunction = 52,
		BlockMesh = 53,
		BloomEffect = 54,
		BlurEffect = 55,
		BodyAngularVelocity = 56,
		BodyColors = 57,
		BodyForce = 58,
		BodyGyro = 59,
		BodyMover = 60,
		BodyPosition = 61,
		BodyThrust = 62,
		BodyVelocity = 63,
		Bone = 64,
		BoolValue = 65,
		BoxHandleAdornment = 66,
		Breakpoint = 67,
		BreakpointManager = 68,
		BrickColorValue = 69,
		BrowserService = 70,
		BubbleChatConfiguration = 71,
		BulkImportService = 72,
		CacheableContentProvider = 73,
		CalloutService = 74,
		Camera = 75,
		CanvasGroup = 76,
		CatalogPages = 77,
		CFrameValue = 78,
		ChangeHistoryService = 79,
		ChannelSelectorSoundEffect = 80,
		CharacterAppearance = 81,
		CharacterMesh = 82,
		Chat = 83,
		ChatInputBarConfiguration = 84,
		ChatWindowConfiguration = 85,
		ChorusSoundEffect = 86,
		ClickDetector = 87,
		ClientReplicator = 88,
		ClimbController = 89,
		Clothing = 90,
		Clouds = 91,
		ClusterPacketCache = 92,
		CollectionService = 93,
		Color3Value = 94,
		ColorCorrectionEffect = 95,
		CommandInstance = 96,
		CommandService = 97,
		CompressorSoundEffect = 98,
		ConeHandleAdornment = 99,
		Configuration = 100,
		ConfigureServerService = 101,
		Constraint = 102,
		ContentProvider = 103,
		ContextActionService = 104,
		Controller = 105,
		ControllerBase = 106,
		ControllerManager = 107,
		ControllerService = 108,
		CookiesService = 109,
		CoreGui = 110,
		CorePackages = 111,
		CoreScript = 112,
		CoreScriptSyncService = 113,
		CornerWedgePart = 114,
		CrossDMScriptChangeListener = 115,
		CSGDictionaryService = 116,
		CurveAnimation = 117,
		CustomEvent = 118,
		CustomEventReceiver = 119,
		CustomSoundEffect = 120,
		CylinderHandleAdornment = 121,
		CylinderMesh = 122,
		CylindricalConstraint = 123,
		DataModel = 124,
		DataModelMesh = 125,
		DataModelPatchService = 126,
		DataModelSession = 127,
		DataStore = 128,
		DataStoreIncrementOptions = 129,
		DataStoreInfo = 130,
		DataStoreKey = 131,
		DataStoreKeyInfo = 132,
		DataStoreKeyPages = 133,
		DataStoreListingPages = 134,
		DataStoreObjectVersionInfo = 135,
		DataStoreOptions = 136,
		DataStorePages = 137,
		DataStoreService = 138,
		DataStoreSetOptions = 139,
		DataStoreVersionPages = 140,
		Debris = 141,
		DebuggablePluginWatcher = 142,
		DebuggerBreakpoint = 143,
		DebuggerConnection = 144,
		DebuggerConnectionManager = 145,
		DebuggerLuaResponse = 146,
		DebuggerManager = 147,
		DebuggerUIService = 148,
		DebuggerVariable = 149,
		DebuggerWatch = 150,
		DebugSettings = 151,
		Decal = 152,
		DepthOfFieldEffect = 153,
		DeviceIdService = 154,
		Dialog = 155,
		DialogChoice = 156,
		DistortionSoundEffect = 157,
		DockWidgetPluginGui = 158,
		DoubleConstrainedValue = 159,
		DraftsService = 160,
		Dragger = 161,
		DraggerService = 162,
		DynamicRotate = 163,
		EchoSoundEffect = 164,
		EmotesPages = 165,
		EqualizerSoundEffect = 166,
		EulerRotationCurve = 167,
		EventIngestService = 168,
		Explosion = 169,
		FaceAnimatorService = 170,
		FaceControls = 171,
		FaceInstance = 172,
		FacialAnimationRecordingService = 173,
		FacialAnimationStreamingService = 174,
		Feature = 175,
		File = 176,
		FileMesh = 177,
		Fire = 178,
		Flag = 179,
		FlagStand = 180,
		FlagStandService = 181,
		FlangeSoundEffect = 182,
		FloatCurve = 183,
		FloorWire = 184,
		FlyweightService = 185,
		Folder = 186,
		ForceField = 187,
		FormFactorPart = 188,
		Frame = 189,
		FriendPages = 190,
		FriendService = 191,
		FunctionalTest = 192,
		GamepadService = 193,
		GamePassService = 194,
		GameSettings = 195,
		GenericSettings = 196,
		Geometry = 197,
		GetTextBoundsParams = 198,
		GlobalDataStore = 199,
		GlobalSettings = 200,
		Glue = 201,
		GoogleAnalyticsConfiguration = 202,
		GroundController = 203,
		GroupService = 204,
		GuiBase = 205,
		GuiBase2d = 206,
		GuiBase3d = 207,
		GuiButton = 208,
		GuidRegistryService = 209,
		GuiLabel = 210,
		GuiMain = 211,
		GuiObject = 212,
		GuiService = 213,
		HandleAdornment = 214,
		Handles = 215,
		HandlesBase = 216,
		HapticService = 217,
		Hat = 218,
		HeightmapImporterService = 219,
		HiddenSurfaceRemovalAsset = 220,
		Highlight = 221,
		HingeConstraint = 222,
		Hint = 223,
		Hole = 224,
		Hopper = 225,
		HopperBin = 226,
		HSRDataContentProvider = 227,
		HttpRbxApiService = 228,
		HttpRequest = 229,
		HttpService = 230,
		Humanoid = 231,
		HumanoidController = 232,
		HumanoidDescription = 233,
		IKControl = 234,
		ILegacyStudioBridge = 235,
		ImageButton = 236,
		ImageHandleAdornment = 237,
		ImageLabel = 238,
		ImporterAnimationSettings = 239,
		ImporterBaseSettings = 240,
		ImporterFacsSettings = 241,
		ImporterGroupSettings = 242,
		ImporterJointSettings = 243,
		ImporterMaterialSettings = 244,
		ImporterMeshSettings = 245,
		ImporterRootSettings = 246,
		IncrementalPatchBuilder = 247,
		InputObject = 248,
		InsertService = 249,
		Instance = 250,
		InstanceAdornment = 251,
		IntConstrainedValue = 252,
		IntValue = 253,
		InventoryPages = 254,
		IXPService = 255,
		JointInstance = 256,
		JointsService = 257,
		KeyboardService = 258,
		Keyframe = 259,
		KeyframeMarker = 260,
		KeyframeSequence = 261,
		KeyframeSequenceProvider = 262,
		LanguageService = 263,
		LayerCollector = 264,
		LegacyStudioBridge = 265,
		Light = 266,
		Lighting = 267,
		LinearVelocity = 268,
		LineForce = 269,
		LineHandleAdornment = 270,
		LocalDebuggerConnection = 271,
		LocalizationService = 272,
		LocalizationTable = 273,
		LocalScript = 274,
		LocalStorageService = 275,
		LodDataEntity = 276,
		LodDataService = 277,
		LoginService = 278,
		LogService = 279,
		LSPFileSyncService = 280,
		LuaSettings = 281,
		LuaSourceContainer = 282,
		LuauScriptAnalyzerService = 283,
		LuaWebService = 284,
		ManualGlue = 285,
		ManualSurfaceJointInstance = 286,
		ManualWeld = 287,
		MarkerCurve = 288,
		MarketplaceService = 289,
		MaterialService = 290,
		MaterialVariant = 291,
		MemoryStoreQueue = 292,
		MemoryStoreService = 293,
		MemoryStoreSortedMap = 294,
		MemStorageConnection = 295,
		MemStorageService = 296,
		MeshContentProvider = 297,
		MeshPart = 298,
		Message = 299,
		MessageBusConnection = 300,
		MessageBusService = 301,
		MessagingService = 302,
		MetaBreakpoint = 303,
		MetaBreakpointContext = 304,
		MetaBreakpointManager = 305,
		Model = 306,
		ModuleScript = 307,
		Motor = 308,
		Motor6D = 309,
		MotorFeature = 310,
		Mouse = 311,
		MouseService = 312,
		MultipleDocumentInterfaceInstance = 313,
		NegateOperation = 314,
		NetworkClient = 315,
		NetworkMarker = 316,
		NetworkPeer = 317,
		NetworkReplicator = 318,
		NetworkServer = 319,
		NetworkSettings = 320,
		NoCollisionConstraint = 321,
		NonReplicatedCSGDictionaryService = 322,
		NotificationService = 323,
		NumberPose = 324,
		NumberValue = 325,
		ObjectValue = 326,
		OrderedDataStore = 327,
		OutfitPages = 328,
		PackageLink = 329,
		PackageService = 330,
		PackageUIService = 331,
		Pages = 332,
		Pants = 333,
		ParabolaAdornment = 334,
		Part = 335,
		PartAdornment = 336,
		ParticleEmitter = 337,
		PartOperation = 338,
		PartOperationAsset = 339,
		PatchMapping = 340,
		Path = 341,
		PathfindingLink = 342,
		PathfindingModifier = 343,
		PathfindingService = 344,
		PausedState = 345,
		PausedStateBreakpoint = 346,
		PausedStateException = 347,
		PermissionsService = 348,
		PhysicsService = 349,
		PhysicsSettings = 350,
		PitchShiftSoundEffect = 351,
		Plane = 352,
		PlaneConstraint = 353,
		Platform = 354,
		Player = 355,
		PlayerEmulatorService = 356,
		PlayerGui = 357,
		PlayerMouse = 358,
		Players = 359,
		PlayerScripts = 360,
		Plugin = 361,
		PluginAction = 362,
		PluginDebugService = 363,
		PluginDragEvent = 364,
		PluginGui = 365,
		PluginGuiService = 366,
		PluginManagementService = 367,
		PluginManager = 368,
		PluginManagerInterface = 369,
		PluginMenu = 370,
		PluginMouse = 371,
		PluginPolicyService = 372,
		PluginToolbar = 373,
		PluginToolbarButton = 374,
		PointLight = 375,
		PointsService = 376,
		PolicyService = 377,
		Pose = 378,
		PoseBase = 379,
		PostEffect = 380,
		PrismaticConstraint = 381,
		ProcessInstancePhysicsService = 382,
		ProximityPrompt = 383,
		ProximityPromptService = 384,
		PublishService = 385,
		PVAdornment = 386,
		PVInstance = 387,
		QWidgetPluginGui = 388,
		RayValue = 389,
		RbxAnalyticsService = 390,
		ReflectionMetadata = 391,
		ReflectionMetadataCallbacks = 392,
		ReflectionMetadataClass = 393,
		ReflectionMetadataClasses = 394,
		ReflectionMetadataEnum = 395,
		ReflectionMetadataEnumItem = 396,
		ReflectionMetadataEnums = 397,
		ReflectionMetadataEvents = 398,
		ReflectionMetadataFunctions = 399,
		ReflectionMetadataItem = 400,
		ReflectionMetadataMember = 401,
		ReflectionMetadataProperties = 402,
		ReflectionMetadataYieldFunctions = 403,
		RemoteDebuggerServer = 404,
		RemoteEvent = 405,
		RemoteFunction = 406,
		RenderingTest = 407,
		RenderSettings = 408,
		ReplicatedFirst = 409,
		ReplicatedStorage = 410,
		ReverbSoundEffect = 411,
		RigidConstraint = 412,
		RobloxPluginGuiService = 413,
		RobloxReplicatedStorage = 414,
		RocketPropulsion = 415,
		RodConstraint = 416,
		RopeConstraint = 417,
		Rotate = 418,
		RotateP = 419,
		RotateV = 420,
		RotationCurve = 421,
		RtMessagingService = 422,
		RunningAverageItemDouble = 423,
		RunningAverageItemInt = 424,
		RunningAverageTimeIntervalItem = 425,
		RunService = 426,
		RuntimeScriptService = 427,
		ScreenGui = 428,
		ScreenshotHud = 429,
		Script = 430,
		ScriptChangeService = 431,
		ScriptCloneWatcher = 432,
		ScriptCloneWatcherHelper = 433,
		ScriptContext = 434,
		ScriptDebugger = 435,
		ScriptDocument = 436,
		ScriptEditorService = 437,
		ScriptRegistrationService = 438,
		ScriptService = 439,
		ScrollingFrame = 440,
		Seat = 441,
		Selection = 442,
		SelectionBox = 443,
		SelectionLasso = 444,
		SelectionPartLasso = 445,
		SelectionPointLasso = 446,
		SelectionSphere = 447,
		ServerReplicator = 448,
		ServerScriptService = 449,
		ServerStorage = 450,
		ServiceProvider = 451,
		SessionService = 452,
		Shirt = 453,
		ShirtGraphic = 454,
		SkateboardController = 455,
		SkateboardPlatform = 456,
		Skin = 457,
		Sky = 458,
		SlidingBallConstraint = 459,
		Smoke = 460,
		Snap = 461,
		SnippetService = 462,
		SocialService = 463,
		SolidModelContentProvider = 464,
		Sound = 465,
		SoundEffect = 466,
		SoundGroup = 467,
		SoundService = 468,
		Sparkles = 469,
		SpawnerService = 470,
		SpawnLocation = 471,
		Speaker = 472,
		SpecialMesh = 473,
		SphereHandleAdornment = 474,
		SpotLight = 475,
		SpringConstraint = 476,
		StackFrame = 477,
		StandalonePluginScripts = 478,
		StandardPages = 479,
		StarterCharacterScripts = 480,
		StarterGear = 481,
		StarterGui = 482,
		StarterPack = 483,
		StarterPlayer = 484,
		StarterPlayerScripts = 485,
		Stats = 486,
		StatsItem = 487,
		Status = 488,
		StopWatchReporter = 489,
		StringValue = 490,
		Studio = 491,
		StudioAssetService = 492,
		StudioData = 493,
		StudioDeviceEmulatorService = 494,
		StudioHighDpiService = 495,
		StudioPublishService = 496,
		StudioScriptDebugEventListener = 497,
		StudioService = 498,
		StudioTheme = 499,
		SunRaysEffect = 500,
		SurfaceAppearance = 501,
		SurfaceGui = 502,
		SurfaceGuiBase = 503,
		SurfaceLight = 504,
		SurfaceSelection = 505,
		SwimController = 506,
		TaskScheduler = 507,
		Team = 508,
		TeamCreateService = 509,
		Teams = 510,
		TeleportAsyncResult = 511,
		TeleportOptions = 512,
		TeleportService = 513,
		TemporaryCageMeshProvider = 514,
		TemporaryScriptService = 515,
		Terrain = 516,
		TerrainDetail = 517,
		TerrainRegion = 518,
		TestService = 519,
		TextBox = 520,
		TextBoxService = 521,
		TextButton = 522,
		TextChannel = 523,
		TextChatCommand = 524,
		TextChatConfigurations = 525,
		TextChatMessage = 526,
		TextChatMessageProperties = 527,
		TextChatService = 528,
		TextFilterResult = 529,
		TextLabel = 530,
		TextService = 531,
		TextSource = 532,
		Texture = 533,
		ThirdPartyUserService = 534,
		ThreadState = 535,
		TimerService = 536,
		ToastNotificationService = 537,
		Tool = 538,
		ToolboxService = 539,
		Torque = 540,
		TorsionSpringConstraint = 541,
		TotalCountTimeIntervalItem = 542,
		TouchInputService = 543,
		TouchTransmitter = 544,
		TracerService = 545,
		TrackerStreamAnimation = 546,
		Trail = 547,
		Translator = 548,
		TremoloSoundEffect = 549,
		TriangleMeshPart = 550,
		TrussPart = 551,
		Tween = 552,
		TweenBase = 553,
		TweenService = 554,
		UGCValidationService = 555,
		UIAspectRatioConstraint = 556,
		UIBase = 557,
		UIComponent = 558,
		UIConstraint = 559,
		UICorner = 560,
		UIGradient = 561,
		UIGridLayout = 562,
		UIGridStyleLayout = 563,
		UILayout = 564,
		UIListLayout = 565,
		UIPadding = 566,
		UIPageLayout = 567,
		UIScale = 568,
		UISizeConstraint = 569,
		UIStroke = 570,
		UITableLayout = 571,
		UITextSizeConstraint = 572,
		UnionOperation = 573,
		UniversalConstraint = 574,
		UnvalidatedAssetService = 575,
		UserGameSettings = 576,
		UserInputService = 577,
		UserService = 578,
		UserSettings = 579,
		UserStorageService = 580,
		ValueBase = 581,
		Vector3Curve = 582,
		Vector3Value = 583,
		VectorForce = 584,
		VehicleController = 585,
		VehicleSeat = 586,
		VelocityMotor = 587,
		VersionControlService = 588,
		VideoCaptureService = 589,
		VideoFrame = 590,
		ViewportFrame = 591,
		VirtualInputManager = 592,
		VirtualUser = 593,
		VisibilityService = 594,
		Visit = 595,
		VoiceChannel = 596,
		VoiceChatInternal = 597,
		VoiceChatService = 598,
		VoiceSource = 599,
		VRService = 600,
		WedgePart = 601,
		Weld = 602,
		WeldConstraint = 603,
		WireframeHandleAdornment = 604,
		Workspace = 605,
		WorldModel = 606,
		WorldRoot = 607,
		WrapLayer = 608,
		WrapTarget = 609,

	}
}
end;
};
G2L_MODULES[G2L["20"]] = {
Closure = function()
    local script = G2L["20"];return {
	MapId = 135148380892747,
	Icons = {
		Accessory = 1,
		Actor = 2,
		AdGui = 3,
		AdPortal = 4,
		AirController = 5,
		AlignOrientation = 6,
		AlignPosition = 7,
		AngularVelocity = 8,
		Animation = 9,
		AnimationConstraint = 10,
		AnimationController = 11,
		AnimationFromVideoCreatorService = 12,
		Animator = 13,
		ArcHandles = 14,
		Atmosphere = 15,
		Attachment = 16,
		AudioAnalyzer = 17,
		AudioChannelMixer = 18,
		AudioChannelSplitter = 19,
		AudioChorus = 20,
		AudioCompressor = 21,
		AudioDeviceInput = 22,
		AudioDeviceOutput = 23,
		AudioDistortion = 24,
		AudioEcho = 25,
		AudioEmitter = 26,
		AudioEqualizer = 27,
		AudioFader = 28,
		AudioFilter = 29,
		AudioFlanger = 30,
		AudioGate = 31,
		AudioLimiter = 32,
		AudioListener = 33,
		AudioPitchShifter = 34,
		AudioPlayer = 35,
		AudioRecorder = 36,
		AudioReverb = 37,
		AudioTextToSpeech = 38,
		AuroraScript = 39,
		AvatarEditorService = 40,
		AvatarSettings = 41,
		Backpack = 42,
		BallSocketConstraint = 43,
		BasePlate = 44,
		Beam = 45,
		BillboardGui = 46,
		BindableEvent = 47,
		BindableFunction = 48,
		BlockMesh = 49,
		BloomEffect = 50,
		BlurEffect = 51,
		BodyAngularVelocity = 52,
		BodyColors = 53,
		BodyForce = 54,
		BodyGyro = 55,
		BodyPosition = 56,
		BodyThrust = 57,
		BodyVelocity = 58,
		Bone = 59,
		BoolValue = 60,
		BoxHandleAdornment = 61,
		Breakpoint = 62,
		BrickColorValue = 63,
		BubbleChatConfiguration = 64,
		Buggaroo = 65,
		Camera = 66,
		CanvasGroup = 67,
		CFrameValue = 68,
		ChannelTabsConfiguration = 69,
		CharacterControllerManager = 70,
		CharacterMesh = 71,
		Chat = 72,
		ChatInputBarConfiguration = 73,
		ChatWindowConfiguration = 74,
		ChorusSoundEffect = 75,
		Class = 76,
		Cleanup = 77,
		ClickDetector = 78,
		ClientReplicator = 79,
		ClimbController = 80,
		Clouds = 81,
		Color = 82,
		ColorCorrectionEffect = 83,
		CompressorSoundEffect = 84,
		ConeHandleAdornment = 85,
		Configuration = 86,
		Constant = 87,
		Constructor = 88,
		Controller = 89,
		CoreGui = 90,
		CornerWedgePart = 91,
		CylinderHandleAdornment = 92,
		CylindricalConstraint = 93,
		Decal = 94,
		DepthOfFieldEffect = 95,
		Dialog = 96,
		DialogChoice = 97,
		DistortionSoundEffect = 98,
		DragDetector = 99,
		EchoSoundEffect = 100,
		EditableImage = 101,
		EditableMesh = 102,
		Enum = 103,
		EnumMember = 104,
		EqualizerSoundEffect = 105,
		Event = 106,
		Explosion = 107,
		FaceControls = 108,
		Field = 109,
		File = 110,
		Fire = 111,
		FlangeSoundEffect = 112,
		Folder = 113,
		ForceField = 114,
		Frame = 115,
		Function = 116,
		GameSettings = 117,
		GroundController = 118,
		Handles = 119,
		HapticEffect = 120,
		HapticService = 121,
		HeightmapImporterService = 122,
		Highlight = 123,
		HingeConstraint = 124,
		Humanoid = 125,
		HumanoidDescription = 126,
		IKControl = 127,
		ImageButton = 128,
		ImageHandleAdornment = 129,
		ImageLabel = 130,
		InputAction = 131,
		InputBinding = 132,
		InputContext = 133,
		Interface = 134,
		IntersectOperation = 135,
		Keyword = 136,
		Lighting = 137,
		LinearVelocity = 138,
		LineForce = 139,
		LineHandleAdornment = 140,
		LocalFile = 141,
		LocalizationService = 142,
		LocalizationTable = 143,
		LocalScript = 144,
		MaterialService = 145,
		MaterialVariant = 146,
		MemoryStoreService = 147,
		MeshPart = 148,
		Meshparts = 149,
		MessagingService = 150,
		Method = 151,
		Model = 152,
		Modelgroups = 153,
		Module = 154,
		ModuleScript = 155,
		Motor6D = 156,
		NegateOperation = 157,
		NetworkClient = 158,
		NoCollisionConstraint = 159,
		Operator = 160,
		PackageLink = 161,
		Pants = 162,
		Part = 163,
		ParticleEmitter = 164,
		Path2D = 165,
		PathfindingLink = 166,
		PathfindingModifier = 167,
		PathfindingService = 168,
		PitchShiftSoundEffect = 169,
		Place = 170,
		Placeholder = 171,
		Plane = 172,
		PlaneConstraint = 173,
		Player = 174,
		Players = 175,
		PluginGuiService = 176,
		PointLight = 177,
		PrismaticConstraint = 178,
		Property = 179,
		ProximityPrompt = 180,
		PublishService = 181,
		Reference = 182,
		RemoteEvent = 183,
		RemoteFunction = 184,
		RenderingTest = 185,
		ReplicatedFirst = 186,
		ReplicatedScriptService = 187,
		ReplicatedStorage = 188,
		ReverbSoundEffect = 189,
		RigidConstraint = 190,
		RobloxPluginGuiService = 191,
		RocketPropulsion = 192,
		RodConstraint = 193,
		RopeConstraint = 194,
		Rotate = 195,
		ScreenGui = 196,
		Script = 197,
		ScrollingFrame = 198,
		Seat = 199,
		Selected_Workspace = 200,
		SelectionBox = 201,
		SelectionSphere = 202,
		ServerScriptService = 203,
		ServerStorage = 204,
		Service = 205,
		Shirt = 206,
		ShirtGraphic = 207,
		SkinnedMeshPart = 208,
		Sky = 209,
		Smoke = 210,
		Snap = 211,
		Snippet = 212,
		SocialService = 213,
		Sound = 214,
		SoundEffect = 215,
		SoundGroup = 216,
		SoundService = 217,
		Sparkles = 218,
		SpawnLocation = 219,
		SpecialMesh = 220,
		SphereHandleAdornment = 221,
		SpotLight = 222,
		SpringConstraint = 223,
		StandalonePluginScripts = 224,
		StarterCharacterScripts = 225,
		StarterGui = 226,
		StarterPack = 227,
		StarterPlayer = 228,
		StarterPlayerScripts = 229,
		Struct = 230,
		StyleDerive = 231,
		StyleLink = 232,
		StyleRule = 233,
		StyleSheet = 234,
		SunRaysEffect = 235,
		SurfaceAppearance = 236,
		SurfaceGui = 237,
		SurfaceLight = 238,
		SurfaceSelection = 239,
		SwimController = 240,
		TaskScheduler = 241,
		Team = 242,
		Teams = 243,
		Terrain = 244,
		TerrainDetail = 245,
		TestService = 246,
		TextBox = 247,
		TextBoxService = 248,
		TextButton = 249,
		TextChannel = 250,
		TextChatCommand = 251,
		TextChatService = 252,
		TextLabel = 253,
		TextString = 254,
		Texture = 255,
		Tool = 256,
		Torque = 257,
		TorsionSpringConstraint = 258,
		Trail = 259,
		TremoloSoundEffect = 260,
		TrussPart = 261,
		TypeParameter = 262,
		UGCValidationService = 263,
		UIAspectRatioConstraint = 264,
		UICorner = 265,
		UIDragDetector = 266,
		UIFlexItem = 267,
		UIGradient = 268,
		UIGridLayout = 269,
		UIListLayout = 270,
		UIPadding = 271,
		UIPageLayout = 272,
		UIScale = 273,
		UISizeConstraint = 274,
		UIStroke = 275,
		UITableLayout = 276,
		UITextSizeConstraint = 277,
		UnionOperation = 278,
		Unit = 279,
		UniversalConstraint = 280,
		UnreliableRemoteEvent = 281,
		UpdateAvailable = 282,
		UserService = 283,
		Value = 284,
		Variable = 285,
		VectorForce = 286,
		VehicleSeat = 287,
		VideoDisplay = 288,
		VideoFrame = 289,
		VideoPlayer = 290,
		ViewportFrame = 291,
		VirtualUser = 292,
		VoiceChannel = 293,
		Voicechat = 294,
		VoiceChatService = 295,
		VRService = 296,
		WedgePart = 297,
		Weld = 298,
		WeldConstraint = 299,
		Wire = 300,
		WireframeHandleAdornment = 301,
		Workspace = 302,
		WorldModel = 303,
		WrapDeformer = 304,
		WrapLayer = 305,
		WrapTarget = 306,

		Color3Value = 284,
		IntValue = 284,
		NumberValue = 284,
		ObjectValue = 284,
		RayValue = 284,
		StringValue = 284,
		Vector3Value = 284,
	},
	IconSize = 32,
	Witdh = 18,
	Height = 18,
}
end;
};
G2L_MODULES[G2L["21"]] = {
Closure = function()
    local script = G2L["21"];return {
	MapId = "",
	Icons = {
		Class = "rbxasset://studio_svg_textures/Shared/InsertableObjects/Light/Standard/",
	},
	IconSize = 16,
	Witdh = 18,
	Height = 18,
}
end;
};
G2L_MODULES[G2L["23"]] = {
Closure = function()
    local script = G2L["23"];local __newindex = {}
local module_hidden = {}
local module = setmetatable({},{__newindex = function(t,i,v)
	rawset(t,i,v)
	for k, value in __newindex do
		task.spawn(value,t,i,v)
	end
end,
__index = function(t,k)
	return rawget(t,k) or module_hidden[k]
end})

module.Version = "2.2.0"
module.DefaultSettings = {
	Explorer = {
		_Recurse = true,
		IconPack = "NewDark",
		Indent = 20,
		--Sorting = true,
		TeleportToOffset = Vector3.new(0, 0, 0), -- TODO
		ClickToRename = true, -- TODO
		AutoUpdateSearch = true,
		ShowHidden = true,
		--AutoUpdateMode = 0, -- 0 Default, 1 no tree update, 2 no descendant events, 3 frozen
		PartSelectionBox = true,
		GuiSelectionBox = true, -- TODO
		--CopyPathUseGetChildren = true,
	},
	Properties = {
		_Recurse = true,
		ShowDeprecated = true,
		ShowHidden = true,
		ClearOnFocus = false,
		LoadstringInput = true,
		NumberRounding = 3,
		ShowAttributes = true,
		ShowTags = true,
		MaxAttributes = 50,
		ScaleType = 1, -- 0 Full Name Shown, 1 Equal Halves
	},
	Window = {
		BackgroundTransparency = 0,
		TitleOnMiddle = true,
	},
	Theme = {
		_Recurse = true,
		Main1              = Color3.fromRGB(52, 52, 52),
		Main2              = Color3.fromRGB(45, 45, 45),
		Main3              = Color3.fromRGB(37, 37, 37),
		Outline1           = Color3.fromRGB(33, 33, 33), -- Mainly frames
		Outline2           = Color3.fromRGB(55, 55, 55), -- Mainly button
		Outline3           = Color3.fromRGB(30, 30, 30), -- Mainly textbox
		TextBox            = Color3.fromRGB(38, 38, 38),
		Menu               = Color3.fromRGB(32, 32, 32),
		ListSelection      = Color3.fromRGB(11, 90, 175),
		ListSelectionOutline=Color3.fromRGB(86, 125,188),
		ListSelection2     = Color3.fromRGB(61, 143,220), -- Mainly intro
		ListSelection3     = Color3.fromRGB(53, 178,251), -- Mainly checkbox
		Button             = Color3.fromRGB(60, 60, 60),
		ButtonHover        = Color3.fromRGB(68, 68, 68),
		ButtonPress        = Color3.fromRGB(40, 40, 40),
		CheckboxPrimary    = Color3.fromRGB(49, 176, 230),
		CheckboxSecondary  = Color3.fromRGB(25, 25, 25),
		Checkbox           = Color3.fromRGB(26, 26, 26),
		Highlight          = Color3.fromRGB(75, 75, 75),
		Highlight2         = Color3.fromRGB(80, 80, 80),
		Highlight3         = Color3.fromRGB(64,64,64),
		Highlight4         = Color3.fromRGB(96, 96, 96),
		Highlight5         = Color3.fromRGB(70,70,70),
		Highlight6         = Color3.fromRGB(220,220,220),
		Highlight7         = Color3.fromRGB(230,230,230),
		Text               = Color3.fromRGB(255, 255, 255),
		PlaceholderText    = Color3.fromRGB(100, 100, 100),
		Important          = Color3.fromRGB(255, 0, 0),
		--ExplorerIconMap = "",
		--MiscIconMap = "",
		Syntax = {
			Text           = Color3.fromRGB(204, 204, 204),
			Background     = Color3.fromRGB(36, 36, 36),
			Selection      = Color3.fromRGB(255, 255, 255),
			SelectionBack  = Color3.fromRGB(11, 90, 175),
			Operator       = Color3.fromRGB(204, 204, 204),
			Number         = Color3.fromRGB(255, 198, 0),
			String         = Color3.fromRGB(173, 241, 149),
			Comment        = Color3.fromRGB(102, 102, 102),
			Keyword        = Color3.fromRGB(248, 109, 124),
			Error          = Color3.fromRGB(255, 0, 0),
			FindBackground = Color3.fromRGB(141, 118, 0),
			Exploit        = Color3.fromRGB(171, 84, 247),
			MatchingWord   = Color3.fromRGB(85, 85, 85),
			BuiltIn        = Color3.fromRGB(132, 214, 247),
			CurrentLine    = Color3.fromRGB(45, 50, 65),
			LocalMethod    = Color3.fromRGB(253, 251, 172),
			LocalProperty  = Color3.fromRGB(97, 161, 241),
			Nil            = Color3.fromRGB(255, 198, 0),
			Bool           = Color3.fromRGB(255, 198, 0),
			Function       = Color3.fromRGB(248, 109, 124),
			Local          = Color3.fromRGB(248, 109, 124),
			Self           = Color3.fromRGB(248, 109, 124),
			FunctionName   = Color3.fromRGB(253, 251, 172),
			Bracket        = Color3.fromRGB(204, 204, 204),
		},
	},
}
module.Settings = module.DefaultSettings
for i, setting in module.Settings do
	setting.Changed = require(script.Parent.Signal).new()
	module.Settings[i] = setmetatable({},{
		__index = function(_,k) 
			return setting[k] 
		end,
		__newindex = function(_,k,v) 
			setting.Changed:Fire(k,v,setting[k]); 
			setting[k] = v 
		end,
		__iter = function()
			return pairs(setting)
		end,
	})
end
module.IsStudio = G2L == nil
module.env = module
module.Lib = module
module.Main = module
module.fn = module
-- Enviorment Functions
module.Functions = require(script.Parent.ExecutorSupport)(module)
for i, v in module.Functions do
	module[i] = v
end
---------------------
module.IsExecutor = function() 
	return not module.IsStudio 
end
module.ColorToBytes = function(col)
	local round = math.round
	return string.format("%d, %d, %d",round(col.r*255),round(col.g*255),round(col.b*255))
end
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
		if game.ReplicatedStorage:FindFirstChild("DexAPITest") then
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
module.FetchRMD = function()
	local rawXML
	if module.IsExecutor() then
		
		rawXML = rawXML or game:HttpGet("https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/ReflectionMetadata.xml")
	else
		if game.ReplicatedStorage:FindFirstChild("DexRMDTest") then
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
module.CreateInstance = function(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end
module.CheckMouseInGui = function(g)
	local s,r = pcall(function()
		return module.Mouse.X >= g.AbsolutePosition.X and module.Mouse.X < g.AbsolutePosition.X + g.AbsoluteSize.X and module.Mouse.Y >= g.AbsolutePosition.Y and module.Mouse.Y < g.AbsolutePosition.Y + g.AbsoluteSize.Y
	end)
	return s == true and r or false
end
module.checkMouseInGui = module.CheckMouseInGui
module.GetTextSize = function(text)
	local l : TextLabel = module.Label
	l.Text = text
	return l.TextBounds
end
module.create = function(data)
	local insts = {}
	for i, v in data do

		insts[v[1]] = Instance.new(v[2])
	end

	for _, v in data do
		for prop, val in v[3] do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
				local findcolor = function(val)
					return table.find(module.Settings.Theme,val) or table.find(module.Settings.Theme.Syntax,val) or "NONE"
				end
				if prop == "BackgroundColor3" then
					insts[v[1]]:SetAttribute("BackgroundColor3",findcolor(val))
				end
				if prop == "BorderColor3" then
					insts[v[1]]:SetAttribute("BorderColor3",findcolor(val))
				end
				if prop == "TextColor3" then
					insts[v[1]]:SetAttribute("TextColor3",findcolor(val))
				end
			end
		end
	end

	return insts[1]
end
module.FastWait = task.wait
module.ShowGui = function(gui)
	if module.protectgui then
		module.protectgui(gui)
	end
	gui.Parent = script.Parent.Parent
end
-- Services
module.service = setmetatable({},{__index = function(_,k)
	return module.Functions.cloneref(game:GetService(k))
end,})
module.HttpService = module.cloneref(game:GetService("HttpService"))
module.TweenS = module.cloneref(game:GetService("TweenService"))
module.UIS = module.cloneref(game:GetService("UserInputService"))
module.Players = module.cloneref(game.Players)
module.LocalPlayer = module.cloneref(module.Players.LocalPlayer)
module.Mouse = module.cloneref(module.LocalPlayer:GetMouse())
module.mouse = module.Mouse
module.RunService = module.cloneref(game:GetService("RunService"))
module.CoreGui = module.cloneref(game:GetService("CoreGui")) or Instance.new("Folder")
module.CorePackages = module.cloneref(game:GetService("CorePackages")) or Instance.new("Folder")
module.TextService = module.cloneref(game:GetService("TextService"))
module.MarketplaceService = module.cloneref(game:GetService("MarketplaceService"))


-- Properties
module.Elevated = module.IsElevated()
if module.IsExecutor() then
	module.RobloxVersion = game:HttpGet("https://clientsettings.roblox.com/v2/client-version/WindowsStudio64/channel/LIVE"):match("(version%-[%w]+)")
else
	module.RobloxVersion = game.ReplicatedStorage.API:InvokeServer("https://clientsettings.roblox.com/v2/client-version/WindowsStudio64/channel/LIVE"):match("(version%-[%w]+)")
end
module.AppSignal = require(script.Parent.Signal).new()
module_hidden.API = module.FetchAPI()
module_hidden.RMD = module.FetchRMD()
module.DisplayOrders = {
	SideWindow = 8,
	Window = 10,
	Menu = 100000,
	Core = 101000,
}
module.Label = require(script.Parent.Parent.UI.Base.Label).New()
module.Label.Parent = script.Parent.Parent

return function(f,func)
	local env = getfenv(func ~= nil and func or debug.info(2,"f"))
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
G2L_MODULES[G2L["24"]] = {
Closure = function()
    local script = G2L["24"];local module = {}
local blankf = function() end
setfenv(blankf,{})
local Enviornment = require(script.Parent.Enviorment)(nil,blankf)
local rs = script
local IconMap = require(script.Parent.Parent.UI.Base.IconMap)
local getrmetatable = getrawmetatable or function(...)
	local x = getmetatable(...)
	if x == nil then
		return x
	end
	if typeof(x) ~= "table" then
		return {__metatable = x}
	end
	return x
end
module.GetTableType = function(table_)
	local lenght = rawlen(table_)
	local real_lenght = 0
	for _, v in pairs(table_) do -- pairs bypasses __iter
		real_lenght += 1
	end
	if lenght ~= real_lenght then
		return "Dict"
	end
	return "Array"
end
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
		for i, b in v do
			x = x .. value[b]
			if i ~= #v then x = x .. ", " else x = x .. ")" end
		end
		return x 
	elseif typ == "Instance" then
		return module.GetInstancePath(value)
	elseif typ == "table" then
		local mt = getrmetatable(value)
		local x = "{"
		if mt ~= nil then
			x = "setmetatable({"
		end
		local done = 0
		local lenght = 0
		
		for _, v in pairs(value) do-- pairs bypasses __iter 
			lenght += 1
		end
		
		for index, v in value do
			if module.GetTableType(value) == "Dict" then
				x = x .. "[" .. module.Value_To_Luau(index) .. "] = " .. module.Value_To_Luau(v)
				done = done + 1
				if done == lenght then
					if mt ~= nil then
						x = x .. "}, " .. module.Value_To_Luau(mt) .. ")"
					else
						x = x .. "}"
					end
				else
					x = x .. ", "
				end
			else
				x ..= module.Value_To_Luau(index)
				done += 1
				if done ~= lenght then
					x ..= ", "
				else
					if mt ~= nil then
						x ..= "}, " .. module.Value_To_Luau(mt) .. ")"
					else
						x ..= "}"
					end
				end
			end
		end
		--x = x .. "}"
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
	local icon_module = rs.Parent.Parent.UI.Icons:FindFirstChild(Enviornment.Settings.Explorer.IconPack)
	if not icon_module then
		return "",Vector2.new(0,0),Vector2.new(0,0)
	end
	local content = require(icon_module)
	local map = module.GetIconMap(0)
	if content.Icons then
		if content.Icons[name] then
			return map:GetDisplayInfo(content.Icons[name])
		else
			return map:GetDisplayInfo(content.Icons["Instance"])
		end
	end
	
	if content[name] then
		return content[name]
	end
	
	return content["Instance"]
end
module.IconContent = {}
module.IconFixed = {}
module.GetIconMap = function(offset,alternate)
	if offset ~= 0 then
		local icon_module = rs.Parent.Parent.UI.Icons:FindFirstChild(alternate and Enviornment.Settings.Theme.ExplorerIconMap or Enviornment.Settings.Explorer.IconPack)
		if not icon_module then
			return require(rs.Parent.Parent.UI.Icons.NewDark)["Instance"]
		end
		local content = table.clone(require(icon_module))
		local fixed = {}
		for i,v in content.Icons do
			fixed[i] = v + offset + 1
		end
		content.Icons = fixed
		
		local map = nil
		if Enviornment.Settings.Explorer.IconPack ~= "Old" then
			map = IconMap.new("rbxassetid://"..tostring(content.MapId),content.IconSize * content.Witdh,content.IconSize * content.Height,content.IconSize,content.IconSize)	
		else
			map = IconMap.newLinear("rbxasset://textures/ClassImages.PNG", 16,16)
		end
		return map
	end
	module.GetIconOfInstanceWith(game)
	if module.IconContent[Enviornment.Settings.Explorer.IconPack] then
		return module.IconContent[Enviornment.Settings.Explorer.IconPack]
	end
end
module.GetIconOfInstanceWith = function(instance : Instance,env)
	local icon_module = rs.Parent.Parent.UI.Icons:FindFirstChild(Enviornment.Settings.Explorer.IconPack)
	if not icon_module then
		return "",Vector2.new(0,0),Vector2.new(0,0)--require(rs.Parent.Parent.UI.Icons.NewDark)["Instance"]
	end
	local content = require(icon_module)
	if( not module.IconFixed[Enviornment.Settings.Explorer.IconPack]) then
		if Enviornment.Settings.Explorer.IconPack ~= "NewLight" then
			local fixed = {}
			for i,v in content.Icons do
				fixed[i] = v - 1
			end
			content.Icons = fixed
			module.IconFixed[Enviornment.Settings.Explorer.IconPack] = true
		end
	end
	
	
	if content.Icons ~= nil then
		local map = module.IconContent[Enviornment.Settings.Explorer.IconPack]
		if map == nil then
			if Enviornment.Settings.Explorer.IconPack ~= "Old" then
				if Enviornment.Settings.Explorer.IconPack == "NewLight" then
					return content.Icons.Class .. instance.ClassName .. ".png",Vector2.new(0,0),Vector2.new(0,0)
				end
				map = IconMap.new("rbxassetid://"..tostring(content.MapId),content.IconSize * content.Witdh,content.IconSize * content.Height,content.IconSize,content.IconSize)
			else
				map = IconMap.newLinear("rbxasset://textures/ClassImages.PNG", 16,16)
			end
		end
		
		module.IconContent[Enviornment.Settings.Explorer.IconPack] = map
		local index = 999
		if content.Icons[instance.ClassName] then
			index = content.Icons[instance.ClassName]
			return map:GetDisplayInfo(index)
		else 
			index = content.Icons["Instance"]
			for i,v in content.Icons do
				if instance:IsA(tostring(i)) then
					index = v
					return map:GetDisplayInfo(v)
				end
			end
		end
		
		if instance.Parent == game then
			return map:GetDisplayInfo(content.Icons.Service or content.Icons.Instance)
		end
		local first = content.Icons.Instance
		for _, v in content.Icons do
			first = v
			break
		end
		return map:GetDisplayInfo(first)
	end
	
	if content[instance.ClassName] then
		return content[instance.ClassName],Vector2.new(0,0),Vector2.new(0,0)
	end
	for class_n, icon in content do
		if instance:IsA(class_n) then
			return icon,Vector2.new(0,0),Vector2.new(0,0)
		end
	end
	print("default")
	return content["Instance"]
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
G2L_MODULES[G2L["25"]] = {
Closure = function()
    local script = G2L["25"];local module = {}
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
	Signal.MemberError = function()
		error("Expected ':' not '.' when calling member function in function " .. debug.info(debug.info(3,"f"),"s") .. " from " .. (getfenv(debug.info(3,"f")).script and getfenv(debug.info(3,"f")).script.Name or "???"))
	end
	Signal.Connect = function(self,callback)
		if self ~= Signal then
			Signal.MemberError()
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
				Signal.MemberError()
			end
			table.remove(Connection.Signal.Callbacks,Connection.idx)
			table.remove(Connection.Signal.Connections,Connection.idx)
		end
		Connection.Disable = function(self)
			if self ~= Connection then
				Signal.MemberError()
			end
			Connection.Enabled = false
		end
		Connection.Enable = function(self)
			if self ~= Connection then
				Signal.MemberError()
			end
			Connection.Enabled = true
		end
		return Connection
	end
	Signal.Once = function(self,callback)
		if self ~= Signal then
			Signal.MemberError()
		end
		local Connection;Connection = Signal:Connect(function(...)
			Connection:Disconnect()
			callback(...)
		end)
		return Connection
	end
	Signal.Wait = function(self)
		if self ~= Signal then
			Signal.MemberError()
		end
		repeat task.wait() until Signal.Firing == true
	end
	Signal.FireInstant = function(self,...)
		if self ~= Signal then
			Signal.MemberError()
		end
		Signal.Firing = true
		--task.wait()
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
	Signal.Fire = function(self,...)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		if coroutine.isyieldable() == false then
			return self:FireInstant(...)
		end
		Signal.Firing = true
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
G2L_MODULES[G2L["26"]] = {
Closure = function()
    local script = G2L["26"];local highlighter = {}
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

local colors = {
	numbers = Enviorment.Settings.Theme.Syntax.Number or Color3.fromRGB(255, 198, 0),
	boolean = Enviorment.Settings.Theme.Syntax.Bool or Color3.fromRGB(255, 198, 0),
	operator = Enviorment.Settings.Theme.Syntax.Operator or Color3.fromRGB(204, 204, 204),
	lua = Enviorment.Settings.Theme.Syntax.BuiltIn or Color3.fromRGB(132, 214, 247),
	exploit = Enviorment.Settings.Theme.Syntax.Exploit or Color3.fromRGB(171, 84, 247),
	rbx = Enviorment.Settings.Theme.Syntax.Keyword,
	str = Enviorment.Settings.Theme.Syntax.String,
	comment = Enviorment.Settings.Theme.Syntax.Comment,
	null = Enviorment.Settings.Theme.Syntax.Nil,
	call = Enviorment.Settings.Theme.Syntax.LocalMethod,
	self_call = Enviorment.Settings.Theme.Syntax.LocalMethod,
	local_color = Enviorment.Settings.Theme.Syntax.Local,
	function_color = Enviorment.Settings.Theme.Syntax.FunctionName,
	self_color = Enviorment.Settings.Theme.Syntax.Self,
	local_property = Enviorment.Settings.Theme.Syntax.LocalProperty,
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
G2L_MODULES[G2L["27"]] = {
Closure = function()
    local script = G2L["27"];local module = {}
local Enviorment = require(script.Parent.Enviorment)()
local enabled = Enviorment.UsePluginAPI;
local Apps = nil;
local Loader = nil;
Enviorment.AppSignal:Fire("Loader",function(v,v2) Apps = v;Loader = v2;end)
local Components = {}
local ComponentsMt = {__index = function(_,name)
	return require(script.Parent.Parent.UI:FindFirstChild(name,true))
end,}
setmetatable(Components,ComponentsMt)
local API = {
	Apps = Apps;
	Enviorment = Enviorment;
	Components = Components;
	Main = Loader;
}
module.Enabled = enabled;
if not enabled then
	API = {}
end
module.API = API

return module

end;
};
G2L_MODULES[G2L["28"]] = {
Closure = function()
    local script = G2L["28"];local function load(Enviornment)
	local IsStudio = Enviornment.IsSudio
	local loadstring_roblox = loadstring
	local loadstring = IsStudio and require(workspace.vLuau) or loadstring_roblox
	local module = {}
	module.Support = {}
	module.Messages = {

	}
	module.Fallbacks = {
		newcclosure = function(func) return func end,
		iscclosure = function(f) local s,_ = pcall(setfenv,f,getfenv(f));return not s end,
		islclosure = function(f) local s,_ = pcall(setfenv,f,getfenv(f));return s end,
		checkcaller = function() 
			local caller = getfenv(debug.info(4,"f"));
			local scr : Instance | nil = rawget(caller,"script"); 
			if scr == nil then
				return true
			end
			if scr:IsDescendantOf(Enviornment.CoreGui) or scr:IsDescendantOf(Enviornment.CorePackages) then
				return true
			end
			return false
		end,
		getcallingscript = function()
			local caller = getfenv(debug.info(4,"f"));
			local scr : Instance | nil = rawget(caller,"script"); 
			return scr
		end,
		hookfunction = function(func,hook)
			return func
		end,
		isfunctionhooked = function(func)
			return false
		end,
		restorefunction = function()
			
		end,
		cloneref = function(...)
			return (...)
		end,
		setclipboard = function(v)
			if IsStudio then
				warn("[setclipboard] ",v)
			end
		end,
		protectgui = function(gui)
			gui.Parent = script.Parent.Parent
		end,
		getnilinstances = function()
			return {}
		end,
		writefile = function()
			
		end,
		readfile = function()
			
		end,
		HttpGet = function(...)
			local s,res = pcall(function(...)
				return game:HttpGet(...)
			end,...)
			if s then
				return res
			end
			local s2,res2 = pcall(function(...)
				return Enviornment.HttpService:GetAsync(...)
			end,...)
			if s2 then
				return res2
			end
			return ""
		end,
		saveinstance = function(...)
			local s,r = pcall(function(...)
				local Params = {
					RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
					SSI = "saveinstance",
				}
				loadstring(module.HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()(...)
			end,...)
			if s then
				return r
			end
		end,
		decompile = function(scr)
			if IsStudio then
				local s, source = pcall(function()
					return scr.Source
				end) 
				if not s then
					source = "-- The current thread cannot read the script's source. "
				end
				return source;
			end
			if module.getscriptbytecode == nil then
				return "-- Missing function 'getscriptbytecode'"
			else 
				return "-- Missing function 'decompile'"
			end
		end,
		hookmetamethod = function(object,method,hook)
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
		end,
		gethiddenproperty = function(obj,name)
			local s,res = pcall(function()
				return Enviornment.services.UGCValidationService:GetPropertyValue(obj,name)
			end)
			if s then
				return res
			end
			return obj[name]
		end,
		sethiddenproperty = function(obj,name,value)
			obj[name] = value
		end,
		getcallbackvalue = function()
			return nil
		end,
		gethui = function()
			if Enviornment.IsElevated() then
				return Enviornment.CoreGui
			else
				return script.Parent.Parent.Parent
			end
		end,
		getgenv = function()
			return _G
		end,
		loadstring = loadstring,
	}
	local TEST_EXISTENCE_ONLY = function(v)
		assert(v,"Function does not exist")
	end
	local function Test(name,func,callback,impl_in_c)
		local succeded, message = false,"???"
		if func ~= nil then
			if typeof(func) ~= "function" then
				succeded, message = false,"Expected function of type 'function', got '" .. typeof(func) .. "' instead"
			else
				local is_l,_ = pcall(setfenv,func,getfenv(func))
				if is_l and impl_in_c then
					succeded,message = false,"Function should be implemented in C"
				else
					succeded,message = pcall(callback,func)
				end
			end

		else
			succeded = false
			message = "Function does not exist"
		end
		module.Support[name] = succeded
		module.Messages[name] = message
	end

	-- Closure
	Test("newcclosure",newcclosure,function(v)
		local upvalue  = 0
		local closure = newcclosure(function(a,b)
			upvalue = a + b
			task.wait()
			return true
		end)
		if typeof(closure) ~= "function" then
			error("newcclosure did not return a function")
		end
		local return_value = closure(1,2)
		if return_value ~= true then
			error("newcclosure failed to make a new closure")
		end
		assert(debug.info(closure, "s") == "[C]", "newcclosure did not create a C closure")

		task.wait(0.1)
		local s,_ = pcall(closure,1,2)
		assert(s,"Implemented in Luau")
		local s,_ = pcall(setfenv,closure,getfenv(closure))
		assert(not s, "debug.info was hooked")

	end,true)
	Test("iscclosure",iscclosure,function()
		assert(typeof(iscclosure) == "function", "iscclosure is not a function")
		assert(iscclosure(math.abs), "iscclosure did not identify a C closure")
		assert(not iscclosure(function() end), "iscclosure identified a Luau closure as a C closure")
	end)
	Test("islclosure",islclosure,function()
		assert(typeof(islclosure) == "function", "iscclosure is not a function")
		assert(not islclosure(math.abs), "islclosure did not identify a C closure")
		assert(islclosure(function() end), "islclosure identified a Luau closure as a C closure")
	end)
	Test("checkcaller",checkcaller,function()
		assert(checkcaller(),"Main Scope should return true")
	end)
	Test("getcallingscript", getcallingscript, TEST_EXISTENCE_ONLY)
	Test("hookfunction",hookfunction,function()
		local still_ran = false
		local still_ran_hook = false
		local function Original(a, b)
			still_ran = true
			return a + b
		end

		local ref = hookfunction(Original, function(a, b)
			still_ran_hook = true
			return a * b
		end)

		local v = Original(1,1)
		assert((not still_ran) and still_ran_hook,"hookfunction implemented in Luau")
		assert(not still_ran,"Did not hook anything")

		assert(Original(2, 3) == 6, "Failed to hook a function and change the return value")
		assert(ref(2, 3) == 5, "Did not return the original function")
	end,true)
	Test("isfunctionhooked",isfunctionhooked,function()
		assert(typeof(hookfunction) == "function", "hookfunction is required for this test")

		local function Original(a, b)
			return a + b
		end

		assert(isfunctionhooked(Original) == false, "isfunctionhooked returned true for an unhooked function")

		hookfunction(Original, function(a, b)
			return a * b
		end)

		assert(isfunctionhooked(Original) == true, "isfunctionhooked returned false for a hooked function")
	end)
	Test("restorefunction",restorefunction,function()
		assert(typeof(hookfunction) == "function", "hookfunction is required for this test")

		local function Original(a, b)
			return a + b
		end

		hookfunction(Original, function(a, b)
			return a * b
		end)

		assert(Original(2, 3) == 6, "Failed to hook a function and change the return value")

		restorefunction(Original)

		assert(Original(2, 3) == 5, "restorefunction did not restore the original function")
	end)
	Test("setstackhidden",setstackhidden, function()
		local StackCheck = {}

		local CallerFunctionSource = [[
		local StackCheck = ...
		local function CallerFunction()
			return StackCheck[1]()
		end
		return CallerFunction
	]]

		local CallerFunction = (loadstring(CallerFunctionSource, "=CallerFunction") :: (...any) -> ...any)(StackCheck)

		setstackhidden(CallerFunction, true)

		StackCheck[1] = function()
			return debug.info(2, "f") ~= CallerFunction
		end

		local IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (debug.info)")

		StackCheck[1] = function()
			return not debug.traceback():find("CallerFunction")
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (debug.traceback)")

		local TestTable = { math.huge, 0 / 0, 123, 58913 } :: { any }
		setfenv(CallerFunction, TestTable)

		StackCheck[1] = function()
			return getfenv(2) ~= TestTable
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (getfenv)")

		StackCheck[1] = function()
			return not select(2, pcall(error, "", 3)):find("CallerFunction")
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (error with level traceback)")
	end)
	Test("hookmetamethod",hookmetamethod, function()
		local object = setmetatable({}, {
			__index = newcclosure(function()
				return false
			end),
			__metatable = "Locked!",
		})

		local ref = hookmetamethod(object, "__index", function()
			return true
		end)

		assert(object.test == true, "Failed to hook a metamethod and change the return value")
		assert(typeof(ref) == "function", "Did not return the original function")
		assert(ref() == false, "Did not return the original function")
		local ud = newproxy(true)
		local mt2 = getmetatable(ud)
		mt2.__index = function() return false end
		mt2.__metatable = "Locked!"

		local ref2 = hookmetamethod(object, "__index", function()
			return true
		end)

		assert(object.test == true, "setmetatable was hooked")
		assert(typeof(ref) == "function", "Did not return the original function")
		assert(ref() == false, "Did not return the original function")
	end)

	-- Metamethod
	Test("getnamecallmethod",getnamecallmethod, function()
		pcall(function()
			game:TEST_NAMECALL_METHOD()
		end)

		assert(getnamecallmethod() == "TEST_NAMECALL_METHOD", "getnamecallmethod did not return the real namecall method")
	end)
	Test("getrawmetatable",getrawmetatable,function()
		local mt = {__index = function() return 10 end,__metatable = "No."}
		local tbl = setmetatable({},mt)
		local res = getrawmetatable(tbl)
		assert(typeof(res) == "table","getrawmetatable did not return a table")
		if res ~= mt then
			if res.__index == mt.__index and res.__metatable == mt.__metatable then
				error("copyrawmetatable alias")
			end
			error("Did not return the metatable")
		end
		local ud = newproxy(true)
		local mt2 = getmetatable(ud)
		mt2.__index = mt.__index
		mt2.__metatable = mt.__metatable

		local res2 = getrawmetatable(ud)
		assert(typeof(res2) == "table","getrawmetatable did not return a table (userdata check)")
		if res2 ~= mt2 then
			if res.__index == mt.__index and res.__metatable == mt.__metatable then
				error("copyrawmetatable alias")
			end
			error("setmetatable was hooked")
		end

	end)
	-- Instance Library
	Test("getcallbackvalue",getcallbackvalue, function()
		local bindable = Instance.new("BindableFunction")
		local InvokeRan = false
		local InvokeFunction = function(value)
			InvokeRan = true
			return value * 2
		end
		bindable.OnInvoke = InvokeFunction

		local FetchedInvoke = getcallbackvalue(bindable, "OnInvoke")
		bindable:Destroy()

		assert(typeof(FetchedInvoke) == "function", "getcallbackvalue did not return a function")

		assert(FetchedInvoke(5) == 10, "getcallbackvalue's function return did not match expected value")
		assert(InvokeRan, "getcallbackvalue's function did not run")
	end)
	Test("getnilinstances",getnilinstances, function()
		local x = Instance.new("Folder")
		local NilInstances = getnilinstances()
		assert(typeof(NilInstances) == "table", "getnilinstances did not return a table")
		assert(#x ~= 0, "Did not return a table containing nil instances")
	end)
	Test("getloadedmodules",getloadedmodules, function()
		local NilInstances = getloadedmodules()
		assert(typeof(NilInstances) == "table", "getloadedmodules did not return a table")
	end)
	Test("getgenv",getgenv,function()
		assert(typeof(getgenv()) == "table", "getgenv did not return a table")
	end)
	Test("loadstring",loadstring_roblox,function()
		local s,_ = pcall(loadstring_roblox,"local a = 10;")
		assert(s,"loadstring() is not available")
	end)
	local function Add(name)
		if module.Support[name] == true then
			local f = getfenv()[name]
			module[name] = f
		else
			module[name] = module.Fallbacks[name] or function(...) return (...) end
		end
	end
	Add("newcclosure")
	Add("iscclosure")
	Add("islclosure")
	Add("hookfunction")
	Add("hookmetamethod")
	Add("checkcaller")
	Add("getcallingscript")
	Add("restorefunction")
	Add("setstackhidden")
	Add("getnamecallmethod")
	Add("getrawmetatable")
	Add("getcallbackvalue")
	Add("getnilinstances")
	
	Add("sethiddenproperty")
	Add("gethiddenproperty")
	Add("gethui")
	Add("protectgui")
	Add("getscriptbytecode")
	Add("decompile")
	Add("saveinstance")
	Add("isfunctionhooked")
	Add("loadstring")
	Add("getgenv")
	Add("getloadedmodules")
	Add("cloneref")
	Add("setclipboard")
	return module
end
return load
end;
};
G2L_MODULES[G2L["2a"]] = {
Closure = function()
    local script = G2L["2a"];local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
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
	copyButton.Size = UDim2.new(0.25, 0, 0, 20)
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
	copyButton.TextXAlignment = Enum.TextXAlignment.Center
	local execButton = Instance.new("TextButton", window.GuiElems.Content)
	execButton.BackgroundTransparency = 1
	execButton.Position = UDim2.new(0.25,0,1,-20)
	execButton.Size = UDim2.new(0.25, 0, 0, 20)
	execButton.Text = "Execute"
	execButton.TextColor3 = Color3.new(1, 1, 1)
	execButton.BorderSizePixel = 0
	execButton.BackgroundTransparency = 1
	execButton.TextXAlignment = Enum.TextXAlignment.Center
	execButton.MouseButton1Click:Connect(function()
		for _, tab in Tabs do
			if tab.Selected ~= true then continue end	

			pcall(loadstring, tab.Source)()
			return
		end
	end)
	
	local saveButton = Instance.new("TextButton", window.GuiElems.Content)
	saveButton.BackgroundTransparency = 1
	saveButton.Size = UDim2.new(0.25, 0, 0, 20)
	saveButton.Position = UDim2.new(0.5, 0, 1, -20)
	saveButton.Text = "Save To File"
	saveButton.TextColor3 = Color3.new(1, 1, 1)
	saveButton.TextXAlignment = Enum.TextXAlignment.Center
	saveButton.MouseButton1Click:Connect(function()
		--  use SSI
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
G2L_MODULES[G2L["2b"]] = {
Closure = function()
    local script = G2L["2b"];local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
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
		new.EditAttributeButton.Visible = node.IsAttribute--node.IsTag ~= true
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
			if node.IsAttribute then
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
			end
			Properties.AttributeContext.Add(Properties.AttributeContext,{
				Name = "Copy",
				Disabled = false,
				OnClick = function()
					Enviorment.Functions.setclipboard(Functions.Value_To_Luau(node.GetValue()))
				end,
			})
			Properties.AttributeContext.Gui.Parent = new.ValueFrame
			Properties.AttributeContext.Width = new.ValueFrame.AbsoluteSize.X
			Properties.AttributeContext:Show(new.ValueFrame.AbsolutePosition.X,new.ValueFrame.AbsolutePosition.Y)
		end)
		new.ValueFrame.ValueBox.Position = UDim2.new(0,0,0,0)
		new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = false
		if table.find({"Faces","Axes","Font","string","CFrame","Vector3int16","Vector3","Vector2int16","Vector2","Color3","number","SecurityCapabilities","Ray","UDim2","UDim","Rect","Color3","ColorSequence"},type_value) then
			local btn : TextButton = new.ValueFrame.ValueBox
			if type_value == "Color3" or type_value == "ColorSequence" then
				f1({btn,new.ValueFrame.ColorButton})
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = true
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Color = type_value == "Color3" and ColorSequence.new(node.GetValue()) or node.GetValue()
			else
				f1(btn)
			end
			if type_value == "ColorSequence" then
				btn.Text = "< Color Sequence >"
			elseif type_value == "number" then
				local mul = math.pow(10,Enviorment.Settings.Properties.NumberRounding)
				btn.Text = tostring(math.round(value * mul) / mul)
			elseif type_value == "Color3" then
				btn.Text = tostring(math.round(value.R * 255)) .. ", " .. tostring(math.round(value.G * 255)) .. ", " .. tostring(math.round(value.B * 255))
			else
				btn.Text = tostring(value)
			end
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
				Properties.InputBox.Position = UDim2.new(0,poffset,0,0) --2 + poffset
				Properties.InputBox.Size = UDim2.new(1,-offset,1,0)
				
				Properties.InputBox.Visible = true
				Properties.InputTextBox.Text = Enviorment.Settings.Properties.ClearOnFocus and "" or tostring(value)
				Properties.TextBoxNode = node
				box:CaptureFocus()
				local i = #Connections+1
				btn.Visible = false
				if prev_visible == true then
					Properties.MakeVisibleOnLostFocus(new.ValueFrame.ColorButton)
				end
				Properties.MakeVisibleOnLostFocus(btn)
			end)
		elseif type_value == "User" then
			local btn : TextButton = new.ValueFrame.ValueBox
			f1(btn)
			btn.Text = tostring(node.GetValue().Id)
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
			new.ValueFrame.ValueBox.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
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

module.New = function(Embedded,AppContainer)
	local Properties = {ViewWidth = 0,YOffset = 0,SearchText = ""}
	Properties.Entry_List = {}
	Properties.Node_List = {}
	Properties.Attrib_List = {}
	Properties.Tag_List = {}
	Properties.AllowedAttributeTypes = {"string","boolean","number","UDim","UDim2","BrickColor","Color3","Vector2","Vector3","NumberSequence","ColorSequence","NumberRange","Rect","Font"}
	Properties.Connections = {}
	Properties._editingTag = nil
	Properties.ExpandedCategories = {}
	Properties.Refresh_Callbacks = {}
	Properties.MakeVisibleContent = {}
	Properties.Connected = {}
	Properties.ActiveNodes = {}
	--Properties.TagEditor = module.NewTagEditor(Properties)
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
			if s == "Color3" then
				return Color3.fromRGB(table.unpack(numbers))
			end
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
		for _, v in Properties.Tag_List do OnNode(v) end
		for _, v in Properties.Attrib_List do OnNode(v) end
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
		for _, v in Properties.Tag_List do OnNode(v) end
		for _, v in Properties.Attrib_List do OnNode(v) end
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
		for _, v in Properties.Tag_List do OnNode(v) end
		for _, v in Properties.Attrib_List do OnNode(v) end
		return x
	end
	Properties.Refresh = function(instant)
		--local instant = true
		
		Properties.ScrollY.TotalSpace = Properties.GetLenght()
		Properties.ScrollY.VisibleSpace = math.round(Properties.Window.GuiElems.Content.AbsoluteSize.Y / 20) - 5
			--Properties.ScrollY:Update()
		
		
		for i, f in Properties.Refresh_Callbacks do
			if Properties.ActiveNodes[i] == false then continue end
			if instant then
				--task.spawn(f)\
				f()
			else 
				f() 
			end
		end
	end
	Properties.ClearNodes = function() 
		table.clear(Properties.Connected);
		table.clear(Properties.Node_List);
		table.clear(Properties.Tag_List);
		table.clear(Properties.Attrib_List);
		--[[Properties.Refresh()]] 
	end
	Properties.GetProperies_Sorted = function(obj)
		
		local currentTitle = ""
		local sortedList = {}
		local SuperClass = ""
		--print(Enviorment.API)
		for class_name, instance_data in Enviorment.API.Classes do
			
			if obj:IsA(class_name) == false then continue end
			
			for d, Property in instance_data.Properties do
				local readable,writable = Functions.GetPropertyData(obj,Property["Name"])
				if readable == false then continue end
				
				local AddToTable = true
				if Property["Tags"] ~= nil then
					for tag, v in Property["Tags"] do
						if Enviorment.Settings.Properties.ShowDeprecated == false and tag == "Deprecated" and v == true then
							AddToTable = false
						end
						if Enviorment.Settings.Properties.ShowHidden == false     and tag == "Hidden" and v == true then
							AddToTable = false
						end
					end
				end
				if AddToTable == true then
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
		["User"] = {"DomainType","DomainId","Id",},
		["Font"] = {"Style","Bold","Weight","Family"},
		["Axes"] = {"X","Y","Z","Left","Right","Top","Bottom","Front","Back"},
		["Faces"] = {"Left","Right","Top","Bottom","Front","Back"},
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
				if typeof(parent.GetValue()) == "Axes" then
					local already = {}
					local function convert(v)
						if v == "X" or v == "Y" or v == "Z" then
							return Enum.Axis:FromName(v)
						else
							return Enum.NormalId:FromName(v)
						end
					end
					for _, v in Properties.ExpandableTypes.Axes do
						already[#already+1] = convert(v)
					end
					local function AddOrRemove(prop)
						local value = convert(prop)
						if table.find(already,value) then
							table.remove(already,table.find(already,value))
						else
							already[#already+1] = value
						end
					end
					AddOrRemove(prop)
					return parent.SetValue(Axes.new(table.unpack(already)))
				end
				if typeof(parent.GetValue()) == "Faces" then
					local already = {}
					local function convert(v)
						if v == "X" or v == "Y" or v == "Z" then
							return Enum.Axis:FromName(v)
						else
							return Enum.NormalId:FromName(v)
						end
					end
					for _, v in Properties.ExpandableTypes.Faces do
						already[#already+1] = convert(v)
					end
					local function AddOrRemove(prop)
						local value = convert(prop)
						if table.find(already,value) then
							table.remove(already,table.find(already,value))
						else
							already[#already+1] = value
						end
					end
					AddOrRemove(prop)
					return parent.SetValue(Faces.new(table.unpack(already)))
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
	Properties.ClearNonProperties = function()
		for index,node in Properties.Node_List do
			if node.IsAttribute or node.IsTag or (node.IsCategory == true and node.RowText == "Attributes") or (node.IsCategory == true and node.RowText == "Tags") or (node.IsButton) or node.Button ~= nil then
				Properties.Node_List[index] = nil
				task.wait()
			end
		end
	end
	Properties.SConnections = {}
	Properties.STConnections = {}
	Properties.ShowObjectAttributes = function(obj)
		table.clear(Properties.Attrib_List)
		for _, v in Properties.SConnections do
			pcall(function() v:Disconnect() end)
		end
		if Enviorment.Settings.Properties.ShowAttributes == false then
			return
		end
		Properties.Attrib_List[#Properties.Attrib_List+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = true,
			Property = "Attributes",
			NoRefresh = true,
			AutoAdd = false,
		})
		local before = obj:GetAttributes()

		for attribute, value in before do
			Properties.Attrib_List[#Properties.Attrib_List+1] = Properties.AddProperty({
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
		local Button_node = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = Button,
			IsButton = true,
		})
		Properties.Attrib_List[#Properties.Attrib_List+1] = Button_node
		Properties.SConnections[#Properties.SConnections+1] = Button.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects)
		end)
		Properties.SConnections[#Properties.SConnections+1] = obj.AttributeChanged:Connect(function(attribute)
			if obj:GetAttribute(attribute) == nil then
				for i, node in Properties.Attrib_List do
					if node.Name == attribute and node.IsAttribute == true and node.Button == nil then
						table.remove(Properties.Attrib_List,i)
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
				Properties.Attrib_List[#Properties.Attrib_List] = new_node
				Properties.Attrib_List[#Properties.Attrib_List+1] = Button_node
				before = obj:GetAttributes()
				Properties.Refresh()
				return
			end
			if typeof(obj:GetAttribute(attribute)) ~= typeof(before[attribute]) then
				for i, node in Properties.Attrib_List do
					if node.Name == attribute and node.IsAttribute == true and node.Button == nil then
						table.remove(Properties.Attrib_List,i)
						Properties.Refresh()
					end
				end
				local new_node = Properties.AddProperty({
					Object = obj,
					IsCategory = false,
					Property = attribute,
					Category = "Attributes",
					AutoAdd = false,
					NoRefresh = true,
					IsAttribute = true,
				})
				Properties.Attrib_List[#Properties.Attrib_List] = new_node
				Properties.Attrib_List[#Properties.Attrib_List+1] = Button_node
				before = obj:GetAttributes()
				Properties.Refresh()
				return
			end
		end)
	end
	Properties.ShowObjectTags = function(obj)
		table.clear(Properties.Tag_List)
		for _, v in Properties.STConnections do
			pcall(function() v:Disconnect() end)
		end
		if Enviorment.Settings.Properties.ShowTags == false then
			return
		end
		Properties.Tag_List[#Properties.Tag_List+1] = Properties.AddProperty({
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
			Properties.Tag_List[#Properties.Tag_List+1] = n
			Properties.STConnections[#Properties.STConnections+1] = n.TagSignal:Connect(function()
				obj:RemoveTag(tag)
			end)
		end
		local EditorButton = {
			Text = "Add Tag",
			Activated = Signal.new(),
		}
		Properties.Tag_List[#Properties.Tag_List+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = EditorButton,
			IsButton = true,
		})
		Properties.STConnections[#Properties.STConnections+1] = EditorButton.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects,nil,true)
		end)
		Properties.STConnections[#Properties.STConnections+1] = Enviorment.RunService.Heartbeat:Connect(function()
			local new = obj:GetTags()
			for i,v in new do
				for _, x in before_tags do
					if not table.find(new,x) then
						before_tags = new
						Properties.ShowObjectTags(obj)
						return
					end
				end
				if not table.find(before_tags,v) then
					before_tags = new
					Properties.ShowObjectTags(obj)
					return
				end
			end
		end)
	end
	Properties.ShowObjectNonProperties = function(obj)
		Properties.DisplayedObjects = {obj}
		if true then
			return Properties.ShowObjectAttributes(obj),Properties.ShowObjectTags(obj)
		end
		
		
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
		if obj == nil then
			return
		end
		--Properties.TagEditor.AddObjectProperties(obj)
		for _, v in Properties.Connections do
			pcall(function() v:Disconnect() end)
		end
		local NilInstancesFolder : Folder = (function() local x = nil;Enviorment.AppSignal:Fire("Explorer","AppIndex","NilInstancesFolder",function(v) x = v end) return x end)()
		if obj == NilInstancesFolder then
			return
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
		for i=1,50 do
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
					print("attib",attribute)
					if attribute ~= nil then
						for _, obj in objects do
							local _,val = pcall(obj.GetAttribute,obj,attribute)
							pcall(obj.SetAttribute,obj,attribute,nil)
							pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,val)
						end
					else
						for _, obj in objects do
							print(pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,Properties.DefaultPropValue[typ]))
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
			win.Elements.TypeLabel = typeLabel
			Properties.AddAttributeWindow = win
		end

		if is_tag then win:SetTitle("Add Tag") else win:SetTitle(attribute ~= nil and "Edit Attribute " .. attribute or "Add Attribute") end
		Properties._editingTag = is_tag
		win.Elements.Error.Text = ""
		win.Elements.NameBox:SetText("")
		win.Elements.SaveButton:SetDisabled(true)
		win.Elements.TypeChooser:SetSelected(1)
		
		if is_tag or attribute ~= nil then
			win.Elements.TypeChooser.Gui.Parent = nil
			win.Elements.TypeLabel.Parent = nil
		else
			win.Elements.TypeChooser.Gui.Parent = win.GuiElems.Content
			win.Elements.TypeLabel.Parent = win.GuiElems.Content
		end
		
		
		win:Show()
	end
	
	Properties.Window = Embedded == true and {OnActivate = Signal.new(),OnDeactivate = Signal.new(),Show = function() end,SetSize = function(_,x,y) AppContainer.Size = UDim2.new(0,x,0,y); end,SetTitle = function() end,GuiElems = {Line = Instance.new("Frame"),Content = AppContainer}} or Window.new()
	Properties.Window:SetTitle(typeof(Embedded) == "string" and Embedded or "Properties")
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
				--Properties.ScrollY.TotalSpace = Properties.GetLenght()
				Properties.InputTextBox:ReleaseFocus()
				Properties.Refresh(true)
			end
			
			
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
	if Embedded == nil or Embedded == false then
		Enviorment.AppSignal:Connect(function(app,inst)
			if app ~= script.Name then return end
			if inst == nil then return end
			Properties.ShowExplorerProps(inst)
		end)
		Enviorment.Settings.Properties.Changed:Connect(function()
			Properties.ShowExplorerProps(Properties.DisplayedObjects)
			Properties.Refresh()
		end)
	end
	Enviorment.Settings.Window.Changed:Connect(function(k,v)
		if k == "BackgroundTransparency" then
			for _, x in Properties.NodeContent:GetChildren() do
				if x.Name == "Entry" then
					x.BackgroundTransparency = v
				end
			end
		end
	end)
	return Properties
end

module.Init = function(...)
	local app = module.New(...)
	APP_PROPERTIES = app
	return app
end
return module

end;
};
G2L_MODULES[G2L["2c"]] = {
Closure = function()
    local script = G2L["2c"];--[[
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
				local text = Console.CommandLine.ScrollingFrame.TextBox.Text
				print("> "..text)
				local f = loadstring(text)
				setfenv(f,setmetatable({
					API = Enviorment.PluginAPI,
				},{
					__index = getfenv()
				}))
				f()
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
G2L_MODULES[G2L["2d"]] = {
Closure = function()
    local script = G2L["2d"];--[[
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
G2L_MODULES[G2L["2e"]] = {
Closure = function()
    local script = G2L["2e"];local module = {}
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Frame = require(script.Parent.Parent.UI.Base.Frame)
local Enviornment = require(script.Parent.Parent.Modules.Enviorment)()
local Button = require(script.Parent.Parent.UI.Base.Button)
local ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new(1)
local Functions = require(script.Parent.Parent.Modules.Functions)
local Label = require(script.Parent.Parent.UI.Base.Label)
local SmallCodeFrame = require(script.Parent.Parent.UI.Base.SmallCodeBox)
local debug = {info = debug.info,
	getupvalues = debug.getupvalues or function() return {"j",10,workspace} end,
	getconstants = debug.getconstants or function() 
		return {10,"f"} 
	end}
module.New = function()
	local Interface;Interface = {
		Window = Window.new(),
		Explorer = nil
	}
	local Explorer_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Explorer_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Explorer_Container.Position = UDim2.new(0,5,0,5)
	Explorer_Container.Size = UDim2.new(0,200,1,-10)
	Interface.Explorer = require(script.Parent.Explorer).NewExplorer(true,Explorer_Container.Gui)
	Interface.Window:SetTitle("Function Interface")
	local Info_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Info_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Info_Container.Position = UDim2.new(0,Explorer_Container.Size.X.Offset+10,0,5) -- 0,5
	Info_Container.Size = UDim2.new(1,-(Explorer_Container.Size.X.Offset+15),0.6,-10) -- 1,-10
	local Control_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Control_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Control_Container.Position = UDim2.new(0,Explorer_Container.Size.X.Offset+10,0.6,0)
	Control_Container.Size = UDim2.new(1,-(Explorer_Container.Size.X.Offset+15),0.4,-5) -- 1,-10
	Instance.new("UIGridLayout",Control_Container.Gui).CellSize = UDim2.new(1,0,0,18)
	
	Interface.Explorer.SearchBox.PlaceholderText = "Filter Registry"
	Interface.Explorer.NodeContainer.ClipsDescendants = true
	Interface.Explorer.FilterInfo = {}
	Interface.Explorer.AllowMultiSelection = false
	Interface.Explorer.RefreshFilters()
	local function AddFunction(func)
		local name = debug.info(func,"n")
		local params,is_vararg = debug.info(func,"a")
		if name == "" or name == nil then name = tostring(func) end 
		local icon,offset,size = Functions.GetIcon("BindableFunction")
		local node = {
			Instance = nil,
			Expanded = false,
			Renaming = false,
			CanExpand = false,
			Subnodes = {},
			Info = {Source = debug.info(func,"s"),
				Line = debug.info(func,"l"),
				Name = name,
				["Parameter Count"] = params,
				["Is Vararg"] = is_vararg,
				["Upvalues"] = debug.getupvalues(func),
				["Constants"] = debug.getconstants(func),
			},
			Highlighted = false,
			Selected = false,
			Icon = icon,
			IconOffset = offset,
			IconSize = size,
			Text = name,
			Depth = 0,
			IndentInc = 0,
		}
		Interface.Explorer.Nodes[#Interface.Explorer.Nodes+1] = node
	end
	
	local frames = {}
	local order = {"Source:","Line:","Name:","Parameter Count:","Is Vararg:","Upvalues:","Constants:"}
	local count = #order
	for i=1,count do
		local new = SmallCodeFrame.new()
		frames[i] = new
		local info_label = Label.new({Text = order[i],TextXAlignment = Enum.TextXAlignment.Left,Parent = Info_Container.Gui})
		info_label.Position = UDim2.new(0,5,0,info_label.Size.Y.Offset * (i - 1) + 5)
		new.GuiElems.TextBox.Gui.Parent = Info_Container.Gui
		new.GuiElems.TextBox.Gui.Position = UDim2.new(0,100,0,new.GuiElems.TextBox.Gui.Size.Y.Offset * (i - 1) + 5) --Enviornment.GetTextSize(order[i]).X + 5
		new.GuiElems.TextBox.Gui.Size = UDim2.new(1,-110,new.GuiElems.TextBox.Gui.Size.Y.Scale,new.GuiElems.TextBox.Gui.Size.Y.Offset) --(Enviornment.GetTextSize(order[i]).X + 10)
		new.SetEditable(new,false)
	end
	Interface.AddButton = function(text,callback)
		local btn = Button.new()
		btn.Gui.Parent = Control_Container.Gui
		btn.OnClick.Connect(btn.OnClick,callback)
		btn.Gui.Text = text
	end
	
	Interface.ClearInfo = function()
		for _, frm in frames do
			frm:SetText("nil")
		end
	end
	
	Interface.Window:SetSize(400,300)
	Interface.Window.MinX = 400
	Interface.Window.MinY = 300
	Interface.Explorer.NodeSelectionChanged:Connect(function()
		local sel_node = Interface.Explorer.NodeSelection[1]
		Interface.ClearInfo()
		if sel_node == nil then
			return
		end
		if sel_node.Info == nil then
			return
		end
		for i=1,count do
			local info = sel_node.Info[string.sub(order[i],1,#order[i]-1)]
			local frm = frames[i]
			local str = Functions.Value_To_Luau(info)
			frm:SetText(str)
		end
	end)
	Interface.AddButton("Change Upvalues",function() 
		local Conn = ArgumentPrompt.Interaction:Once(function(v,new)
			if v == false then
				return
			end
			print("New Upvalues",new)
		end)
		ArgumentPrompt.Show(ArgumentPrompt)
	end)
	AddFunction(function() end)
	AddFunction(function() return 10 end)
	AddFunction(function(a) end)
	AddFunction(function(b) return 10 end)
	
	return Interface
end
module.Init = module.New
return module

end;
};
G2L_MODULES[G2L["2f"]] = {
Closure = function()
    local script = G2L["2f"];local module = {}
local Enviornment = require(script.Parent.Parent.Modules.Enviorment)()
local propertiesMod = require(script.Parent.Properties)
module.New = function()
	local settings = {
		Properties = propertiesMod.New("Settings"),
	}
	settings.Window = settings.Properties.Window
	task.wait(0.5)
	settings.AddSetting = function(data)
		local node;node = {
			Name = data.Property,
			GetValue = function()
				return data.Get()
			end,
			IsAttribute = false,
			IsTag = false,
			TagSignal = nil,
			Category = data.IsCategory ~= true and data.Category,
			IsCategory = data.IsCategory,
			IsButton = data.IsButton,
			SetValue = function(val,NoCall)
				data.Set(val)
			end,
			Writable = function()
				return not data.ReadOnly
			end,
			Expanded = false,
			Subnodes = {},
			Button = data.Button,
			GetObject = function()
				return nil
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
		end
		if data.IsButton then
			node.GetValue = function() return "" end
			node.SetValue = function() return end
			node.Writable = function() return data.IsTag == true and true or false end
			node.ForceVisible = true
			node.Category = nil
		end
		if settings.Properties.ExpandableTypes[typeof(node.GetValue())] then
			for i,subprop in settings.Properties.ExpandableTypes[typeof(node.GetValue())] do
				local subnode = settings.Properties.AddNode(node,subprop,true,i)
				node.Subnodes[i] = subnode
			end
		end
		settings.Properties.Node_List[#settings.Properties.Node_List+1] = node
		return node
	end
	
	local function OnCategory(name,category)
		local after = {}
		settings.AddSetting({
			IsCategory = true,
			Property = name,
		})
		for prop,value in category do
			local EnforceType = typeof(value)
			if prop == "Changed" then
				continue
			end
			if EnforceType == "table" then
				if prop == "Syntax" then
					after[#after+1] = {prop,value}
				end
			end
			settings.AddSetting({
				Property = prop,
				Category = name,
				ReadOnly = false,
				Get = function()
					return category[prop]
				end,
				Set = function(v)
					if typeof(v) ~= EnforceType then
						return
					end
					category[prop] = v
				end,
			})
		end
		for _, v in after do
			OnCategory(v[1],v[2])
		end
	end
	for name, category in Enviornment.Settings do
		OnCategory(name,category)
	end
	settings.Properties.Refresh()
	return settings
end
module.Init = module.New
return module

end;
};
G2L_MODULES[G2L["30"]] = {
Closure = function()
    local script = G2L["30"];local table_insert = table.insert
local table_remove = table.remove
local table_clear = table.clear
local table_find = table.find
local table_sort = table.sort
local table_clone = table.clone
local string_split = string.split
local string_find = string.find
local string_lower = string.lower
local math_sqrt = math.sqrt
local math_round = math.round
local math_min = math.min
local math_max = math.max
local task_wait = task.wait
local task_spawn = task.spawn
local task_cancel = task.cancel

local Instance_new = Instance.new
local Vector2_new = Vector2.new
local UDim2_new = UDim2.new
local Color3_new = Color3.new
local Color3_fromRGB = Color3.fromRGB
local UDim_new = UDim.new

local Enum_TextXAlignment_Left = Enum.TextXAlignment.Left
local Enum_FontWeight_Regular = Enum.FontWeight.Regular
local Enum_FontStyle_Normal = Enum.FontStyle.Normal
local Enum_BorderMode_Inset = Enum.BorderMode.Inset
local Enum_UserInputType_MouseMovement = Enum.UserInputType.MouseMovement
local Enum_UserInputType_MouseButton1 = Enum.UserInputType.MouseButton1
local Enum_UserInputType_MouseButton2 = Enum.UserInputType.MouseButton2
local Enum_KeyCode_LeftShift = Enum.KeyCode.LeftShift
local Enum_KeyCode_LeftControl = Enum.KeyCode.LeftControl
local Enum_KeyCode_Z = Enum.KeyCode.Z
local Enum_KeyCode_C = Enum.KeyCode.C
local Enum_KeyCode_V = Enum.KeyCode.V
local Enum_KeyCode_D = Enum.KeyCode.D
local Enum_KeyCode_Delete = Enum.KeyCode.Delete
local Enum_KeyCode_F2 = Enum.KeyCode.F2
local Enum_KeyCode_G = Enum.KeyCode.G
local Enum_KeyCode_U = Enum.KeyCode.U
local Enum_KeyCode_X = Enum.KeyCode.X

local UserInputService = game:GetService("UserInputService")

local module = {}
local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Functions = require(script.Parent.Parent.Modules.Functions)
local Window = require(script.Parent.Parent.UI.Normal.Window)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local ContextMenu = require(script.Parent.Parent.UI.Normal.ContextMenu)
local IconMap = require(script.Parent.Parent.UI.Base.IconMap)
local Signal = require(script.Parent.Parent.Modules.Signal)
local SSI = require(script.Parent.Parent.UI.Normal.SSI)
local ViewportTextBox = require(script.Parent.Parent.UI.Base.ViewportTextBox)
local Label = require(script.Parent.Parent.UI.Base.Label)

module.ClassIcons = Functions.GetIconMap(0)
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
	for _,class in pairs(Enviorment.API.Classes) do
		local tags = class.Tags
		if not tags.NotCreatable and not tags.Service then
			local rmdEntry = Enviorment.RMD.Classes[class.Name]
			classes[#classes+1] = {class,rmdEntry and rmdEntry.ClassCategory or "Uncategorized"}
		end
	end
	table_sort(classes,function(a,b)
		if a[2] ~= b[2] then return a[2] < b[2] else return a[1].Name < b[1].Name end
	end)

	local function onClick(className)
		for _, inst in ipairs(node_list.selection.List) do
			local node = node_list.GetNodeFromInstance(inst)
			local node_p = node_list.GetNodeFromInstance(inst.Parent)
			if node == nil and node_p then
				node_list.ExpandNode(node_p)
				node_list.Refresh()
			end
			task_wait()
			node_list.ExpandNode(node)
			local new_object = Instance_new(className,inst)
			task_wait()

			node_list.Refresh()
			task_wait(0.1)
			local node_s = node_list.GetNodeFromInstance(new_object)
			node_list.SelectNode(node_s,true,true)
		end
	end

	local lastCategory = ""
	for i = 1,#classes do
		local class = classes[i][1]
		local rmdEntry = Enviorment.RMD.Classes[class.Name]
		local iconInd = (rmdEntry and tonumber(rmdEntry.ExplorerImageIndex) or 0) + 2
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
	if not Explorer.ArgumentPrompt then
		Explorer.ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new()
	end
	if not Explorer.FunctionResult then
		Explorer.FunctionResult = require(script.Parent.Parent.UI.Normal.FunctionResult).new()
	end
	for class,info in pairs(Enviorment.API.Classes) do
		if inst:IsA(class) ~= true then continue end
		for _, fn in ipairs(info.Functions) do
			fn.Text = tostring(fn.ReturnType) .. " " .. fn.Name
			LFunctions[#LFunctions+1] = fn
		end
	end
	local function onClick(FnName)
		if inst == nil then return end
		local FunctionName = string_split(FnName," ")[2]
		local prompt = Explorer.ArgumentPrompt
		prompt:Show()
		task_spawn(function()
			prompt.Interaction:Connect(function(continued,...)
				if not continued then return end
				local success,err = pcall(inst[FunctionName],inst,...)
				Explorer.FunctionResult:Display({ Success = success, Result = err })
				Explorer.FunctionResult:Show()
			end)
			prompt.Interaction:Wait()
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

local NodeTemplate
module.CreateTemplate = function()
	if NodeTemplate then
		return NodeTemplate:Clone()
	end

	local s = Instance_new("TextBox")
	s.Visible = false
	s.Name = "RenameBox"
	s.TextXAlignment = Enum_TextXAlignment_Left
	s.PlaceholderColor3 = Color3_fromRGB(179, 179, 179)
	s.ZIndex = 4
	s.TextSize = 14
	s.TextColor3 = Color3_fromRGB(255, 255, 255)
	s.BackgroundColor3 = Enviorment.Settings.Theme.Main2
	s.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum_FontWeight_Regular, Enum_FontStyle_Normal)
	s.BorderMode = Enum_BorderMode_Inset
	s.ClearTextOnFocus = false
	s.Size = UDim2_new(0, 184, 1, 0)
	s.Position = UDim2_new(0, 26, 0, 0)
	s.BorderColor3 = Color3_fromRGB(17, 133, 255)
	s.Text = "Workspace"

	local n = Enviorment.create({
		{
			1, "TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = Color3_new(0, 0, 0),
				BackgroundTransparency = 1,
				BorderColor3 = Color3_new(0, 0, 0),
				Font = 3,
				Name = "Entry",
				Position = UDim2_new(0, 1, 0, 1),
				Size = UDim2_new(0, 250, 0, 20),
				Text = "",
				TextSize = 14,
			},
		},
		{
			2, "Frame", {
				BackgroundColor3 = Enviorment.Settings.Theme.ListSelection,
				BackgroundTransparency = 1,
				BorderColor3 = Enviorment.Settings.Theme.ListSelectionOutline,
				BorderSizePixel = 0,
				Name = "Indent",
				Parent = { 1 },
				Position = UDim2_new(0, 20, 0, 0),
				Size = UDim2_new(1, -20, 1, 0),
			},
		},
		{
			3, "TextLabel", {
				BackgroundColor3 = Color3_new(1, 1, 1),
				BackgroundTransparency = 1,
				Font = 3,
				Name = "EntryName",
				Parent = { 2 },
				Position = UDim2_new(0, 26, 0, 0),
				Size = UDim2_new(1, -26, 1, 0),
				Text = "Workspace",
				TextColor3 = Color3_new(0.86274516582489, 0.86274516582489, 0.86274516582489),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{
			4, "TextButton", {
				BackgroundColor3 = Color3_new(1, 1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Font = 3,
				Name = "Expand",
				Parent = { 2 },
				Position = UDim2_new(0, -20, 0, 0),
				Size = UDim2_new(0, 20, 0, 20),
				Text = "",
				TextSize = 14,
			},
		},
		{
			5, "ImageLabel", {
				BackgroundColor3 = Color3_new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5642383285",
				ImageRectOffset = Vector2_new(144, 16),
				ImageRectSize = Vector2_new(16, 16),
				Name = "Icon",
				Parent = { 4 },
				Position = UDim2_new(0, 2, 0, 2),
				ScaleType = 4,
				Size = UDim2_new(0, 16, 0, 16),
			},
		},
		{
			6, "ImageLabel", {
				BackgroundColor3 = Color3_new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/ClassImages.png",
				ImageRectOffset = Vector2_new(304, 0),
				ImageRectSize = Vector2_new(16, 16),
				Name = "Icon",
				Parent = { 2 },
				Position = UDim2_new(0, 4, 0, 2),
				ScaleType = 4,
				Size = UDim2_new(0, 16, 0, 16),
			},
		},
		{
			7, "UICorner", {
				Name = "Icon",
				Parent = { 2 },
				TopLeftRadius = UDim_new(0,1),
				TopRightRadius = UDim_new(0,1),
				BottomLeftRadius = UDim_new(0,1),
				BottomRightRadius = UDim_new(0,1),
			},
		},
	})
	s.Parent = n.Indent
	NodeTemplate = n
	return n:Clone()
end

local VEC_176_16 = Vector2_new(176,16)
local VEC_160_16 = Vector2_new(160,16)
local VEC_144_16 = Vector2_new(144,16)
local VEC_128_16 = Vector2_new(128,16)
local VEC_0_0 = Vector2_new(0,0)

module.ExpandHighlight = function(exp)
	exp.MouseEnter:Connect(function()
		if exp.Icon.ImageRectOffset == VEC_176_16 then 
			exp.Icon.ImageRectOffset =  VEC_160_16
		elseif exp.Icon.ImageRectOffset == VEC_144_16 then 
			exp.Icon.ImageRectOffset = VEC_128_16
		end
	end)
	exp.MouseLeave:Connect(function()
		if exp.Icon.ImageRectOffset == VEC_160_16 then 
			exp.Icon.ImageRectOffset = VEC_176_16
		elseif exp.Icon.ImageRectOffset == VEC_128_16 then 
			exp.Icon.ImageRectOffset = VEC_144_16
		end
	end)
end

module.CreateNode = function(Explorer,index)
	local new = module.CreateTemplate()
	new.Position = UDim2_new(0,0,0,(index - 1) * 20)
	local Box_Focused = false
	local Update = nil
	local OldValue = nil
	local TempConnections = {}

	module.ExpandHighlight(new.Indent.Expand)
	Update = function()
		local node = Explorer.GetAtIndex(index)

		if node == nil then
			if new.Visible then new.Visible = false end
			return
		end

		if not new.Visible then new.Visible = true end
		if node.Text == nil and node.Instance == nil then
			node.RemoveOnSight = true
			return Explorer.Refresh()
		end
		local text = node.Text or (node.Instance and node.Instance.Name) or "???"
		if new.Indent.EntryName.Text ~= text then
			new.Indent.EntryName.Text = text
		end
		if node.LastName ~= text then
			node.LastName = text
			node.TextWidth = Functions.GetTextWidth(text)
		end

		local indent = 0
		if node.Indent then
			indent = node.Indent + (node.IndentInc or 0)
		elseif node.Instance then
			local depth = node.Depth
			if not depth then
				depth = #Functions.GetAncestors(node.Instance)
				node.Depth = depth
			end
			indent = depth + (node.IndentInc or 0)
		end

		local xOffset = Enviorment.Settings.Explorer.Indent * indent
		local finalX = xOffset - Explorer.XOffset
		if new.Indent.Position.X.Offset ~= finalX then
			new.Indent.Position = UDim2_new(0, finalX, 0, 0)
		end
		if new:GetAttribute("XOffset") ~= xOffset then
			new:SetAttribute("XOffset", xOffset)
		end
		if new:GetAttribute("TextWidth") ~= node.TextWidth then
			new:SetAttribute("TextWidth", node.TextWidth)
		end

		local targetColor = Enviorment.Settings.Theme.ListSelection
		if node.Selected then
			if new.Indent.BackgroundTransparency ~= 0 then new.Indent.BackgroundTransparency = 0 end
		elseif Enviorment.CheckMouseInGui(new.Indent) then
			targetColor = Enviorment.Settings.Theme.Button
			if new.Indent.BackgroundTransparency ~= 0 then new.Indent.BackgroundTransparency = 0 end
		else
			if new.Indent.BackgroundTransparency ~= 1 then new.Indent.BackgroundTransparency = 1 end
		end

		if new.Indent.BackgroundColor3 ~= targetColor then
			new.Indent.BackgroundColor3 = targetColor
		end

		local expandVisible = false
		if node.CanExpand ~= nil then
			expandVisible = node.CanExpand
		elseif Explorer.Searching == true and node.Instance ~= nil then
			local FoundOne = false
			if node.Subnodes then
				for i = 1, #node.Subnodes do
					local node2 = node.Subnodes[i]
					if node2 and node2.Instance and Explorer.SearcherNodes[node2.Instance] then
						FoundOne = true
						break
					end
				end
			end
			expandVisible = FoundOne
		elseif node.Instance ~= nil then
			expandVisible = (node.Instance:FindFirstChildWhichIsA("Instance") ~= nil)
		end

		if new.Indent.Expand.Visible ~= expandVisible then
			new.Indent.Expand.Visible = expandVisible
		end

		if node.Expanded ~= nil then
			local targetOffset = node.Expanded and VEC_176_16 or VEC_144_16
			if new.Indent.Expand.Icon.ImageRectOffset ~= targetOffset then
				new.Indent.Expand.Icon.ImageRectOffset = targetOffset
			end
		end

		if node.Renaming == true then
			local box = new.Indent.RenameBox
			box.Visible = true
			if node.NotYet then
				box.Text = "___DEFAULT___"
				node.NotYet = false
			end
			if box.Text == "___DEFAULT___" then
				box.Text = text
			end

			if Box_Focused == false then
				Box_Focused = true
				box:CaptureFocus()
			end

			box.FocusLost:Once(function(p)
				if p then
					if node.Instance then
						pcall(function() node.Instance.Name = box.Text end)
					elseif node.OnRename then
						task_spawn(node.OnRename, box.Text)
					end
				end
				task_wait()
				node.Renaming = false
				box.Visible = false
				box.Text = "___DEFAULT___"
				Box_Focused = false
				Update()
			end)
		end

		if node.Icon then
			local tOff = node.IconOffset or VEC_0_0
			local tSize = node.IconSize or VEC_0_0
			if new.Indent.Icon.ImageRectOffset ~= tOff then new.Indent.Icon.ImageRectOffset = tOff end
			if new.Indent.Icon.ImageRectSize ~= tSize then new.Indent.Icon.ImageRectSize = tSize end
			if new.Indent.Icon.Image ~= node.Icon then new.Indent.Icon.Image = node.Icon end
		elseif node.Instance then
			if (not node.CachedIcon) or node.CachedIcon[4] ~= Enviorment.Settings.Explorer.IconPack then
				local img, rectOff, rectSize = Functions.GetIconOfInstanceWith(node.Instance, Enviorment)
				node.CachedIcon = {img, rectOff, rectSize, Enviorment.Settings.Explorer.IconPack}
			end
			local c = node.CachedIcon
			if new.Indent.Icon.Image ~= c[1] then new.Indent.Icon.Image = c[1] end
			if new.Indent.Icon.ImageRectOffset ~= c[2] then new.Indent.Icon.ImageRectOffset = c[2] end
			if new.Indent.Icon.ImageRectSize ~= c[3] then new.Indent.Icon.ImageRectSize = c[3] end
		end

		if OldValue ~= node.Instance then
			if node == nil or node.Instance == nil then
				for i = 1, #TempConnections do TempConnections[i]:Disconnect(); TempConnections[i] = nil end
				return
			end
			for i = 1, #TempConnections do TempConnections[i]:Disconnect(); TempConnections[i] = nil end

			local inst = node.Instance
			TempConnections[1] = inst.ChildAdded:Connect(function()
				if node.Expanded then 
					Explorer.ExpandNode(node,true)
				end
				if Explorer.Searching and Enviorment.Settings.Explorer.AutoUpdateSearch then
					Explorer.StartSearch(Explorer.SearchText)
				end
			end)

			TempConnections[2] = inst.AncestryChanged:Connect(function()
				node.RemoveOnSight = true
				Update()
				Explorer.Refresh(true)
			end)

			TempConnections[3] = inst.Changed:Connect(function(p)
				if p == "Parent" then
					node.RemoveOnSight = true
					Update()
					Explorer.Refresh(true)
				elseif p == "Name" then
					node.LastName = nil 
					Update()
				end
			end)
			OldValue = inst
		end
	end

	new.Indent.Expand.Activated:Connect(function()
		local node = Explorer.GetAtIndex(index)
		if node == nil then return end
		node.Expanded = not node.Expanded
		Update()
		if node.Expanded == true then
			Explorer.ExpandNode(node,true)
		else
			Explorer.CollapseNode(node,false)
		end
	end)
	new.MouseButton1Down:Connect(function() 
		local node = Explorer.GetAtIndex(index)
		if node == nil then return end
		node.Selected = node.Selected ~= nil and node.Selected or false
		Explorer.SelectNode(node,not node.Selected,true)
	end)
	new.MouseButton2Down:Connect(function() 
		if new.Visible == true then
			Explorer.ShowContextMenu()
		end
	end)
	new.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum_UserInputType_MouseMovement then return end
		local node = Explorer.GetAtIndex(index)
		if node == nil or node.Selected then return end
		new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.Button
		new.Indent.BorderSizePixel = 0
		new.Indent.BackgroundTransparency = 0
	end)
	new.InputEnded:Connect(function(input)
		local node = Explorer.GetAtIndex(index)
		if node == nil or node.Selected or input.UserInputType ~= Enum_UserInputType_MouseMovement then return end
		new.Indent.BackgroundTransparency = 1
	end)
	new.InputBegan:Connect(function(input)
		if input.UserInputType == Enum_UserInputType_MouseButton1 then
			local releaseEvent, mouseEvent
			local mouse = Enviorment.Mouse
			local startX, startY = mouse.X, mouse.Y
			local listOffsetX = startX - Explorer.NodeContainer.AbsolutePosition.X
			local listOffsetY = startY - Explorer.NodeContainer.AbsolutePosition.Y

			releaseEvent = UserInputService.InputEnded:Connect(function(in_pt)
				if in_pt.UserInputType == Enum_UserInputType_MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
				end
			end)

			mouseEvent = UserInputService.InputChanged:Connect(function(in_pt)
				if in_pt.UserInputType == Enum_UserInputType_MouseMovement then
					local dist = math_sqrt((mouse.X - startX) ^ 2 + (mouse.Y - startY) ^ 2)
					if dist > 5 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						Explorer.StartDrag(listOffsetX, listOffsetY)
					end
				end
			end)
		end
	end)
	Update()
	Explorer.RegisterCallback(Update)
	return new
end

module.NewExplorer = function(Embedded,ExplorerContainer)
	local Explorer;
	Explorer = {
		Window = Embedded == true and {OnActivate = Signal.new(),OnDeactivate = Signal.new(),Show = function() end,SetSize = function(_,x,y) ExplorerContainer.Size = UDim2_new(0,x,0,y); end,SetTitle = function() end,GuiElems = {Content = ExplorerContainer,Line = Instance_new("Frame")}} or Window.new(),
		YOffset = 0,
		XOffset = 0,
		Nodes = {},
		VisibleNodes = {},
		_selected = {},
		Callbacks = {},
		Queue = {},
		SearchThreads = {},
		NodeSelection = {},
		selectionBox = Instance_new("SelectionBox",script.Parent.Parent),
		NilInstancesFolder = Instance_new("Folder"),
		NodeSelectionChanged = Signal.new(),
		AllowMultiSelection = true,
		ContextEnabled = Embedded ~= true,
		selection = {List = {},Changed = Signal.new()},
		clipboard = {},
		Selected = {},
		GuiElems = {},
		Filters = nil,
		SearcherNodes = setmetatable({},{__mode = "k"}),
		Searching = false,
		FilterEnabled = false,
		SearchText = "",
		Dragging = false,
		FilterInfo = {
			{ Name = "<remotes>", Desc = "Filters out any instances that arent RemoteEvents, BindableEvents, BindableFunctions or RemoteFunctions." },
			{ Name = "<modules>", Desc = "Filters out any instances that arent ModuleScripts." },
			{ Name = "<loadedmodules>", Desc = "Filters out any ModuleScripts that arent loaded." },
			{ Name = "<scripts>", Desc = "Filters out any instances that arent LuaSourceContainers." },
			{ Name = "<characters>", Desc = "Filters out any instance that isnt a Player's character." },	
		},
		AddToQueue = function(f)
			Explorer.Queue[#Explorer.Queue+1] = f
		end,
		GetInstances = function()
			local inst = game:GetDescendants() 
			if Enviorment.Functions.getnilinstances then
				local nils = Enviorment.Functions.getnilinstances()
				local s = #inst
				for i = 1, #nils do s += 1; inst[s] = nils[i] end
			end
			return inst
		end,
		GetInstancesForSearch = function()
			local filtered = game:GetDescendants()
			if Enviorment.Functions.getnilinstances then
				local nils = Enviorment.Functions.getnilinstances()
				local s = #filtered
				for i = 1, #nils do s += 1; filtered[s] = nils[i] end
			end
			return filtered
		end,
		StartDrag = function(offX, offY)
			if Explorer.Dragging then return end
			Explorer.Dragging = true
			local dragTree = Explorer.NodeContainer:Clone()
			dragTree:ClearAllChildren()
			local sel = Explorer.selection.List[1]
			if sel == nil then Explorer.Dragging = false; return end
			local node = Explorer.GetNodeFromInstance(sel)
			if node == nil then Explorer.Dragging = false; return end

			local newGui = Instance_new("ScreenGui")
			newGui.DisplayOrder = Enviorment.DisplayOrders.Menu
			dragTree.Parent = newGui
			Enviorment.ShowGui(newGui)
			local dragOutline = Enviorment.create({
				{ 1, "Frame", { BackgroundColor3 = Color3_new(1, 1, 1), BackgroundTransparency = 1, Name = "DragSelect", Size = UDim2_new(1, 0, 1, 0), }, },
				{ 2, "Frame", { BackgroundColor3 = Color3_new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Size = UDim2_new(1, 0, 0, 1), ZIndex = 2, }, },
				{ 3, "Frame", { BackgroundColor3 = Color3_new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Position = UDim2_new(0, 0, 1, -1), Size = UDim2_new(1, 0, 0, 1), ZIndex = 2, }, },
				{ 4, "Frame", { BackgroundColor3 = Color3_new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Size = UDim2_new(0, 1, 1, 0), ZIndex = 2, }, },
				{ 5, "Frame", { BackgroundColor3 = Color3_new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Position = UDim2_new(1, -1, 0, 0), Size = UDim2_new(0, 1, 1, 0), ZIndex = 2, }, },
			})
			dragOutline.Parent = Explorer.NodeContainer

			local mouse = Enviorment.Mouse
			local function move()
				local posX = mouse.X - offX
				local posY = mouse.Y - offY
				dragTree.Position = UDim2_new(0, posX, 0, posY)
				local children = Explorer.NodeContainer:GetChildren()
				for i = #children, 1, -1 do
					local v = children[i]
					if v == dragOutline or v:FindFirstChild("Indent") == nil then table_remove(children,i) end
				end
				for _,entry in ipairs(children) do
					if Enviorment.CheckMouseInGui(entry) and entry ~= dragOutline then
						dragOutline.Position = entry.Position
						dragOutline.Size = UDim2_new(0, entry.Size.X.Offset - entry.Indent.Position.X.Offset, 0, 20)
						dragOutline.Visible = true
						return
					end
				end
				dragOutline.Visible = false
			end
			move()

			local input = Enviorment.UIS
			local mouseEvent, releaseEvent
			mouseEvent = input.InputChanged:Connect(function(in_pt)
				if in_pt.UserInputType == Enum_UserInputType_MouseMovement then move() end
			end)
			releaseEvent = input.InputEnded:Connect(function(in_pt)
				if in_pt.UserInputType == Enum_UserInputType_MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
					newGui:Destroy()
					dragOutline:Destroy()
					Explorer.Dragging = false
					local children = Explorer.NodeContainer:GetChildren()
					for i = #children, 1, -1 do
						local v = children[i]
						if v == dragOutline or v:FindFirstChild("Indent") == nil then table_remove(children,i) end
					end
					for i, entry in ipairs(children) do
						if Enviorment.CheckMouseInGui(entry) then
							local n = Explorer.GetAtIndex(i)
							if n and not n.Selected then
								Explorer.selection.List[1].Parent = n.Instance
								Explorer.ViewObject(Explorer.selection.List[1])
							end
							break
						end
					end
				end
			end)
		end,
		GetNodesForSearch = function()
			local n = {}
			local function OnNode(node)
				n[#n+1] = node
				if node.Subnodes then
					for i = 1, #node.Subnodes do
						local n2 = node.Subnodes[i]
						if n2 == nil then continue end
						OnNode(n2)
					end
				end
			end
			for i = 1, #Explorer.Nodes do
				OnNode(Explorer.Nodes[i])
			end
			return n
		end,
		StartEmbeddedSearch = function(text)
			for i = 1, #Explorer.SearchThreads do pcall(task_cancel, Explorer.SearchThreads[i]) end
			table_clear(Explorer.SearchThreads)

			Explorer.Window:SetTitle("Explorer - Searching")
			Explorer.SearchText = text
			Explorer.Searching = true
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			warn("emv")
			for _, node in ipairs(Explorer.GetNodesForSearch()) do
				local t = node.Text
				if t == nil then
					if node.Instance ~= nil then
						t = node.Instance.Name
					else
						continue
					end
				end
				if string_find(string_lower(t),text, 1, true) then
					warn("set to true ",t)
					Explorer.SearcherNodes[node] = true
				else
					Explorer.SearcherNodes[node] = false
				end
			end
			Explorer.Refresh()
		end,
		StartSearch = function(text)
			if Embedded then
				return Explorer.StartEmbeddedSearch(text)
			end
			for i = 1, #Explorer.SearchThreads do pcall(task_cancel, Explorer.SearchThreads[i]) end
			table_clear(Explorer.SearchThreads)

			Explorer.Window:SetTitle("Explorer - Searching")
			Explorer.SearchText = text
			Explorer.Searching = true
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})

			local lowerQuery = string_lower(text)
			local chars = string_split(lowerQuery,"")
			local in_filter, ctoken, has_filters = false, "", false
			local filters = { remotes = false, modules = false, scripts = false, loadedmodules = false, characters = false }

			for i = 1, #chars do
				local char = chars[i]
				if char == "<" then in_filter, has_filters = true, true
				elseif char == ">" then in_filter, filters[ctoken], ctoken = false, true, ""
				elseif in_filter then ctoken = ctoken .. char end
			end

			Explorer.Filters = filters
			Explorer.FilterEnabled = has_filters

			local loadedMap = {}
			if filters.loadedmodules and Enviorment.Functions.getloadedmodules then
				local loaded = Enviorment.Functions.getloadedmodules()
				for i = 1, #loaded do loadedMap[loaded[i]] = true end
			end
			local playersMap = {}
			if filters.characters then
				local plrs = Enviorment.Players:GetPlayers()
				for i = 1, #plrs do 
					if plrs[i].Character then playersMap[plrs[i].Character] = true end 
				end
			end

			local instances = Explorer.GetInstancesForSearch()
			for i = 1, #instances do
				local inst = instances[i]
				local matched = false
				if not has_filters then
					matched = string_find(string_lower(inst.Name), lowerQuery, 1, true) ~= nil
				else
					if filters.remotes and (inst:IsA("UnreliableRemoteEvent") or inst:IsA("BaseRemoteEvent") or inst:IsA("RemoteFunction") or inst:IsA("BindableFunction") or inst:IsA("BindableEvent")) then matched = true
					elseif filters.modules and inst.ClassName == "ModuleScript" then matched = true
					elseif filters.scripts and inst:IsA("LuaSourceContainer") then matched = true
					elseif filters.loadedmodules and inst:IsA("ModuleScript") and loadedMap[inst] then matched = true
					elseif filters.characters and playersMap[inst] then matched = true end
				end
				if matched then Explorer.SearcherNodes[inst] = true end
			end

			local searcherNodes = Explorer.SearcherNodes
			local ancestorsMap = {}
			for inst, _ in pairs(searcherNodes) do
				local parent = inst.Parent
				while parent and not searcherNodes[parent] and not ancestorsMap[parent] do
					ancestorsMap[parent] = true
					parent = parent.Parent
				end
			end
			for parent, _ in pairs(ancestorsMap) do searcherNodes[parent] = true end

			Explorer.SearchThreads[#Explorer.SearchThreads+1] = task_spawn(function()
				local stack = {}
				local sc = 0
				local nodes = Explorer.Nodes
				for i = #nodes, 1, -1 do sc += 1; stack[sc] = nodes[i] end
				local yieldCount = 0
				while sc > 0 do
					local node2 = stack[sc]
					stack[sc] = nil
					sc -= 1
					if not node2 or not node2.Instance then continue end
					if searcherNodes[node2.Instance] then
						Explorer.ExpandNode(node2, true, true)
						if node2.Subnodes then
							local subnodes = node2.Subnodes
							for i = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[i] end
						end
					end
					yieldCount += 1
					if yieldCount % 2000 == 0 then task_wait() end
				end
				Explorer.Refresh()
				Explorer.Window:SetTitle("Explorer")
			end)
		end,
		StopSearch = function(Silent)
			Explorer.FilterEnabled = false
			Explorer.Filters = nil
			for i = 1, #Explorer.SearchThreads do pcall(task_cancel, Explorer.SearchThreads[i]) end
			table_clear(Explorer.SearchThreads)
			Explorer.SearchText = ""
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			for i = 1, #Explorer.Nodes do
				local node2 = Explorer.Nodes[i]
				if node2 == nil then continue end
				node2.Subnodes = {}
				node2.Expanded = false
			end
			Explorer.Searching = false
			if Silent ~= true then
				Explorer.Refresh()
			end
			Explorer.Window:SetTitle("Explorer")
		end,
		CheckForInstance = function(node,inst)
			if node == nil then return end
			if node.Instance == inst then return true end
			if node.Subnodes then
				for i = 1, #node.Subnodes do
					if Explorer.CheckForInstance(node.Subnodes[i],inst) == true then return true end
				end
			end
			return false
		end,
		CheckForConflicts = function()
			if Explorer.Searching then return end
			local stack = {}
			local sc = 0
			local nodes = Explorer.Nodes
			for i = #nodes, 1, -1 do sc += 1; stack[sc] = nodes[i] end

			local nilFol = Explorer.NilInstancesFolder
			local nilNode = Explorer.NilNode

			while sc > 0 do
				local node = stack[sc]
				stack[sc] = nil
				sc -= 1

				if node == nil or node.Instance == nil then
					continue
				end

				if node.Expanded then
					local children = node.Instance:GetChildren()
					if #node.Subnodes ~= #children then
						Explorer.ExpandNode(node)
					end
					local subnodes = node.Subnodes
					local nodeInst = node.Instance
					for i = #subnodes, 1, -1 do
						local subnode = subnodes[i]
						if subnode and subnode.Instance then
							if subnode.Instance.Parent ~= nodeInst and nodeInst ~= nilFol and subnode.Instance ~= nilFol and node ~= nilNode and subnode ~= nilNode then
								subnode.RemoveOnSight = true
								table_remove(subnodes, i)
								Explorer.Refresh()
							else
								sc += 1
								stack[sc] = subnode
							end
						end
					end
				end
			end
		end,
		UpdateVisibleNodes = function()
			if Explorer.ScrollY == nil then
				return
			end
			local visible = {}
			local stack = {}
			local sc = 0
			local count = 0
			local nodes = Explorer.Nodes
			for i = #nodes, 1, -1 do sc += 1; stack[sc] = nodes[i] end
			local isSearch = Explorer.Searching
			local searchNodes = Explorer.SearcherNodes
			local nilNode = Explorer.NilNode

			while sc > 0 do
				local node = stack[sc]
				stack[sc] = nil
				sc -= 1
				if node == nil then
					continue
				end
				if node.RemoveOnSight == true then
					if node == nilNode then 
						node.RemoveOnSight = false	
					else
						continue
					end
				end
				if isSearch then
					if node.Instance ~= nil then
						if searchNodes[node.Instance] ~= true then continue end
					else
						if searchNodes[node] ~= true then continue end
					end
				end

				count += 1
				visible[count] = node

				if node.Expanded and node.Subnodes then
					local subnodes = node.Subnodes
					for i = #subnodes, 1, -1 do
						local n2 = subnodes[i]
						if n2 and not n2.RemoveOnSight then sc += 1; stack[sc] = n2 end
					end
				end
			end

			Explorer.VisibleNodes = visible
			Explorer.ScrollY.VisibleSpace = math_round(Explorer.Window.GuiElems.Content.AbsoluteSize.Y / Enviorment.Settings.Explorer.Indent) - 2
			Explorer.ScrollY.TotalSpace = count
		end,
		ExpandNode = function(node,Instant,NoRefresh)
			if node == nil then return end
			if node.Instance then
				local nilInstances = Enviorment.Functions.getnilinstances and Enviorment.Functions.getnilinstances() or {}
				local IsNil = table_find(nilInstances, node.Instance) ~= nil
				local children = node.Instance:GetChildren()
				for i = 1, #children do
					local inst2 = children[i]
					local pDepth = node.Depth
					if not pDepth then pDepth = #Functions.GetAncestors(node.Instance); node.Depth = pDepth end

					local inc = IsNil and (node.IndentIncrement or 1) + 1 or 0
					local n = {
						Instance = inst2,
						Parent = node,
						Depth = pDepth + 1,
						IndentIncrement = inc,
						IndentInc = (node.IndentInc or 0) + inc,
						Renaming = false,
						Expanded = false,
						Selected = false,
						CanExpand = nil,
						Highlighted = false,
						Subnodes = {}
					}
					local f = function()
						if Explorer.CheckForInstance(node,inst2) then return end
						node.Subnodes[#node.Subnodes+1] = n
					end
					if Instant then f() else Explorer.AddToQueue(f) end
				end
			end
			node.Expanded = true
			if NoRefresh then return node end
			Explorer.Refresh(true)
			return node
		end,
		ExpandAll = function(node)
			if node == nil then return end
			local stack = {node}
			local sc = 1
			while sc > 0 do
				local node2 = stack[sc]
				stack[sc] = nil
				sc -= 1
				if node2 == nil or not node2.Instance then continue end
				if node2.Instance:FindFirstChildWhichIsA("Instance") == nil then continue end

				Explorer.ExpandNode(node2, false, true)
				if node2.Subnodes then
					local subnodes = node2.Subnodes
					for i = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[i] end
				end
			end
			Explorer.Refresh()
		end,
		CollapseNode = function(node,clean)
			if node == nil then return end
			if clean then node.Subnodes = {} end
			node.Expanded = false
			Explorer.Refresh(true)
		end,
		CollapseAll = function(node) return Explorer.CollapseNode(node,true) end,
		ClearSelection = function()
			local sel = Explorer.GetSelection()
			for i = 1, #sel do sel[i].Selected = false end
		end,
		RefreshFilters = function()
			local children = Explorer.Autofill:GetChildren()
			for i = 1, #children do
				if children[i].Name == "filter" then
					children[i]:Destroy()
				end
			end
			Instance_new("UIListLayout",Explorer.Autofill)
			for _, info in ipairs(Explorer.FilterInfo) do
				local new = Label.new({Size = UDim2_new(1,0,0,20),Parent = Explorer.Autofill,Text = info.Name})
				local btn = Instance_new("TextButton",new)
				for _, prop in ipairs({"FontFace","TextSize","Text","Size","Parent","BackgroundTransparency","BackgroundColor3","TextColor3","TextTransparency"}) do
					btn[prop] = new[prop]
				end
				new:Destroy()
				btn.Name = "filter"
				btn.BackgroundTransparency = 1
				btn.MouseButton1Up:Connect(function() Explorer.SearchBox.Text = info.Name end)
				btn.TextXAlignment = Enum_TextXAlignment_Left
				btn.ZIndex = 6
			end
		end,
		SelectNode = function(node,state,apply)
			if Explorer.RunOnSelect and state == true then
				task_spawn(Explorer.RunOnSelect,node)
				Explorer.RunOnSelect = nil
				return
			end
			if node == nil then
				Explorer.ClearSelection()
				return
			end
			if state == false then
				if apply then Explorer.ClearSelection() end
				node.Selected = false
				Explorer.Refresh()
				return
			end

			if apply and Explorer.AllowMultiSelection then
				if Enviorment.UIS:IsKeyDown(Enum_KeyCode_LeftShift) then
					local firstSelected = node
					local sel = Explorer.GetSelection()
					if #sel > 0 then firstSelected = sel[1] end
					Explorer.ClearSelection()

					local firstIndex = Explorer.GetNodeIndex(firstSelected)
					local secondIndex = Explorer.GetNodeIndex(node)
					local startIdx = math_min(firstIndex, secondIndex)
					local endIdx = math_max(firstIndex, secondIndex)

					for i = startIdx, endIdx do
						if Explorer.VisibleNodes[i] then Explorer.VisibleNodes[i].Selected = true end
					end
					firstSelected.Selected = true
					node.Selected = true
				elseif Enviorment.UIS:IsKeyDown(Enum_KeyCode_LeftControl) then
					node.Selected = true
				else
					Explorer.ClearSelection()
					node.Selected = true
				end
			else
				Explorer.ClearSelection()
				node.Selected = true
			end
			Explorer.Refresh()
		end,
		RegisterCallback = function(f) Explorer.Callbacks[#Explorer.Callbacks+1] = f end,
		Refresh = function(fast)
			fast = false
			Explorer.UpdateVisibleNodes()
			Explorer.selectionBox.Visible = Enviorment.Settings.Explorer.PartSelectionBox

			local sel7 = Explorer.GetSelection()

			if #Explorer.NodeSelection ~= #sel7 then
				Explorer.NodeSelection = sel7
				Explorer.NodeSelectionChanged:Fire()
			end

			local sel = Explorer.GetSelectedObjects()
			local match = true
			if #Explorer.selection.List ~= #sel then
				match = false
			else
				for i = 1, #sel do if Explorer.selection.List[i] ~= sel[i] then match = false; break end end
			end
			if not match then
				Explorer.selection.List = sel
				Explorer.selection.Changed:Fire()
			end

			Explorer.Selected = Explorer.selection.List
			match = true
			if #Explorer._selected ~= #Explorer.Selected then match = false else
				for i = 1, #Explorer.Selected do if Explorer._selected[i] ~= Explorer.Selected[i] then match = false; break end end
			end
			if match == false then
				Enviorment.AppSignal:Fire("Properties",Explorer.Selected)
				Explorer._selected = Explorer.Selected
			end

			if Explorer.NilNode then
				Explorer.NilNode.CanExpand = #Explorer.NilNode.Subnodes >= 1 and true or false
				local children = Explorer.NilInstancesFolder:GetChildren()
				for i = 1, #children do children[i].Parent = nil end
			end

			for i = 1, #Explorer.Callbacks do 
				local f = Explorer.Callbacks[i]
				if f ~= nil then 
					if fast then task_spawn(f) else f() end 
				end 
			end
		end,
		GetAtIndex = function(index)
			if index == nil then return nil end
			return Explorer.VisibleNodes[index + Explorer.YOffset]
		end,
		GetNodes = function() return Explorer.VisibleNodes end,
		GetNodes_Raw = function()
			local nodes = {}
			local stack = {}
			local count = 0
			local sc = 0
			local bnodes = Explorer.Nodes
			for i = #bnodes, 1, -1 do sc += 1; stack[sc] = bnodes[i] end
			while sc > 0 do
				local node = stack[sc]
				stack[sc] = nil
				sc -= 1
				if node and not node.RemoveOnSight then
					count += 1
					nodes[count] = node
					if node.Subnodes then
						local subnodes = node.Subnodes
						for i = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[i] end
					end
				end
			end
			return nodes
		end,
		GetNodeIndex = function(node)
			if node == nil then return 1 end
			for i = 1, #Explorer.VisibleNodes do if Explorer.VisibleNodes[i] == node then return i end end
			return 1
		end,
		GetMaxNode = function() return Explorer.VisibleNodes[#Explorer.VisibleNodes] end,
		GetMaxIndex = function() return #Explorer.VisibleNodes end,
		GetLenght = function() return Explorer.VisibleNodes and #Explorer.VisibleNodes or 0 end,
		GetNodeFromInstance = function(obj)
			local stack = {}
			local sc = 0
			local bnodes = Explorer.Nodes
			for i = #bnodes, 1, -1 do sc += 1; stack[sc] = bnodes[i] end
			while sc > 0 do
				local node = stack[sc]
				stack[sc] = nil
				sc -= 1
				if node and not node.RemoveOnSight then
					if node.Instance == obj then return node end
					if node.Subnodes then
						local subnodes = node.Subnodes
						for i = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[i] end
					end
				end
			end
			return nil
		end,
		GetSelection = function()
			local nodes = {}
			local count = 0
			local stack = {}
			local sc = 0
			local bnodes = Explorer.Nodes
			local nilNode = Explorer.NilNode
			for i = #bnodes, 1, -1 do sc += 1; stack[sc] = bnodes[i] end
			while sc > 0 do
				local node = stack[sc]
				stack[sc] = nil
				sc -= 1
				if node == nil then
					continue
				end
				if node.RemoveOnSight == true then
					if node == nilNode then
						node.RemoveOnSight = false
					else
						continue
					end
				end

				if node.Selected == true then 
					count += 1
					nodes[count] = node 
				end
				if node.Subnodes ~= nil then
					local subnodes = node.Subnodes
					for i = #subnodes, 1, -1 do 
						sc += 1
						stack[sc] = subnodes[i] 
					end
				end
			end
			return nodes
		end,
		GetSelectedObjects = function()
			local inst = {}
			local sel = Explorer.GetSelection()
			for i = 1, #sel do inst[i] = sel[i].Instance end
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
			
			if context == nil then
				return
			end
			
			context:Clear()
			local sList = Explorer.selection.List
			local emptyClipboard = #Explorer.clipboard == 0
			local nilSelected = (Explorer.NilNode and Explorer.NilNode.Selected == true)

			context:AddRegistered("CUT", nilSelected)
			context:AddRegistered("COPY", nilSelected)
			context:AddRegistered("PASTE", emptyClipboard or nilSelected)
			context:AddRegistered("DUPLICATE", nilSelected)
			context:AddRegistered("DELETE", nilSelected)
			context:AddRegistered("RENAME", #sList ~= 1 or nilSelected)

			context:AddDivider()
			context:AddRegistered("GROUP", not nilSelected)
			context:AddRegistered("UNGROUP", not nilSelected)
			context:AddRegistered("SELECT_CHILDREN")
			context:AddRegistered("SELECT_DESCENDANTS")
			context:AddRegistered("JUMP_TO_PARENT", nilSelected)
			context:AddRegistered("EXPAND_ALL")
			context:AddRegistered("COLLAPSE_ALL")

			context:AddDivider()
			if Explorer.Searching then context:AddRegistered("CLEAR_SEARCH_AND_JUMP_TO") end
			if Enviorment.setclipboard then context:AddRegistered("COPY_PATH") end
			context:AddRegistered("INSERT_OBJECT", nilSelected)
			context:AddRegistered("SAVE_INST", nilSelected)
			context:AddRegistered("CALL_FUNCTION", nilSelected)
			context:AddRegistered("VIEW_CONNECTIONS", nilSelected)
			context:AddRegistered("GET_REFERENCES")
			context:AddRegistered("VIEW_API")

			context:QueueDivider()

			if #sList == 1 then
				if sList[1]:IsA("BasePart") or sList[1]:IsA("Model") then
					context:AddRegistered("TELEPORT_TO")
					context:AddRegistered("VIEW_OBJECT")
				end
			else
				local found = false
				for i = 1, #sList do
					if sList[i]:IsA("BasePart") or sList[i]:IsA("Model") then found = true; break end
				end
				if found then
					context:AddRegistered("TELEPORT_TO",true)
					context:AddRegistered("VIEW_OBJECT",true)
				end
			end

			if #sList == 1 then
				if sList[1]:IsA("Player") then context:AddRegistered("SELECT_CHARACTER") end
				if sList[1]:IsA("LuaSourceContainer") then context:AddRegistered("VIEW_SCRIPT") end
			else
				local found = false
				for i = 1, #sList do
					if sList[i]:IsA("Player") then found = true; break end
				end
				if found then context:AddRegistered("SELECT_CHARACTER",true) end
			end
			context:Show()
		end,
		ViewObject = function(inst)
			if Explorer.IsObjectVisible(inst) then return end
			local ancestors = Functions.GetAncestors(inst)
			ancestors = Functions.ReverseTable(ancestors)
			for i = 1, #ancestors do
				local node2 = Explorer.GetNodeFromInstance(ancestors[i])
				if node2 then Explorer.ExpandNode(node2) end
				task_wait(0.1)
			end
			task_wait(0.1)
			local node = Explorer.GetNodeFromInstance(inst)
			if node then
				Explorer.ClearSelection()
				node.Selected = true
				local index = Explorer.GetNodeIndex(node)
				Explorer.ScrollY.Index = index - 2
				Explorer.ScrollY:Update()
			end
			Explorer.Refresh()
		end,
		IsNodeVisible = function(node)
			if node == nil then return false end
			local index = Explorer.GetNodeIndex(node)
			if index == nil then return false end
			return index >= Explorer.ScrollY.Index and index <= Explorer.ScrollY.Index + Explorer.ScrollY.VisibleSpace
		end,
		IsObjectVisible = function(obj)
			local node = Explorer.GetNodeFromInstance(obj)
			if node == nil then return false end
			return Explorer.IsNodeVisible(node)
		end,
	}
	Explorer.Window:SetTitle("Explorer")
	Explorer.NodeContainer = Explorer.Window.GuiElems.Content:Clone()
	Explorer.NodeContainer.BackgroundTransparency = 1
	Explorer.NodeContainer.Name = "NodeContainer"
	Explorer.NodeContainer.Parent = Explorer.Window.GuiElems.Content
	Explorer.NodeContainer.ZIndex = -1
	Explorer.NodeContainer.Size = UDim2_new(1,-16,1,-33)
	Explorer.NodeContainer.Position = UDim2_new(0,0,0,23)

	if Explorer.NodeContainer:FindFirstChild("Line") then
		Explorer.NodeContainer.Line:Destroy()
	end

	local explorerItems = Enviorment.create({
		{ 1, "Folder", { Name = "ExplorerItems" } },
		{ 2, "Frame", { BackgroundColor3 = Enviorment.Settings.Theme.Main1, BorderSizePixel = 0, Name = "ToolBar", Parent = { 1 }, Size = UDim2_new(1, 0, 0, 22), }, },
		{ 3, "Frame", { BackgroundColor3 = Enviorment.Settings.Theme.TextBox, 
			BorderColor3 = Enviorment.Settings.Theme.Outline3, BorderSizePixel = 0, Name = "SearchFrame", Parent = { 2 }, Position = UDim2_new(0, 3, 0, 1), Size = UDim2_new(1, -6, 0, 18), }, },
		{ 4, "TextBox", {
			BackgroundColor3 = Color3_fromRGB(1, 1, 1), 
			BackgroundTransparency = 1, 
			ClearTextOnFocus = false, 
			Font = 3, 
			Name = "SearchBox", 
			Parent = { 3 }, 
			PlaceholderColor3 = Color3_fromRGB(100,100,100), 
			PlaceholderText = "Filter workspace (Ctrl+Shift+X)", 
			Position = UDim2_new(0, 4, 0, 0), 
			Size = UDim2_new(1, -24, 0, 18), 
			Text = "", 
			TextColor3 = Color3_new(1, 1, 1), TextSize = 14, TextXAlignment = 0, }, },
		{ 5, "UICorner", { CornerRadius = UDim_new(0, 2), Parent = { 3 } } },
		{ 6, "TextButton", { AutoButtonColor = false, BackgroundColor3 = Enviorment.Settings.Theme.Menu, BackgroundTransparency = 1, BorderSizePixel = 0, Font = 3, Name = "Reset", Parent = { 3 }, Position = UDim2_new(1, -17, 0, 1), Size = UDim2_new(0, 16, 0, 16), Text = "", TextColor3 = Color3_new(1, 1, 1), TextSize = 14, }, },
		{ 7, "ImageLabel", { BackgroundColor3 = Color3_new(1, 1, 1), BackgroundTransparency = 1, Image = "rbxassetid://5034718129", ImageColor3 = Color3_new(100,100,100), Parent = { 6 }, Size = UDim2_new(0, 16, 0, 16), }, },
		{ 8, "TextButton", { AutoButtonColor = false, BackgroundColor3 = Enviorment.Settings.Theme.Menu, BackgroundTransparency = 1, BorderSizePixel = 0, Font = 3, Name = "Refresh", Parent = { 2 }, Position = UDim2_new(1, -20, 0, 1), Size = UDim2_new(0, 18, 0, 18), Text = "", TextColor3 = Color3_new(1, 1, 1), TextSize = 14, Visible = false, }, },
		{ 9, "ImageLabel", { BackgroundColor3 = Color3_new(1, 1, 1), BackgroundTransparency = 1, Image = "rbxassetid://5642310344", Parent = { 8 }, Position = UDim2_new(0, 3, 0, 3), Size = UDim2_new(0, 12, 0, 12), }, },
		{ 10, "Frame", { 
			BackgroundColor3 = Color3_fromRGB(40,40,40), 
			BorderSizePixel = 0, 
			Name = "ScrollCorner", 
			Parent = { 1 }, 
			Position = UDim2_new(1, -16, 1, -16), 
			Size = UDim2_new(0, 16, 0, 16), 
			Visible = false, 
		}, 
		},
		{ 11, "Frame", { 
			BackgroundColor3 = Color3_fromRGB(1, 1, 1), 
			BackgroundTransparency = 1, 
			ClipsDescendants = true, 
			Name = "List", 
			Parent = { 1 }, 
			Position = UDim2_new(0, 0, 0, 23), 
			Size = UDim2_new(1, 0, 1, -23), 
		}, 
		},
	})

	Explorer.Window.GuiElems.Line.Position = UDim2_new(0, 0, 0, 22)
	local toolBar = explorerItems.ToolBar
	local treeFrame = explorerItems.List
	local SearchBox = toolBar.SearchFrame.SearchBox
	Explorer.GuiElems.ToolBar = toolBar
	Explorer.GuiElems.TreeFrame = treeFrame
	toolBar.Parent = Explorer.Window.GuiElems.Content
	treeFrame.Parent = Explorer.Window.GuiElems.Content
	explorerItems.ScrollCorner.Parent = Explorer.Window.GuiElems.Content
	ViewportTextBox.convert(SearchBox);
	Explorer.NilInstancesFolder.Name = Enviorment.Functions.Support.getnilinstances == true and "Nil Instances" or "Nil Instances [Not Supported]"

	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SearchBox.Text == "" then Explorer.StopSearch() else Explorer.StopSearch(true);task_wait();Explorer.StartSearch(SearchBox.Text) end
		Explorer.Autofill.Visible = false
	end)
	SearchBox.Focused:Connect(function()
		if #Explorer.FilterInfo ~= 0 and SearchBox.Text == ""then
			Explorer.Autofill.Visible = true
		end
	end)
	SearchBox.FocusLost:Connect(function(pressed)
		if pressed then
			Explorer.StopSearch(true)
			task_wait()
			Explorer.StartSearch(SearchBox.Text)
		end
		task_wait()
		Explorer.Autofill.Visible = false
	end)

	local Autofill = Instance_new("Frame")
	Autofill.BorderSizePixel = 1
	Autofill.BackgroundColor3 = Enviorment.Settings.Theme.Main2
	Autofill.Size = UDim2_new(1,-20,0,100)
	Autofill.Position = UDim2_new(0,10,0,20)
	Autofill.BorderColor3 = Enviorment.Settings.Theme.Outline1
	Autofill.Parent = Explorer.Window.GuiElems.Content
	Autofill.ZIndex = 5
	Autofill.Visible = false
	Explorer.Autofill = Autofill
	Explorer.SearchBox = SearchBox
	Explorer.RefreshFilters()
	local function AddTopObject(obj)
		if Embedded and obj == Explorer.NilInstancesFolder then
			return
		end
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
			Depth = obj and #Functions.GetAncestors(obj) or 0,
			IndentInc = 0,
		}
		Explorer.Nodes[#Explorer.Nodes+1] = node
		return node
	end

	local function IndexNodes()
		for i=1,53 do
			local new = module.CreateNode(Explorer,i)
			new.Parent = Explorer.NodeContainer
		end
		Explorer.Refresh()
	end

	local function AddObjects()
		if Embedded then return end
		if Enviorment.Settings.Explorer.ShowHidden then
			local children = game:GetChildren()
			for i = 1, #children do AddTopObject(Enviorment.Functions.cloneref(children[i])) end
		else
			local services = {"Workspace", "Players","Lighting","MaterialService","NetworkClient","ReplicatedFirst","ReplicatedStorage","ServerScriptService","ServerStorage","StarterGui","StarterPack","StarterPlayer","Teams","SoundService","Chat","TextChatService","VoiceChatService","LocalizationService","TestService","VRService","AvatarSettings","AvatarEditorService"}
			for i = 1, #services do
				local v = Enviorment.Functions.cloneref(game:GetService(services[i]))
				AddTopObject(v)
			end
		end
		if Explorer.Nodes[#Explorer.Nodes] ~= Explorer.NilNode then
			local fnd = table_find(Explorer.Nodes,Explorer.NilNode)
			if fnd then
				table_remove(Explorer.Nodes,fnd)
			end
		end
	end

	Enviorment.Settings.Explorer.Changed:Connect(function(k,v)
		if k == "ShowHidden" and Embedded ~= true then
			Explorer.StopSearch()
			task_wait()
			table_clear(Explorer.Nodes)
			task_wait()
			AddObjects()
		end
	end)
	AddObjects()
	IndexNodes()
	if Embedded ~= true then
		Explorer.NilNode = AddTopObject(Explorer.NilInstancesFolder)
		Explorer.NilNode.IndentInc = 1
		Explorer.selection.Changed:Connect(function()
			pcall(function() Explorer.selectionBox.Adornee = Explorer.selection.List[1] end)
		end)
	end


	task_spawn(function()
		if Embedded then
			return
		end
		repeat task_wait(0.1) until Explorer.GetNodeFromInstance(Explorer.NilInstancesFolder) ~= nil
		Explorer.NilNode.IndentIncrement = 1
		local function AddNilInstance(obj)
			local node = {
				IndentIncrement = 2,
				IndentInc = 2,
				Instance = obj,
				Expanded = false,
				Renaming = false,
				CanExpand = nil,
				Subnodes = {},
				Highlighted = false,
				Selected = false,
				Icon = nil,
				Text = nil,
				Depth = 0,
			}
			if Explorer.CheckForInstance(Explorer.NilNode,obj) then return end
			Explorer.NilNode.Subnodes[#Explorer.NilNode.Subnodes+1] = node
		end
		if Enviorment.Functions.getnilinstances then
			local nils = Enviorment.Functions.getnilinstances()
			for i = 1, #nils do AddNilInstance(nils[i]) end
		end
		task_spawn(function()
			while task_wait() do
				if not table_find(Explorer.Nodes,Explorer.NilNode) then
					Explorer.Nodes[#Explorer.Nodes+1] = Explorer.NilNode
				end
			end
		end)
	end)

	local explorerScroll = ScrollBar.new()
	local explorerScrollH = ScrollBar.new(true)
	Explorer.ScrollY = explorerScroll
	Explorer.ScrollH = explorerScrollH
	explorerScroll.Gui.Parent = Explorer.Window.GuiElems.Content
	explorerScroll:Texture({ ThumbColor = Enviorment.Settings.Theme.Button, ThumbSelectColor = Enviorment.Settings.Theme.Highlight, ArrowColor = Color3_new(1,1,1), FrameColor = Enviorment.Settings.Theme.ButtonPress, ButtonColor = Enviorment.Settings.Theme.Highlight })
	explorerScroll:SetScrollFrame(Explorer.Window.GuiElems.Content,3)
	explorerScrollH.Gui.Visible = false
	explorerScrollH.Gui.Parent = Explorer.Window.GuiElems.Content
	explorerScrollH:Texture({ ThumbColor = Enviorment.Settings.Theme.Button, ThumbSelectColor = Enviorment.Settings.Theme.Highlight, ArrowColor = Color3_new(1,1,1), FrameColor = Enviorment.Settings.Theme.ButtonPress, ButtonColor = Enviorment.Settings.Theme.Highlight })
	explorerScroll.Gui.Position = UDim2_new(0,0,0,20)
	task_spawn(function()
		task_wait(1)
		explorerScroll.Gui.Size = UDim2_new(0,16,1,-20)
		explorerScroll.Gui.Position = UDim2_new(1,-16,0,23)
	end)
	explorerScrollH.Gui.Position = UDim2_new(0,0,1,-16)
	explorerScrollH.Gui.Size = UDim2_new(1,-16,0,16)

	task_spawn(function()
		local old = 0
		local old2 = 0
		while task_wait() do
			local highest = 0
			local children = Explorer.NodeContainer:GetChildren()
			for i = 1, #children do
				local v = children[i]
				if v:IsA("UIListLayout") or not v.Visible or v.Name == "Line" or not v:FindFirstChild("Indent") then continue end
				local w = (v:GetAttribute("TextWidth") or 0) + (v:GetAttribute("XOffset") or 0)
				if highest < w then highest = w end
			end

			local NodeWidth = highest
			if explorerScroll.Index ~= old then
				Explorer.YOffset = explorerScroll.Index
				old = explorerScroll.Index
				Explorer.Refresh(true)
			end
			if explorerScrollH.Index ~= old2 then
				Explorer.XOffset = explorerScrollH.Index
				old2 = explorerScrollH.Index
				Explorer.Refresh(true)
			end

			local guiX = Explorer.NodeContainer.AbsoluteSize.X-16
			explorerScrollH.VisibleSpace = guiX
			explorerScrollH.TotalSpace = NodeWidth + 10
			explorerScrollH.Gui.Visible = NodeWidth > guiX
			explorerScrollH:Update()		
			explorerScroll:Update()
			Explorer.XOffset = explorerScrollH.Index > 0 and (explorerScrollH.Index + 16) or 0
		end
	end)

	local function MakeQueueThread()
		local done = false
		task_spawn(function()
			while task_wait() do
				if #Explorer.Queue > 0 then
					local queue = Explorer.Queue
					Explorer.Queue = {}
					for i = 1, #queue do
						local f = queue[i]
						if f then f() end
					end
				end
			end
			done = true
		end)
		task_spawn(function()
			while not done do task_wait() end
			MakeQueueThread()
		end)
	end
	MakeQueueThread()
	task_spawn(function()
		while task_wait(1) do
			if Explorer.Searching then continue end
			Explorer.Refresh(); Explorer.CheckForConflicts() 
		end
	end)

	if Embedded ~= true then
		local context = require(script.Parent.Parent.UI.Normal.ContextMenu)
		module.InitInsertObject(Explorer)
		local clipboard = Explorer.clipboard
		context = context.new()
		context.Iconless = false
		Explorer.ContextMenu = context
		Explorer.Context = context
		local ContextFunctions = {
			Cut = function()
				table_clear(Explorer.clipboard)
				local sList = Explorer.selection.List
				for i = 1, #sList do
					pcall(function() Explorer.clipboard[#Explorer.clipboard+1] = sList[i]:Clone() end)
					pcall(function() sList[i]:Destroy() end)
				end
			end,
			Copy = function()
				table_clear(Explorer.clipboard)
				local sList = Explorer.selection.List
				for i = 1, #sList do
					pcall(function() Explorer.clipboard[#Explorer.clipboard+1] = sList[i]:Clone() end)
				end
			end,
			Paste = function()
				local dest = Explorer.selection.List[1]
				for i = 1, #Explorer.clipboard do Explorer.clipboard[i].Parent = dest end
			end,
			Duplicate = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do
					pcall(function() sList[i]:Clone().Parent = sList[i].Parent end)
				end
			end,
			Delete = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do pcall(game.Destroy, sList[i]) end
			end,
			Rename = function() Explorer.SetRenaming(Explorer.GetNodeFromInstance(Explorer.selection.List[1])) end,
			Group = function()
				local sList = Explorer.selection.List
				if #sList == 0 then return end
				local model = Instance_new("Model", sList[#sList].Parent)
				for i = 1, #sList do pcall(function() sList[i].Parent = model end) end
				Explorer.Refresh()
				task_spawn(function()
					repeat task_wait(0.1) until Explorer.GetNodeFromInstance(model) ~= nil
					Explorer.SelectNode(Explorer.GetNodeFromInstance(model),true,true)
				end)
			end,
			Ungroup = function()
				local newSelection = {}
				local sList = Explorer.selection.List
				for i = 1, #sList do
					local inst = sList[i]
					local children = inst:GetChildren()
					for c = 1, #children do
						local v = children[c]
						newSelection[#newSelection+1] = v
						v.Parent = inst.Parent
					end
					inst:Destroy()
				end
				Explorer.Refresh()
				task_wait(0.1)
				Explorer.ClearSelection()
				task_wait(0.1)
				for i = 1, #newSelection do
					Explorer.SelectNode(Explorer.GetNodeFromInstance(newSelection[i]),true,false)
				end
			end,
			Select_Children = function()
				local newSelection, oldSelection = {}, {}
				local sList = Explorer.selection.List
				for i = 1, #sList do
					local node = Explorer.GetNodeFromInstance(sList[i])
					if node == nil then continue end
					if node.Subnodes then
						for c = 1, #node.Subnodes do newSelection[#newSelection+1] = node.Subnodes[c] end
					end
					oldSelection[#oldSelection+1] = node
				end
				for i = 1, #newSelection do newSelection[i].Selected = true end
				for i = 1, #oldSelection do oldSelection[i].Selected = false end
				Explorer.Refresh()
			end,
			Select_Descendants = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do
					local node = Explorer.GetNodeFromInstance(sList[i])
					if node == nil then continue end
					node.Selected = false
					local stack = {}
					local sc = 0
					if node.Subnodes then 
						local subnodes = node.Subnodes
						for j = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[j] end 
					end
					while sc > 0 do
						local n = stack[sc]
						stack[sc] = nil
						sc -= 1
						if n and not n.RemoveOnSight then
							n.Selected = true
							if n.Subnodes then 
								local subnodes = n.Subnodes
								for j = #subnodes, 1, -1 do sc += 1; stack[sc] = subnodes[j] end 
							end
						end
					end
				end
				Explorer.Refresh()
			end,
			Jump_To_Parent = function()
				local newSelection, oldSelection = {}, {}
				local sList = Explorer.selection.List
				for i = 1, #sList do
					local inst = sList[i]
					local node = Explorer.GetNodeFromInstance(inst)
					local node2 = Explorer.GetNodeFromInstance(inst.Parent)
					if node2 == nil then continue end
					newSelection[#newSelection+1] = node2
					oldSelection[#oldSelection+1] = node
				end
				for i = 1, #newSelection do newSelection[i].Selected = true end
				for i = 1, #oldSelection do oldSelection[i].Selected = false end
			end,
			TeleportTo = function() pcall(function() Enviorment.LocalPlayer.Character.PrimaryPart:PivotTo(Explorer.selection.List[1]:GetPivot()) end) end,	
			ExpandAll = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do Explorer.ExpandAll(Explorer.GetNodeFromInstance(sList[i])) end
				Explorer.Refresh()
			end,	
			CollapseAll = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do Explorer.CollapseAll(Explorer.GetNodeFromInstance(sList[i])) end
			end,	
			Clear_Search_And_Jump_To = function()
				local inst = Explorer.selection.List[1]
				SearchBox.Text = ""; task_wait(0.1)
				Explorer.ViewObject(inst)
			end,
			CopyPath = function()
				local path = ""
				local sList = Explorer.selection.List
				if #sList > 1 then path = path .. "{" end
				for i = 1, #sList do
					path = path .. Functions.GetInstancePath(sList[i])
					if #sList > 1 and i ~= #sList then path = path .. ", "
					elseif #sList > 1 and i == #sList then path = path .. "}" end
				end
				Enviorment.Functions.setclipboard(path)
			end,
			InsertObject = function()
				local mouse = Enviorment.LocalPlayer:GetMouse()
				Explorer.InsertObjectContext:Show(module.LastX or mouse.X, module.LastY or mouse.Y)
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
					Enviorment.Functions.saveinstance({ SafeMode = false, SaveBytecode = true, ExtraInstances = table_clone(Explorer.selection.List), mode = "invalid", __DEBUG_MODE = true, FileName = text, FilePath = text, })
				end)
				module.SaveInstance.OnCancel:Connect(function() if passed then return end passed = true end)
			end,	
			ViewObject = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do 
					local node = sList[i]
					if node:IsA("BasePart") or node:IsA("Model") then Explorer.ViewObject(node) end 
				end
			end,	
			ViewScript = function() Enviorment.AppSignal:Fire("ScriptViewer",Explorer.selection.List[1]) end,	
			SelectCharacter = function()
				local sList = Explorer.selection.List
				for i = 1, #sList do
					local plr = sList[i]
					local node = Explorer.GetNodeFromInstance(plr)
					if plr.Character == nil then continue end
					local reversed = Functions.ReverseTable(Functions.GetAncestors(plr.Character))
					for r = 1, #reversed do
						local node2 = Explorer.GetNodeFromInstance(reversed[r])
						if node2 then Explorer.ExpandNode(node2) end
						task_wait(0.1); Explorer.Refresh()
					end
					task_wait(0.1); Explorer.Refresh()
					local node2 = Explorer.GetNodeFromInstance(plr.Character)
					if node2 then node2.Selected = true end
					node.Selected = false
				end
			end,	
		}

		UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_Z then ContextFunctions.Cut() end
			if Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_C then ContextFunctions.Copy() end
			if Enviorment.IsCtrlDown() and Enviorment.IsShiftDown() and input.KeyCode == Enum_KeyCode_V then ContextFunctions.Paste() end
			if Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_D then ContextFunctions.Duplicate() end
			if input.KeyCode == Enum_KeyCode_Delete then ContextFunctions.Delete() end
			if input.KeyCode == Enum_KeyCode_F2 then ContextFunctions.Rename() end
			if Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_G then ContextFunctions.Group() end
			if Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_U then ContextFunctions.Ungroup() end
			if Enviorment.IsShiftDown() and Enviorment.IsCtrlDown() and input.KeyCode == Enum_KeyCode_X then SearchBox:CaptureFocus() end
		end)

		context:Register("CUT", { Name = "Cut", IconMap = module.MiscIcons, Icon = "Cut", DisabledIcon = "Cut_Disabled", Shortcut = "Ctrl+Z", OnClick = ContextFunctions.Cut })
		context:Register("COPY", { Name = "Copy", IconMap = module.MiscIcons, Icon = "Copy", DisabledIcon = "Copy_Disabled", Shortcut = "Ctrl+C", OnClick = ContextFunctions.Copy })
		context:Register("PASTE", { Name = "Paste Into", IconMap = module.MiscIcons, Icon = "Paste", DisabledIcon = "Paste_Disabled", Shortcut = "Ctrl+Shift+V", OnClick = ContextFunctions.Paste })
		context:Register("DUPLICATE", { Name = "Duplicate", IconMap = module.MiscIcons, Icon = "Copy", DisabledIcon = "Copy_Disabled", Shortcut = "Ctrl+D", OnClick = ContextFunctions.Duplicate })
		context:Register("DELETE", { Name = "Delete", IconMap = module.MiscIcons, Icon = "Delete", DisabledIcon = "Delete_Disabled", Shortcut = "Del", OnClick = ContextFunctions.Delete })
		context:Register("RENAME", { Name = "Rename", IconMap = module.MiscIcons, Icon = "Rename", DisabledIcon = "Rename_Disabled", Shortcut = "F2", OnClick = ContextFunctions.Rename })
		context:Register("GROUP", { Name = "Group", IconMap = module.MiscIcons, Icon = "Group", DisabledIcon = "Group_Disabled", Shortcut = "Ctrl+G", OnClick = ContextFunctions.Group })
		context:Register("UNGROUP", { Name = "Ungroup", IconMap = module.MiscIcons, Icon = "Ungroup", DisabledIcon = "Ungroup_Disabled", Shortcut = "Ctrl+U", OnClick = ContextFunctions.Ungroup })
		context:Register("SELECT_CHILDREN", { Name = "Select Children", IconMap = module.MiscIcons, Icon = "SelectChildren", DisabledIcon = "SelectChildren_Disabled", OnClick = ContextFunctions.Select_Children })
		context:Register("SELECT_DESCENDANTS", { Name = "Select Descendants", IconMap = module.MiscIcons, Icon = "SelectChildren", DisabledIcon = "SelectChildren_Disabled", OnClick = ContextFunctions.Select_Descendants })
		context:Register("JUMP_TO_PARENT", { Name = "Jump to Parent", IconMap = module.MiscIcons, Icon = "JumpToParent", OnClick = ContextFunctions.Jump_To_Parent })
		context:Register("TELEPORT_TO", { Name = "Teleport To", IconMap = module.MiscIcons, Icon = "TeleportTo", OnClick = ContextFunctions.TeleportTo })
		context:Register("EXPAND_ALL", { Name = "Expand All", OnClick = ContextFunctions.ExpandAll })
		context:Register("COLLAPSE_ALL", { Name = "Collapse All", OnClick = ContextFunctions.CollapseAll })
		context:Register("CLEAR_SEARCH_AND_JUMP_TO", { Name = "Clear Search and Jump to", OnClick = ContextFunctions.Clear_Search_And_Jump_To })
		context:Register("COPY_PATH", { Name = "Copy Path", OnClick = ContextFunctions.CopyPath })
		context:Register("INSERT_OBJECT", { Name = "Insert Object", IconMap = module.MiscIcons, Icon = "InsertObject", OnClick = ContextFunctions.InsertObject })
		context:Register("CALL_FUNCTION", { Name = "Call Function", IconMap = module.ClassIcons, Icon = 66, OnClick = ContextFunctions.CallFunction })
		context:Register("GET_REFERENCES", { Name = "Get Lua References", IconMap = module.ClassIcons, Icon = 34, OnClick = function() end })
		context:Register("SAVE_INST", { Name = "Save to File", IconMap = module.MiscIcons, Icon = "Save", OnClick = ContextFunctions.SaveToFile })
		context:Register("VIEW_CONNECTIONS", { Name = "View Connections", OnClick = function() end })
		context:Register("VIEW_API", { Name = "View API Page", IconMap = module.MiscIcons, Icon = "Reference", OnClick = function() end })
		context:Register("VIEW_OBJECT", { Name = "View Object", IconMap = module.ClassIcons, Icon = 5, OnClick = ContextFunctions.ViewObject })
		context:Register("VIEW_SCRIPT", { Name = "View Script", IconMap = module.MiscIcons, Icon = "ViewScript", OnClick = ContextFunctions.ViewScript })
		context:Register("SELECT_CHARACTER", { Name = "Select Character", IconMap = module.ClassIcons, Icon = 9, OnClick = ContextFunctions.SelectCharacter })
		context:Register("REFRESH_NIL", { Name = "Refresh Nil Instances", OnClick = function() Explorer.RefreshNilInstances() end })
		context:Register("HIDE_NIL", { Name = "Hide Nil Instances", OnClick = function() Explorer.HideNilInstances() end })

		Enviorment.AppSignal:Connect(function(app,...)
			local args = {...}
			if app == script.Name and args[1] == "NewIndex" then Explorer[args[2]] = args[3] end
			if app == script.Name and args[1] == "AppIndex" then
				args[3](Explorer[args[2]])
				return args[2]
			end
		end)	
	end

	return Explorer
end

module.Init = module.NewExplorer

Enviorment.AppSignal:Connect(function(app,command,index,callback)
	if app == "Explorer" and command == "index" then callback(module[index]) end
end)

UserInputService.InputBegan:Connect(function(input, processed)
	if input.UserInputType == Enum_UserInputType_MouseButton2 then
		local mouse = Enviorment.LocalPlayer:GetMouse()
		module.LastX = mouse.X
		module.LastY = mouse.Y
	end
end)

return module
end;
};
-- StarterGui.dex.LocalScript
local function C_3()
local script = G2L["3"];
	require(script.Parent.Loader).Init()
end;
task.spawn(C_3);

return G2L["1"], require;