local module = {}

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
