local table_insert = table.insert
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
