local static = {}
local funcs = {}
funcs.__index = funcs
local Window = require(script.Parent.Window)
local CodeBox = require(script.Parent.Parent.Base.SmallCodeBox)
local Label = require(script.Parent.Parent.Base.Label)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local Button = require(script.Parent.Parent.Base.Button)
funcs.AddArgument = function(self)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = self.GuiElems.Window.GuiElems.Content
	frm.BackgroundTransparency = 1
	local index = #self.GuiElems.Window.GuiElems.Content:GetChildren() == 3 and 1 or #self.GuiElems.Window.GuiElems.Content:GetChildren() - 3
	
	local label = Label.new({Parent = frm,Size = UDim2.new(0.4,0,1,0),Text = "Argument #" .. tostring(index)})
	local box = CodeBox.new()
	box.GuiElems.TextBox.Size = UDim2.new(0.5,0,1,0)
	box.GuiElems.TextBox.Position = UDim2.new(0.5,0,0,0)
	box.GuiElems.TextBox.Parent = frm
	self.Arguments[index] = box
end

funcs.Show = function(self)
	self.GuiElems.Window:Show()
end

static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {},
		Arguments = {},
		Interaction = Signal.new(),
	},funcs)
	local w = Window.new()
	obj.GuiElems.Window = w;
	
	obj.Window = w;
	obj.Window.SizeY = obj.Window.SizeY - 40
	obj.GuiElems.Window:SetTitle('Function Arguments')
	Instance.new("UIListLayout",obj.GuiElems.Window.GuiElems.Content)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = obj.GuiElems.Window.GuiElems.Content
	frm.Name = "Indent"
	frm.BackgroundTransparency = 1
	--obj.GuiElems.Window.GuiElems.Content.Line:Destroy()
	for i=1,10 do obj:AddArgument() end
	obj.GuiElems.Window.Resizable = false
	
	
	local frm2 = Instance.new("Frame")
	frm2.Size = UDim2.new(1,0,0,20)
	frm2.Parent = obj.GuiElems.Window.GuiElems.Content
	frm2.Name = "Indent2"
	frm2.BackgroundTransparency = 1
	
	local save = Button.new()
	local cancel = Button.new()
	save.OnClick:Connect(function()
		local args = {}
		for _, v in obj.Arguments do
			args[#args+1] = Functions.Luau_To_Value(v:GetText())
		end
		obj.Interaction:Fire(true,table.unpack(args))
		obj.Window.Hide(obj.Window)
	end)
	save.Gui.Text = "Save"
	save.Gui.Parent = frm2
	save.Gui.Size = UDim2.new(0.5,-20,0,20)
	save.Gui.Position = UDim2.new(0.5,10,1,-20)

	cancel.OnClick:Connect(function()
		obj.Interaction:Fire(false)
		obj.Window.Hide(obj.Window)
	end)

	cancel.Gui.Text = "Cancel"
	cancel.Gui.Parent = frm2
	cancel.Gui.Size = UDim2.new(0.5,-20,0,20)
	cancel.Gui.Position = UDim2.new(0,10,1,-20)
	return obj
end


return static
