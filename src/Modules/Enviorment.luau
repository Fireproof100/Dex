local __newindex = {}
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

module.Version = "Beta 2.2.0"
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
