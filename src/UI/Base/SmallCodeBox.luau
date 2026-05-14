local funcs = {}
funcs.__index = funcs
local static = {}
local ViewportTextBox = require(script.Parent.ViewportTextBox)
funcs.GetText = function(self)
	return self.GuiElems.Int_Box.Text
end
funcs.SetText = function(self,text)
	self.GuiElems.Int_Box.Text = text
end
local highlighter = require(script.Parent.Parent.Parent.Modules.Highlighter)
static.new = function()
	local obj;
	obj = setmetatable({
		GuiElems = {}	
	},funcs)
	local textbox = ViewportTextBox.new()
	local int_box = textbox.TextBox
	local new_label = Instance.new("TextLabel")
	task.spawn(function()
		while task.wait(0.1) and textbox.Parent ~= nil do
			for _, prop in {"FontFace","TextSize","Size","Position","Parent","TextWrapped","TextStrokeTransparency","TextStrokeColor3","TextColor3","TextScaled","Visible"} do
				new_label[prop] = int_box[prop]
			end
		end
	end)
	int_box.TextTransparency = 0.2
	new_label.RichText = true
	task.spawn(function()
		while task.wait() and textbox.Parent ~= nil do
			new_label.Text = highlighter.run(int_box.Text)
		end
	end)
	new_label.TextXAlignment = Enum.TextXAlignment.Left
	new_label.BackgroundTransparency = 1
	--textbox.BackgroundTransparency =1 
	obj.GuiElems.TextBox = textbox
	obj.GuiElems.Int_Box = int_box
	obj.GuiElems.Label = new_label
	return obj
	
end
return static
