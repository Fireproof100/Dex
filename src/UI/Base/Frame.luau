local module = {}

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
