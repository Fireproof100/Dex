local module = {}
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
	local ValueChanged = function(node)
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
		--warn("Connected")
	end
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
			if Explorer.GetIndentIncrement(node) ~= 0 then
				indent = indent + Explorer.GetIndentIncrement(node)
			end
			new.Indent.Position = UDim2.new(0,(info.Explorer_IndentSeparation * indent) - Explorer.XOffset,0,0) -- 18
			new:SetAttribute("XOffset",(info.Explorer_IndentSeparation * indent))
		elseif node.Instance then
			local indent = #Functions.GetAncestors(node.Instance)
			if Explorer.GetIndentIncrement(node) ~= 0 then
				indent = indent + Explorer.GetIndentIncrement(node)
			end
			new.Indent.Position = UDim2.new(0,(info.Explorer_IndentSeparation * indent) - Explorer.XOffset ,0,0)
			new:SetAttribute("XOffset",(info.Explorer_IndentSeparation * indent))
		else
			-- TODO
		end
		
		if OldValue ~= node.Instance then
			task.spawn(ValueChanged,node)
			OldValue = node.Instance
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
			Explorer.Refresh()
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
		if SearchBox.Text ~= "" then
			Explorer.StartSearch(SearchBox.Text)
		else
			Explorer.StopSearch()
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
	workspace:SetAttribute("YOffset",0)
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
			explorerScroll.TotalSpace = Explorer.GetMaxIndex() --* info.Explorer_IndentSeparation
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
	Explorer.ContextMenu = context
	Explorer.Context = context
	context:Register("CUT", {
		Name = "Cut",
		IconMap = module.MiscIcons,
		Icon = "Cut",
		DisabledIcon = "Cut_Disabled",
		Shortcut = "Ctrl+Z",
		OnClick = function()
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
	})

	context:Register("COPY", {
		Name = "Copy",
		IconMap = module.MiscIcons,
		Icon = "Copy",
		DisabledIcon = "Copy_Disabled",
		Shortcut = "Ctrl+C",
		OnClick = function()
			table.clear(Explorer.clipboard)
			for _, inst in Explorer.selection.List do
				pcall(function()
					Explorer.clipboard[#Explorer.clipboard+1] = inst:Clone()
				end)
			end
		end,
	})

	context:Register("PASTE", {
		Name = "Paste Into",
		IconMap = module.MiscIcons,
		Icon = "Paste",
		DisabledIcon = "Paste_Disabled",
		Shortcut = "Ctrl+Shift+V",
		OnClick = function()

			for _,inst in Explorer.clipboard do
				inst.Parent = Explorer.selection.List[1]
			end
			--n--ode_list.ViewObject(Explorer.selection.List[1])
		end,
	})

	context:Register("DUPLICATE", {
		Name = "Duplicate",
		IconMap = module.MiscIcons,
		Icon = "Copy",
		DisabledIcon = "Copy_Disabled",
		Shortcut = "Ctrl+D",
		OnClick = function()
			for _, inst in Explorer.selection.List do
				pcall(function() inst:Clone().Parent = inst.Parent end)
			end
		end,
	})

	context:Register("DELETE", {
		Name = "Delete",
		IconMap = module.MiscIcons,
		Icon = "Delete",
		DisabledIcon = "Delete_Disabled",
		Shortcut = "Del",
		OnClick = function()
			for _, inst in Explorer.selection.List do
				pcall(game.Destroy,inst)
			end
		end,
	})

	context:Register("RENAME", {
		Name = "Rename",
		IconMap = module.MiscIcons,
		Icon = "Rename",
		DisabledIcon = "Rename_Disabled",
		Shortcut = "F2",
		OnClick = function()
			Explorer.SetRenaming(Explorer.GetNodeFromInstance(Explorer.selection.List[1]))
			
		end,
	})

	context:Register("GROUP", {
		Name = "Group",
		IconMap = module.MiscIcons,
		Icon = "Group",
		DisabledIcon = "Group_Disabled",
		Shortcut = "Ctrl+G",
		OnClick = function()
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
	})

	context:Register("UNGROUP", {
		Name = "Ungroup",
		IconMap = module.MiscIcons,
		Icon = "Ungroup",
		DisabledIcon = "Ungroup_Disabled",
		Shortcut = "Ctrl+U",
		OnClick = function()
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
	})

	context:Register("SELECT_CHILDREN", {
		Name = "Select Children",
		IconMap = module.MiscIcons,
		Icon = "SelectChildren",
		DisabledIcon = "SelectChildren_Disabled",
		OnClick = function()
			--for _,node in Explorer.GetNodes() do if node == nil then continue end;node.Selected = false end
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
	})
	context:Register("SELECT_DESCENDANTS", {
		Name = "Select Descendants",
		IconMap = module.MiscIcons,
		Icon = "SelectChildren",
		DisabledIcon = "SelectChildren_Disabled",
		OnClick = function()
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
	})
	context:Register("JUMP_TO_PARENT", {
		Name = "Jump to Parent",
		IconMap = module.MiscIcons,
		Icon = "JumpToParent",
		OnClick = function()
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
	})

	context:Register("TELEPORT_TO", {
		Name = "Teleport To",
		IconMap = module.MiscIcons,
		Icon = "TeleportTo",
		OnClick = function()
			pcall(function()
				Enviorment.LocalPlayer.Character.PrimaryPart:PivotTo(Explorer.selection.List[1]:GetPivot())
			end)
		end,
	})

	context:Register("EXPAND_ALL", {
		Name = "Expand All",
		OnClick = function()
			warn("___")
			for _, inst in Explorer.selection.List do
				warn("s",inst)
				local node = Explorer.GetNodeFromInstance(inst)
				warn("?",node)
				Explorer.ExpandAll(node)
				warn("n",inst)
			end
			warn("!")
			Explorer.Refresh()
		end,
	})

	context:Register("COLLAPSE_ALL", {
		Name = "Collapse All",
		OnClick = function()
			for _, inst in Explorer.selection.List do
				Explorer.CollapseAll(Explorer.GetNodeFromInstance(inst))
			end
		end,
	})

	context:Register("CLEAR_SEARCH_AND_JUMP_TO", {
		Name = "Clear Search and Jump to",
		OnClick = function()
			local inst = Explorer.selection.List[1]
			SearchBox.Text = "";
			task.wait(0.1)
			Explorer.ViewObject(inst)
		end,
	})

	context:Register("COPY_PATH", {
		Name = "Copy Path",
		OnClick = function()
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
	})

	context:Register("INSERT_OBJECT", {
		Name = "Insert Object",
		IconMap = module.MiscIcons,
		Icon = "InsertObject",
		OnClick = function()
			local mouse = Enviorment.LocalPlayer:GetMouse()
			local x = module.LastX or mouse.X
			local y = module.LastY or mouse.Y
			Explorer.InsertObjectContext:Show(x, y)
		end,
	})

	context:Register(
		"CALL_FUNCTION",
		{ Name = "Call Function", IconMap = module.ClassIcons, Icon = 66, OnClick = 
			function() 
				module.InitCallFunction(Explorer)
				local mouse = Enviorment.LocalPlayer:GetMouse()
				Explorer.CallFunctionContext:Show(module.LastX or mouse.X,module.LastY or mouse.Y)
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
			local sList = selection.List

			for i = 1, #sList do
				local node = sList[i]

				if node.Obj:IsA("BasePart") or node.Obj:IsA("Model") then
					ObjectViewer.ViewObject(node.Obj)
				end
			end
		end,
	})

	context:Register("VIEW_SCRIPT", {
		Name = "View Script",
		IconMap = module.MiscIcons,
		Icon = "ViewScript",
		OnClick = function()
			Enviorment.AppSignal:Fire("ScriptViewer",Explorer.selection.List[1])
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
