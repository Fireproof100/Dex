local module = {}
module.New = function(data)
	local data = data or {}
	local new = Instance.new("TextLabel",data.Parent)
	new.BackgroundTransparency = 1
	new.TextXAlignment = Enum.TextXAlignment.Left
	new.Text = data.Text or "???"
	new.Size = data.Size or UDim2.new(0,100,0,20)
	new.TextColor3 = data.Color or Color3.new(1,1,1)
	new.FontFace = Font.fromName("SourceSansPro")
	new.TextSize = 14
	return new
end
module.new = module.New
return module
