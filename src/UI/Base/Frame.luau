local module = {}

module.new = function()
	local new = {
		Gui = Instance.new("Frame")
	}
	return new
end
module.New = module.new

return module
