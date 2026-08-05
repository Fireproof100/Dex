local module = {}
local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Functions = require(script.Parent.Parent.Modules.Functions)
local info = require(script.Parent.Parent.UI.Info)
local Window = require(script.Parent.Parent.UI.Normal.Window)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local ContextMenu = require(script.Parent.Parent.UI.Normal.ContextMenu)
local IconMap = require(script.Parent.Parent.UI.Base.IconMap)
local Signal = require(script.Parent.Parent.Modules.Signal)
local SSI = require(script.Parent.Parent.UI.Normal.SSI)
local ViewportTextBox = require(script.Parent.Parent.UI.Base.ViewportTextBox)
local Label = require(script.Parent.Parent.UI.Base.Label)

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
		if a[2] ~= b[2] then return a[2] < b[2] else return a[1].Name < b[1].Name end
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
	local n = Enviorment.create({
		{
			1, "TextButton", {
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
			2, "Frame", {
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
			3, "TextLabel", {
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
			4, "TextButton", {
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
			5, "ImageLabel", {
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
			6, "ImageLabel", {
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
		{
			7, "UICorner", {
				Name = "Icon",
				Parent = { 2 },
				TopLeftRadius = UDim.new(0,1),
				TopRightRadius = UDim.new(0,1),
				BottomLeftRadius = UDim.new(0,1),
				BottomRightRadius = UDim.new(0,1),
			},
		},
	})
	s["1"].Parent = n.Indent
	return n
end

module.ExpandHighlight = function(exp)
	exp.MouseEnter:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(176,16) then 
			exp.Icon.ImageRectOffset =  Vector2.new(160,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(144,16) then 
			exp.Icon.ImageRectOffset = Vector2.new(128,16)
		end
	end)
	exp.MouseLeave:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(160,16) then 
			exp.Icon.ImageRectOffset = Vector2.new(176,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(128,16) then 
			exp.Icon.ImageRectOffset = Vector2.new(144,16)
		end
	end)
end

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

		new.Visible = true
		if node.Text == nil and node.Instance == nil then
			node.RemoveOnSight = true
			return Explorer.Refresh()
		end
		local text = node.Text or (node.Instance and node.Instance.Name) or "???"
		new.Indent.EntryName.Text = text
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

		local xOffset = info.Explorer_IndentSeparation * indent
		new.Indent.Position = UDim2.new(0, xOffset - Explorer.XOffset, 0, 0)
		new:SetAttribute("XOffset", xOffset)
		new:SetAttribute("TextWidth", node.TextWidth)

		new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.ListSelection
		if node.CanExpand ~= nil then
			new.Indent.Expand.Visible = node.CanExpand
		elseif Explorer.Searching == true and node.Instance ~= nil then
			local FoundOne = false
			if node.Subnodes then
				for _,node2 in node.Subnodes do
					if node2 and node2.Instance and Explorer.SearcherNodes[node2.Instance] then
						FoundOne = true
						break
					end
				end
			end
			new.Indent.Expand.Visible = FoundOne
		elseif node.Instance ~= nil then
			new.Indent.Expand.Visible = (node.Instance:FindFirstChildWhichIsA("Instance") ~= nil)
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
			new.Indent.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16) or Vector2.new(144,16)
		end

		if node.Renaming == true then
			local box : TextBox = new.Indent.RenameBox
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
						task.spawn(node.OnRename,(box.Text))
					end
				end
				task.wait()
				node.Renaming = false
				box.Visible = false
				box.Text = "___DEFAULT___"
				Box_Focused = false
				Update()
			end)
		end

		if node.Icon then
			new.Indent.Icon.ImageRectOffset = Vector2.new(0,0)
			new.Indent.Icon.ImageRectSize = Vector2.new(0,0)
			new.Indent.Icon.Image = node.Icon
		elseif node.Instance then
			if not node.CachedIcon then
				local img, rectOff, rectSize = Functions.GetIconOfInstanceWith(node.Instance, Enviorment)
				node.CachedIcon = {img, rectOff, rectSize}
			end
			new.Indent.Icon.Image = node.CachedIcon[1]
			new.Indent.Icon.ImageRectOffset = node.CachedIcon[2]
			new.Indent.Icon.ImageRectSize = node.CachedIcon[3]
		end

		if OldValue ~= node.Instance then
			if node == nil or node.Instance == nil then
				for _, v in TempConnections do v:Disconnect() end; return
			end
			for _, v in TempConnections do v:Disconnect() end;

			TempConnections["ChildAdded"] = node.Instance.ChildAdded:Connect(function()
				if node.Expanded then 
					Explorer.ExpandNode(node,true)
				end
				if Explorer.Searching and Enviorment.Settings.Explorer.AutoUpdateSearch then
					Explorer.StartSearch(Explorer.SearchText)
					
				end
			end)

			TempConnections["Destroying"] = node.Instance.AncestryChanged:Connect(function()
				node.RemoveOnSight = true
				Update()
				Explorer.Refresh(true)
			end)

			TempConnections["Destroying2"] = node.Instance.Changed:Connect(function(p)
				if p == "Parent" then
					node.RemoveOnSight = true
					Update()
					Explorer.Refresh(true)
				elseif p == "Name" then
					node.LastName = nil 
					Update()
				end
			end)
			OldValue = node.Instance
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
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
		local node = Explorer.GetAtIndex(index)
		if node == nil or node.Selected then return end
		new.Indent.BackgroundColor3 = Enviorment.Settings.Theme.Button
		new.Indent.BorderSizePixel = 0
		new.Indent.BackgroundTransparency = 0
	end)
	new.InputEnded:Connect(function(input)
		local node = Explorer.GetAtIndex(index)
		if node == nil or node.Selected or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
		new.Indent.BackgroundTransparency = 1
	end)
	new.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local releaseEvent, mouseEvent
			local mouse = Enviorment.Mouse
			local startX, startY = mouse.X, mouse.Y
			local listOffsetX = startX - Explorer.NodeContainer.AbsolutePosition.X
			local listOffsetY = startY - Explorer.NodeContainer.AbsolutePosition.Y

			releaseEvent = game:GetService("UserInputService").InputEnded:Connect(function(in_pt)
				if in_pt.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
				end
			end)

			mouseEvent = game:GetService("UserInputService").InputChanged:Connect(function(in_pt)
				if in_pt.UserInputType == Enum.UserInputType.MouseMovement then
					local dist = math.sqrt((mouse.X - startX) ^ 2 + (mouse.Y - startY) ^ 2)
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
		Window = Embedded == true and {OnActivate = Signal.new(),OnDeactivate = Signal.new(),Show = function() end,SetSize = function(_,x,y) ExplorerContainer.Size = UDim2.new(0,x,0,y); end,SetTitle = function() end,GuiElems = {Content = ExplorerContainer,Line = Instance.new("Frame")}} or Window.new(),
		YOffset = 0,
		XOffset = 0,
		Nodes = {},
		VisibleNodes = {},
		_selected = {},
		Callbacks = {},
		Queue = {},
		SearchThreads = {},
		NodeSelection = {},
		selectionBox = Instance.new("SelectionBox",script.Parent.Parent),
		NilInstancesFolder = Instance.new("Folder"),
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
		-- MatchQuery, GetAtIndex_Raw,GetNodesInRange
		-- UpdateVisibleNodes
		AddToQueue = function(f)
			Explorer.Queue[#Explorer.Queue+1] = f
		end,
		GetInstances = function()
			local inst = game:GetDescendants() 
			if Enviorment.Functions.getnilinstances then
				for _,v in Enviorment.Functions.getnilinstances() do
					inst[#inst+1] = v
				end
			end
			return inst
		end,
		GetInstancesForSearch = function()
			local inst = game:GetDescendants()
			local filtered = {}
			local coreGui = Enviorment.CoreGui
			local corePackages = Enviorment.CorePackages

			for _, value in inst do
				filtered[#filtered+1] = value
			end
			if Enviorment.Functions.getnilinstances then
				for _,v in Enviorment.Functions.getnilinstances() do filtered[#filtered+1] = v end
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

			local newGui = Instance.new("ScreenGui")
			newGui.DisplayOrder = Enviorment.DisplayOrders.Menu
			dragTree.Parent = newGui
			Enviorment.ShowGui(newGui)
			local dragOutline = Enviorment.create({
				{ 1, "Frame", { BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 1, Name = "DragSelect", Size = UDim2.new(1, 0, 1, 0), }, },
				{ 2, "Frame", { BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Size = UDim2.new(1, 0, 0, 1), ZIndex = 2, }, },
				{ 3, "Frame", { BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Position = UDim2.new(0, 0, 1, -1), Size = UDim2.new(1, 0, 0, 1), ZIndex = 2, }, },
				{ 4, "Frame", { BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Size = UDim2.new(0, 1, 1, 0), ZIndex = 2, }, },
				{ 5, "Frame", { BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, Name = "Line", Parent = { 1 }, Position = UDim2.new(1, -1, 0, 0), Size = UDim2.new(0, 1, 1, 0), ZIndex = 2, }, },
			})
			dragOutline.Parent = Explorer.NodeContainer

			local mouse = Enviorment.Mouse
			local function move()
				local posX = mouse.X - offX
				local posY = mouse.Y - offY
				dragTree.Position = UDim2.new(0, posX, 0, posY)
				local children = Explorer.NodeContainer:GetChildren()
				for i = #children, 1, -1 do
					local v = children[i]
					if v == dragOutline or v:FindFirstChild("Indent") == nil then table.remove(children,i) end
				end
				for _,entry in children do
					if Enviorment.CheckMouseInGui(entry) and entry ~= dragOutline then
						dragOutline.Position = entry.Position
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
			mouseEvent = input.InputChanged:Connect(function(in_pt)
				if in_pt.UserInputType == Enum.UserInputType.MouseMovement then move() end
			end)
			releaseEvent = input.InputEnded:Connect(function(in_pt)
				if in_pt.UserInputType == Enum.UserInputType.MouseButton1 then
					releaseEvent:Disconnect()
					mouseEvent:Disconnect()
					newGui:Destroy()
					dragOutline:Destroy()
					Explorer.Dragging = false
					local children = Explorer.NodeContainer:GetChildren()
					for i = #children, 1, -1 do
						local v = children[i]
						if v == dragOutline or v:FindFirstChild("Indent") == nil then table.remove(children,i) end
					end
					for i, entry in children do
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
					for _, n2 in node.Subnodes do
						if n2 == nil then
							continue
						end
						OnNode(n)
					end
				end

			end
			for _, n2 in Explorer.Nodes do
				OnNode(n2)
			end
			return n
		end,
		StartEmbeddedSearch = function(text)
			for _, v in Explorer.SearchThreads do pcall(task.cancel, v) end
			table.clear(Explorer.SearchThreads)
			
			Explorer.Window:SetTitle("Explorer - Searching")
			Explorer.SearchText = text
			Explorer.Searching = true
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			warn("emv")
			for _, node in Explorer.GetNodesForSearch() do
				local t = node.Text
				if t == nil then
					if node.Instance ~= nil then
						t = node.Instance.Name
					else
						continue
					end
				end
				if string.find(string.lower(t),text) then
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
			for _, v in Explorer.SearchThreads do pcall(task.cancel, v) end
			table.clear(Explorer.SearchThreads)

			Explorer.Window:SetTitle("Explorer - Searching")
			Explorer.SearchText = text
			Explorer.Searching = true
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})

			local lowerQuery = string.lower(text)
			local chars = string.split(lowerQuery,"")
			local in_filter, ctoken, has_filters = false, "", false
			local filters = { remotes = false, modules = false, scripts = false, loadedmodules = false, characters = false }

			for _, char in chars do
				if char == "<" then in_filter, has_filters = true, true
				elseif char == ">" then in_filter, filters[ctoken], ctoken = false, true, ""
				elseif in_filter then ctoken = ctoken .. char end
			end

			Explorer.Filters = filters
			Explorer.FilterEnabled = has_filters

			local loadedMap = {}
			if filters.loadedmodules and Enviorment.Functions.getloadedmodules then
				for _, m in Enviorment.Functions.getloadedmodules() do loadedMap[m] = true end
			end
			local playersMap = {}
			if filters.characters then
				for _, p in Enviorment.Players:GetPlayers() do if p.Character then playersMap[p.Character] = true end end
			end

			for _, inst in Explorer.GetInstancesForSearch() do
				local matched = false
				if not has_filters then
					matched = string.find(string.lower(inst.Name), lowerQuery) ~= nil
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
			for inst, _ in searcherNodes do
				local parent = inst.Parent
				while parent and not searcherNodes[parent] and not ancestorsMap[parent] do
					ancestorsMap[parent] = true
					parent = parent.Parent
				end
			end
			for parent, _ in ancestorsMap do searcherNodes[parent] = true end

			Explorer.SearchThreads[#Explorer.SearchThreads+1] = task.spawn(function()
				local stack = {}
				for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end
				local yieldCount = 0
				while #stack > 0 do
					local node2 = table.remove(stack)
					if not node2 or not node2.Instance then continue end
					if searcherNodes[node2.Instance] then
						Explorer.ExpandNode(node2, true, true)
						if node2.Subnodes then
							for i = #node2.Subnodes, 1, -1 do stack[#stack+1] = node2.Subnodes[i] end
						end
					end
					yieldCount += 1
					if yieldCount % 1000 == 0 then task.wait() end
				end
				Explorer.Refresh()
				Explorer.Window:SetTitle("Explorer")
			end)
		end,
		StopSearch = function(Silent)
			Explorer.FilterEnabled = false
			Explorer.Filters = nil
			for _, v in Explorer.SearchThreads do pcall(task.cancel, v) end
			table.clear(Explorer.SearchThreads)
			Explorer.SearchText = ""
			Explorer.SearcherNodes = setmetatable({},{__mode = "k"})
			for _, node2 in Explorer.Nodes do
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
			for _,node2 in node.Subnodes do
				if Explorer.CheckForInstance(node2,inst) == true then return true end
			end
			return false
		end,
		CheckForConflicts = function()
			if Explorer.Searching then return end
			local stack = {}
			for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end

			while #stack > 0 do
				local node = table.remove(stack)
				if node == nil then
					continue
				end
				if node.Instance == nil then
					continue
				end

				if node.Expanded then
					if #node.Subnodes ~= #node.Instance:GetChildren() then
						Explorer.ExpandNode(node)
					end

					for i = #node.Subnodes, 1, -1 do
						local subnode = node.Subnodes[i]
						if subnode and subnode.Instance then
							if subnode.Instance.Parent ~= node.Instance and node.Instance ~= Explorer.NilInstancesFolder and subnode.Instance ~= Explorer.NilInstancesFolder and node ~= Explorer.NilNode and subnode ~= Explorer.NilNode then
								--warn("REMOVING (2)",subnode,node)
								subnode.RemoveOnSight = true
								table.remove(node.Subnodes, i)
								Explorer.Refresh()
							else
								stack[#stack+1] = subnode
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
			local count = 0
			for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end
			local isSearch = Explorer.Searching
			local searchNodes = Explorer.SearcherNodes

			while #stack > 0 do
				local node = table.remove(stack)
				if node == nil then
					continue
				end
				if node.RemoveOnSight == true then
					if node == Explorer.NilNode then 
						node.RemoveOnSight = false	
					else
						continue
					end
				end
				if isSearch and node.Instance ~= nil then
					if searchNodes[node.Instance] ~= true then
						continue
					end
				elseif isSearch then
					if searchNodes[node] ~= true then
						continue
					end
				end

				count += 1
				visible[count] = node

				if node.Expanded and node.Subnodes then
					for i = #node.Subnodes, 1, -1 do
						local n2 = node.Subnodes[i]
						if n2 and not n2.RemoveOnSight then stack[#stack+1] = n2 end
					end
				end
			end

			Explorer.VisibleNodes = visible
			Explorer.ScrollY.TotalSpace = count
		end,
		ExpandNode = function(node,Instant,NoRefresh)
			if node == nil then return end
			if node.Instance then
				local IsNil = table.find(Enviorment.Functions.getnilinstances(),node.Instance) ~= nil
				local children = node.Instance:GetChildren()
				for _, inst2 in children do
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
			while #stack > 0 do
				local node2 = table.remove(stack)
				if node2 == nil or not node2.Instance then continue end
				if node2.Instance:FindFirstChildWhichIsA("Instance") == nil then continue end

				Explorer.ExpandNode(node2, false, true)
				if node2.Subnodes then
					for i = #node2.Subnodes, 1, -1 do stack[#stack+1] = node2.Subnodes[i] end
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
			for _, n in Explorer.GetSelection() do n.Selected = false end
		end,
		RefreshFilters = function()
			for _, v in Explorer.Autofill:GetChildren() do
				if v.Name == "filter" then
					v:Destroy()
				end
			end
			Instance.new("UIListLayout",Explorer.Autofill)
			for _, info in Explorer.FilterInfo do
				local new = Label.new({Size = UDim2.new(1,0,0,20),Parent = Explorer.Autofill,Text = info.Name})
				local btn = Instance.new("TextButton",new)
				for _, prop in {"FontFace","TextSize","Text","Size","Parent","BackgroundTransparency","BackgroundColor3","TextColor3","TextTransparency"} do
					btn[prop] = new[prop]
				end
				new:Destroy()
				btn.Name = "filter"
				btn.BackgroundTransparency = 1
				btn.MouseButton1Up:Connect(function() Explorer.SearchBox.Text = info.Name end)
				btn.TextXAlignment = Enum.TextXAlignment.Left
				btn.ZIndex = 6
			end
		end,
		SelectNode = function(node,state,apply)
			
			if Explorer.RunOnSelect and state == true then
				task.spawn(Explorer.RunOnSelect,node)
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
				if Enviorment.UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
					local firstSelected = node
					for _, n in Explorer.GetSelection() do firstSelected = n; break end
					Explorer.ClearSelection()

					local firstIndex = Explorer.GetNodeIndex(firstSelected)
					local secondIndex = Explorer.GetNodeIndex(node)
					local startIdx = math.min(firstIndex, secondIndex)
					local endIdx = math.max(firstIndex, secondIndex)

					for i = startIdx, endIdx do
						if Explorer.VisibleNodes[i] then Explorer.VisibleNodes[i].Selected = true end
					end
					firstSelected.Selected = true
					node.Selected = true
				elseif Enviorment.UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
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
				for i, v in sel do if Explorer.selection.List[i] ~= v then match = false; break end end
			end
			if not match then
				Explorer.selection.List = sel
				Explorer.selection.Changed:Fire()
			end

			Explorer.Selected = Explorer.selection.List
			match = true
			if #Explorer._selected ~= #Explorer.Selected then match = false else
				for i, v in Explorer.Selected do if Explorer._selected[i] ~= v then match = false; break end end
			end
			if match == false then
				Enviorment.AppSignal:Fire("Properties",Explorer.Selected)
				Explorer._selected = Explorer.Selected
			end

			if Explorer.NilNode then
				Explorer.NilNode.CanExpand = #Explorer.NilNode.Subnodes >= 1 and true or false
				for _, why in Explorer.NilInstancesFolder:GetChildren() do why.Parent = nil end
			end

			for _, f in Explorer.Callbacks do if f ~= nil then if fast then task.spawn(f) else f() end end end
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
			for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end
			while #stack > 0 do
				local node = table.remove(stack)
				if node and not node.RemoveOnSight then
					count += 1
					nodes[count] = node
					if node.Subnodes then
						for i = #node.Subnodes, 1, -1 do stack[#stack+1] = node.Subnodes[i] end
					end
				end
			end
			return nodes
		end,
		GetNodeIndex = function(node)
			if node == nil then return 1 end
			for i, n in ipairs(Explorer.VisibleNodes) do if n == node then return i end end
			return 1
		end,
		GetMaxNode = function() return Explorer.VisibleNodes[#Explorer.VisibleNodes] end,
		GetMaxIndex = function() return #Explorer.VisibleNodes end,
		GetLenght = function() return Explorer.VisibleNodes and #Explorer.VisibleNodes or 0 end,
		GetNodeFromInstance = function(obj)
			local stack = {}
			for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end
			while #stack > 0 do
				local node = table.remove(stack)
				if node and not node.RemoveOnSight then
					if node.Instance == obj then return node end
					if node.Subnodes then
						for i = #node.Subnodes, 1, -1 do stack[#stack+1] = node.Subnodes[i] end
					end
				end
			end
			return nil
		end,
		GetSelection = function()
			local nodes = {}
			local stack = {}
			for i = #Explorer.Nodes, 1, -1 do stack[#stack+1] = Explorer.Nodes[i] end
			while #stack > 0 do
				local node = table.remove(stack)
				if node == nil then
					continue
				end
				if node.RemoveOnSight == true then
					if node == Explorer.NilNode then
						node.RemoveOnSight = false
					else
						continue
					end
				end
				
				if node.Selected == true then 
					nodes[#nodes+1] = node 
				end
				if node.Subnodes ~= nil then
					for i = #node.Subnodes, 1, -1 do 
						stack[#stack+1] = node.Subnodes[i] 
					end
				end
				
			end
			return nodes
		end,
		GetSelectedObjects = function()
			local inst = {}
			for _,node in Explorer.GetSelection() do inst[#inst+1] = node.Instance end
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

			context:AddRegistered("CUT",Explorer.NilNode.Selected == true)
			context:AddRegistered("COPY",Explorer.NilNode.Selected == true)
			context:AddRegistered("PASTE", emptyClipboard or Explorer.NilNode.Selected == true)
			context:AddRegistered("DUPLICATE",Explorer.NilNode.Selected == true)
			context:AddRegistered("DELETE",Explorer.NilNode.Selected == true)
			context:AddRegistered("RENAME", #sList ~= 1 or Explorer.NilNode.Selected == true)

			context:AddDivider()
			context:AddRegistered("GROUP",Explorer.NilNode.Selected ~= true)
			context:AddRegistered("UNGROUP",Explorer.NilNode.Selected ~= true)
			context:AddRegistered("SELECT_CHILDREN")
			context:AddRegistered("SELECT_DESCENDANTS")
			context:AddRegistered("JUMP_TO_PARENT",Explorer.NilNode.Selected == true)
			context:AddRegistered("EXPAND_ALL")
			context:AddRegistered("COLLAPSE_ALL")

			context:AddDivider()
			if Explorer.Searching then context:AddRegistered("CLEAR_SEARCH_AND_JUMP_TO") end
			if Enviorment.setclipboard then context:AddRegistered("COPY_PATH") end
			context:AddRegistered("INSERT_OBJECT",Explorer.NilNode.Selected == true)
			context:AddRegistered("SAVE_INST",Explorer.NilNode.Selected == true)
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
					if obj:IsA("BasePart") or obj:IsA("Model") then found = true; break end
				end
				if found then
					context:AddRegistered("TELEPORT_TO",true)
					context:AddRegistered("VIEW_OBJECT",true)
				end
			end

			if #sList == 1 then
				if Explorer.selection.List[1]:IsA("Player") then context:AddRegistered("SELECT_CHARACTER") end
				if Explorer.selection.List[1]:IsA("LuaSourceContainer") then context:AddRegistered("VIEW_SCRIPT") end
			else
				local found = false
				for _, obj in Explorer.selection.List do
					if obj:IsA("Player") then found = true; break end
				end
				if found then context:AddRegistered("SELECT_CHARACTER",true) end
			end
			context:Show()
		end,
		ViewObject = function(inst)
			if Explorer.IsObjectVisible(inst) then return end
			local ancestors = Functions.GetAncestors(inst)
			ancestors = Functions.ReverseTable(ancestors)
			for _, inst2 in ancestors do
				local node2 = Explorer.GetNodeFromInstance(inst2)
				if node2 then Explorer.ExpandNode(node2) end
				task.wait(0.1)
			end
			task.wait(0.1)
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
		IsObjectVisible = function(obj : Instance)
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
	Explorer.NodeContainer.Size = UDim2.new(1,-16,1,-33)
	Explorer.NodeContainer.Position = UDim2.new(0,0,0,23)
	local explorerItems = Enviorment.create({ -- TODO theme
		{ 1, "Folder", { Name = "ExplorerItems" } },
		{ 2, "Frame", { BackgroundColor3 = Color3.fromRGB(52,52,52), BorderSizePixel = 0, Name = "ToolBar", Parent = { 1 }, Size = UDim2.new(1, 0, 0, 22), }, },
		{ 3, "Frame", { BackgroundColor3 = Color3.fromRGB(38,38,38), 
			BorderColor3 = Color3.fromRGB(30,30,30), BorderSizePixel = 0, Name = "SearchFrame", Parent = { 2 }, Position = UDim2.new(0, 3, 0, 1), Size = UDim2.new(1, -6, 0, 18), }, },
		{ 4, "TextBox", {
			BackgroundColor3 = Color3.fromRGB(1, 1, 1), 
			BackgroundTransparency = 1, 
			ClearTextOnFocus = false, 
			Font = 3, 
			Name = "SearchBox", 
			Parent = { 3 }, 
			PlaceholderColor3 = Color3.fromRGB(100,100,100), 
			PlaceholderText = "Filter workspace (Ctrl+Shift+X)", 
			Position = UDim2.new(0, 4, 0, 0), 
			Size = UDim2.new(1, -24, 0, 18), 
			Text = "", 
			TextColor3 = Color3.new(1, 1, 1), TextSize = 14, TextXAlignment = 0, }, },
		{ 5, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 3 } } },
		{ 6, "TextButton", { AutoButtonColor = false, BackgroundColor3 = Color3.fromRGB(32,32,32), BackgroundTransparency = 1, BorderSizePixel = 0, Font = 3, Name = "Reset", Parent = { 3 }, Position = UDim2.new(1, -17, 0, 1), Size = UDim2.new(0, 16, 0, 16), Text = "", TextColor3 = Color3.new(1, 1, 1), TextSize = 14, }, },
		{ 7, "ImageLabel", { BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 1, Image = "rbxassetid://5034718129", ImageColor3 = Color3.new(100,100,100), Parent = { 6 }, Size = UDim2.new(0, 16, 0, 16), }, },
		{ 8, "TextButton", { AutoButtonColor = false, BackgroundColor3 = Color3.fromRGB(32,32,32), BackgroundTransparency = 1, BorderSizePixel = 0, Font = 3, Name = "Refresh", Parent = { 2 }, Position = UDim2.new(1, -20, 0, 1), Size = UDim2.new(0, 18, 0, 18), Text = "", TextColor3 = Color3.new(1, 1, 1), TextSize = 14, Visible = false, }, },
		{ 9, "ImageLabel", { BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 1, Image = "rbxassetid://5642310344", Parent = { 8 }, Position = UDim2.new(0, 3, 0, 3), Size = UDim2.new(0, 12, 0, 12), }, },
		{ 10, "Frame", { 
			BackgroundColor3 = Color3.fromRGB(40,40,40), 
			BorderSizePixel = 0, 
			Name = "ScrollCorner", 
			Parent = { 1 }, 
			Position = UDim2.new(1, -16, 1, -16), 
			Size = UDim2.new(0, 16, 0, 16), 
			Visible = false, 
		}, 
		},
		{ 11, "Frame", { 
			BackgroundColor3 = Color3.fromRGB(1, 1, 1), 
			BackgroundTransparency = 1, 
			ClipsDescendants = true, 
			Name = "List", 
			Parent = { 1 }, 
			Position = UDim2.new(0, 0, 0, 23), 
			Size = UDim2.new(1, 0, 1, -23), 
		}, 
		},
	})
	
	Explorer.Window.GuiElems.Line.Position = UDim2.new(0, 0, 0, 22)
	local toolBar = explorerItems.ToolBar
	local treeFrame = explorerItems.List
	local SearchBox : TextBox = toolBar.SearchFrame.SearchBox
	Explorer.GuiElems.ToolBar = toolBar
	Explorer.GuiElems.TreeFrame = treeFrame
	toolBar.Parent = Explorer.Window.GuiElems.Content
	treeFrame.Parent = Explorer.Window.GuiElems.Content
	explorerItems.ScrollCorner.Parent = Explorer.Window.GuiElems.Content
	ViewportTextBox.convert(SearchBox);
	Explorer.NilInstancesFolder.Name = table.pack(Enviorment.Functions.getnilinstances())[2] == true and "Nil Instances" or "Nil Instances [Not Supported]"
	
	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SearchBox.Text == "" then Explorer.StopSearch() else Explorer.StopSearch(true);task.wait();Explorer.StartSearch(SearchBox.Text) end
		Explorer.Autofill.Visible = false
	end)
	SearchBox.Focused:Connect(function()
		if #Explorer.FilterInfo ~= 0 and SearchBox.Text == ""then
			Explorer.Autofill.Visible = true
		end
	end)
	SearchBox.FocusLost:Connect(function(pressed : boolean)
		if pressed then
			Explorer.StopSearch(true)
			task.wait()
			Explorer.StartSearch(SearchBox.Text)
		end
		task.wait()
		Explorer.Autofill.Visible = false
	end)

	local Autofill = Instance.new("Frame")
	Autofill.BorderSizePixel = 1
	Autofill.BackgroundColor3 = Enviorment.Settings.Theme.Main2
	Autofill.Size = UDim2.new(1,-20,0,100)
	Autofill.Position = UDim2.new(0,10,0,20)
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
		for i=1,50 do
			local new = module.CreateNode(Explorer,i)
			new.Parent = Explorer.NodeContainer
		end
		Explorer.Refresh()
	end

	local function AddObjects()
		if Embedded then return end
		if Enviorment.Settings.Explorer.ShowHidden then
			for _, v in game:GetChildren() do AddTopObject(Enviorment.Functions.cloneref(v)) end
		else
			for _, name in {"Workspace", "Players","Lighting","MaterialService","NetworkClient","ReplicatedFirst","ReplicatedStorage","ServerScriptService","ServerStorage","StarterGui","StarterPack","StarterPlayer","Teams","SoundService","Chat","TextChatService","VoiceChatService","LocalizationService","TestService","VRService","AvatarSettings","AvatarEditorService",} do
				local v = Enviorment.Functions.cloneref(game:GetService(name))
				AddTopObject(v)
			end
		end
		if Explorer.Nodes[#Explorer.Nodes] ~= Explorer.NilNode then
			if table.find(Explorer.Nodes,Explorer.NilNode) then
				table.remove(Explorer.Nodes,table.find(Explorer.Nodes,Explorer.NilNode))
			end
		end
	end

	Enviorment.Settings.Explorer.Changed:Connect(function(k,v)
		
		if k == "ShowHidden" and Embedded ~= true then
			Explorer.StopSearch()
			task.wait()
			table.clear(Explorer.Nodes)
			task.wait()
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
	

	task.spawn(function()
		if Embedded then
			return
		end
		repeat task.wait(0.1) until Explorer.GetNodeFromInstance(Explorer.NilInstancesFolder) ~= nil
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
		for _,obj in Enviorment.Functions.getnilinstances() do AddNilInstance(obj) end
		task.spawn(function()
			while task.wait() do
				if not table.find(Explorer.Nodes,Explorer.NilNode) then
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
	explorerScroll:Texture({ ThumbColor = Enviorment.Settings.Theme.Button, ThumbSelectColor = Enviorment.Settings.Theme.Highlight, ArrowColor = Color3.new(1,1,1), FrameColor = Enviorment.Settings.Theme.ButtonPress, ButtonColor = Enviorment.Settings.Theme.Highlight })
	explorerScroll:SetScrollFrame(Explorer.Window.GuiElems.Content,3)
	explorerScrollH.Gui.Visible = false
	explorerScrollH.Gui.Parent = Explorer.Window.GuiElems.Content
	explorerScrollH:Texture({ ThumbColor = Enviorment.Settings.Theme.Button, ThumbSelectColor = Enviorment.Settings.Theme.Highlight, ArrowColor = Color3.new(1,1,1), FrameColor = Enviorment.Settings.Theme.ButtonPress, ButtonColor = Enviorment.Settings.Theme.Highlight })
	explorerScroll.Gui.Position = UDim2.new(0,0,0,20)
	task.spawn(function()
		task.wait(1)
		explorerScroll.Gui.Size = UDim2.new(0,16,1,-20)
		explorerScroll.Gui.Position = UDim2.new(1,-16,0,20)
	end)
	explorerScrollH.Gui.Position = UDim2.new(0,0,1,-16)
	explorerScrollH.Gui.Size = UDim2.new(1,-16,0,16)

	task.spawn(function()
		local old = 0
		local old2 = 0
		while task.wait() do
			local highest = 0
			for _, v in Explorer.NodeContainer:GetChildren() do
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
			explorerScrollH.TotalSpace = NodeWidth+10
			explorerScrollH.Gui.Visible = NodeWidth > guiX
			explorerScrollH:Update()		
			explorerScroll:Update()
			Explorer.XOffset = explorerScrollH.Index > 0 and (explorerScrollH.Index + 16) or 0
		end
	end)

	local function MakeQueueThread()
		local done = false
		task.spawn(function()
			while task.wait() do
				for i,f in Explorer.Queue do
					if f == nil then continue end
					f()
					table.remove(Explorer.Queue,i)
				end
			end
			done = true
		end)
		task.spawn(function()
			while not done do task.wait() end
			MakeQueueThread()
		end)
	end
	MakeQueueThread()
	task.spawn(function()
		while task.wait(1) do
			if Explorer.Searching then continue end
			Explorer.Refresh(); Explorer.CheckForConflicts() 
		end
	end)

	if Embedded ~= true then
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
					pcall(function() Explorer.clipboard[#Explorer.clipboard+1] = inst:Clone() end)
					pcall(function() inst:Destroy() end)
				end
			end,
			Copy = function()
				table.clear(Explorer.clipboard)
				for _, inst in Explorer.selection.List do
					pcall(function() Explorer.clipboard[#Explorer.clipboard+1] = inst:Clone() end)
				end
			end,
			Paste = function()
				for _,inst in Explorer.clipboard do inst.Parent = Explorer.selection.List[1] end
			end,
			Duplicate = function()
				for _, inst in Explorer.selection.List do
					pcall(function() inst:Clone().Parent = inst.Parent end)
				end
			end,
			Delete = function()
				for _, inst in Explorer.selection.List do pcall(game.Destroy,inst) end
			end,
			Rename = function() Explorer.SetRenaming(Explorer.GetNodeFromInstance(Explorer.selection.List[1])) end,
			Group = function()
				local sList = Explorer.selection.List
				if #sList == 0 then return end
				local model = Instance.new("Model", sList[#sList].Parent)
				for i = 1, #sList do pcall(function() sList[i].Parent = model end) end
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
				Explorer.ClearSelection()
				task.wait(0.1)
				for _, inst in newSelection do
					Explorer.SelectNode(Explorer.GetNodeFromInstance(inst),true,false)
				end
			end,
			Select_Children = function()
				local newSelection, oldSelection = {}, {}
				for _, inst in Explorer.selection.List do
					local node = Explorer.GetNodeFromInstance(inst)
					if node == nil then continue end
					if node.Subnodes then
						for _, childNode in node.Subnodes do newSelection[#newSelection+1] = childNode end
					end
					oldSelection[#oldSelection+1] = node
				end
				for _,node in newSelection do node.Selected = true end
				for _,node in oldSelection do node.Selected = false end
				Explorer.Refresh()
			end,
			Select_Descendants = function()
				for _, inst in Explorer.selection.List do
					local node = Explorer.GetNodeFromInstance(inst)
					if node == nil then continue end
					node.Selected = false
					local stack = {}
					if node.Subnodes then for i = #node.Subnodes, 1, -1 do stack[#stack+1] = node.Subnodes[i] end end
					while #stack > 0 do
						local n = table.remove(stack)
						if n and not n.RemoveOnSight then
							n.Selected = true
							if n.Subnodes then for i = #n.Subnodes, 1, -1 do stack[#stack+1] = n.Subnodes[i] end end
						end
					end
				end
				Explorer.Refresh()
			end,
			Jump_To_Parent = function()
				local newSelection, oldSelection = {}, {}
				for _,inst in Explorer.selection.List do
					local node = Explorer.GetNodeFromInstance(inst)
					local node2 = Explorer.GetNodeFromInstance(inst.Parent)
					if node2 == nil then continue end
					newSelection[#newSelection+1] = node2
					oldSelection[#oldSelection+1] = node
				end
				for _,node in newSelection do node.Selected = true end
				for _,node in oldSelection do node.Selected = false end
			end,
			TeleportTo = function() pcall(function() Enviorment.LocalPlayer.Character.PrimaryPart:PivotTo(Explorer.selection.List[1]:GetPivot()) end) end,	
			ExpandAll = function()
				for _, inst in Explorer.selection.List do Explorer.ExpandAll(Explorer.GetNodeFromInstance(inst)) end
				Explorer.Refresh()
			end,	
			CollapseAll = function()
				for _, inst in Explorer.selection.List do Explorer.CollapseAll(Explorer.GetNodeFromInstance(inst)) end
			end,	
			Clear_Search_And_Jump_To = function()
				local inst = Explorer.selection.List[1]
				SearchBox.Text = ""; task.wait(0.1)
				Explorer.ViewObject(inst)
			end,
			CopyPath = function()
				local path = ""
				if #Explorer.selection.List > 1 then path = path .. "{" end
				for i, inst in Explorer.selection.List do
					path = path .. Functions.GetInstancePath(inst)
					if #Explorer.selection.List > 1 and i ~= #Explorer.selection.List then path = path .. ", "
					elseif #Explorer.selection.List > 1 and i == #Explorer.selection.List then path = path .. "}" end
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
					Enviorment.Functions.saveinstance({ SafeMode = false, SaveBytecode = true, ExtraInstances = table.clone(Explorer.selection.List), mode = "invalid", __DEBUG_MODE = true, FileName = text, FilePath = text, })
				end)
				module.SaveInstance.OnCancel:Connect(function() if passed then return end passed = true end)
			end,	
			ViewObject = function()
				for _, node in Explorer.selection.List do if node:IsA("BasePart") or node:IsA("Model") then Explorer.ViewObject(node) end end
			end,	
			ViewScript = function() Enviorment.AppSignal:Fire("ScriptViewer",Explorer.selection.List[1]) end,	
			SelectCharacter = function()
				for _,plr : Player in Explorer.selection.List do
					local node = Explorer.GetNodeFromInstance(plr)
					if plr.Character == nil then continue end
					for _, parent in Functions.ReverseTable(Functions.GetAncestors(plr.Character)) do
						local node2 = Explorer.GetNodeFromInstance(parent)
						if node2 then Explorer.ExpandNode(node2) end
						task.wait(0.1); Explorer.Refresh()
					end
					task.wait(0.1); Explorer.Refresh()
					local node2 = Explorer.GetNodeFromInstance(plr.Character)
					if node2 then node2.Selected = true end
					node.Selected = false
				end
			end,	
		}

		Enviorment.UIS.InputBegan:Connect(function(input, gameProcessed)
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

Enviorment.UIS.InputBegan:Connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		module.LastX = Enviorment.LocalPlayer:GetMouse().X
		module.LastY = Enviorment.LocalPlayer:GetMouse().Y
	end
end)

return module
