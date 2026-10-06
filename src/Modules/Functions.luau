local module = {}
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
