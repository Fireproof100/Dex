local module = {}
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
