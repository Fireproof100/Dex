-- Simple Save Instance
local static = {}
local funcs = {}
local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Window)
local Button = require(script.Parent.Parent.Base.Button)
local Label = require(script.Parent.Parent.Base.Label)
local TextBox = require(script.Parent.Parent.Base.ViewportTextBox)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
--local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local mt = {__index = funcs}
funcs.SetText = function(self,text)
	self.GuiElems.TextBox:SetText(text)
end
funcs.Show = function(self)
	self.Window:Show()
end
static.new = function()
	local obj;
	obj = setmetatable({
		Window = Window.new(),
		OnSave = Signal.new(),
		OnCancel = Signal.new(),
		GuiElems = {},
	},mt)
	obj.Window:SetTitle("Save Instance")
	obj.Window.SizeX = 472
	obj.Window.SizeY = 200
	local save = Button.new()
	local cancel = Button.new()
	local box = TextBox.new()
	box.Parent = obj.Window.GuiElems.Content
	box.Size = UDim2.new(1,0,0,20)
	save.OnClick:Connect(function()
		obj.OnSave:Fire(box:GetText())
		obj.Window.Hide(obj.Window)
	end)
	save.Gui.Text = "Save"
	save.Gui.Parent = obj.Window.GuiElems.Content
	save.Gui.Size = UDim2.new(0.5,-20,0,20)
	save.Gui.Position = UDim2.new(0.5,10,1,-20)
	
	cancel.OnClick:Connect(function()
		obj.OnCancel:Fire()
		obj.Window.Hide(obj.Window)
	end)
	
	cancel.Gui.Text = "Cancel"
	cancel.Gui.Parent = obj.Window.GuiElems.Content
	cancel.Gui.Size = UDim2.new(0.5,-20,0,20)
	cancel.Gui.Position = UDim2.new(0,10,1,-20)
	obj.GuiElems.Window = obj.Window
	obj.GuiElems.TextBox = box
	obj.GuiElems.Cancel = cancel
	obj.GuiElems.Save = save
	obj.Window.OnDeactivate:Connect(function()
		obj.OnCancel:Fire()
	end)
	return obj
end

return static
