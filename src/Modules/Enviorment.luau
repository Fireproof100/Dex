local __newindex = {}
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

module.Version = "1.0.0"
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
