local static = {}
local funcs = {}
funcs.__index = funcs
local Window = require(script.Parent.Window)
local CodeBox = require(script.Parent.Parent.Base.SmallCodeBox)
local Label = require(script.Parent.Parent.Base.Label)
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Parent.Modules.Functions)
local Button = require(script.Parent.Parent.Base.Button)
funcs.AddLabel = function(self,text)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = self.GuiElems.Window.GuiElems.Content
	frm.BackgroundTransparency = 1
	local index =text
	
	local label = Label.new({Parent = frm,Size = UDim2.new(0.4,0,1,0),Text = text})
	local box = CodeBox.new()
	box.GuiElems.TextBox.Size = UDim2.new(0.5,0,1,0)
	box.GuiElems.TextBox.Position = UDim2.new(0.5,0,0,0)
	box.GuiElems.TextBox.Parent = frm
	self.Arguments[index] = box
end

funcs.Show = function(self)
	self.GuiElems.Window:Show()
end
funcs.Display = function(self,data)
	self.Arguments["Result"]:SetText(Functions.Value_To_Luau(data.Result))
	self.Arguments["Success"]:SetText(Functions.Value_To_Luau(data.Success))
end
static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {},
		Arguments = {},
	},funcs)
	local w = Window.new()
	obj.GuiElems.Window = w;
	
	obj.Window = w;
	obj.Window.SizeY = 60
	obj.Window.SizeX = 300
	obj.GuiElems.Window:SetTitle('Function Result')
	Instance.new("UIListLayout",obj.GuiElems.Window.GuiElems.Content)
	local frm = Instance.new("Frame")
	frm.Size = UDim2.new(1,0,0,20)
	frm.Parent = obj.GuiElems.Window.GuiElems.Content
	frm.Name = "Indent"
	frm.BackgroundTransparency = 1
	--obj.GuiElems.Window.GuiElems.Content.Line:Destroy()
	obj:AddLabel("Result")
	obj:AddLabel("Success")
	obj.GuiElems.Window.Resizable = false
	return obj
end


return static
