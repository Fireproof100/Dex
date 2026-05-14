local Enviorment = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local Signal = require(script.Parent.Parent.Parent.Modules.Signal)

local Button = {}
Button.__index = Button


function Button.new(mode : number?)
	local b = Instance.new("TextButton")
	local self = setmetatable({}, Button)

	
	b.AutoButtonColor = false
	b.TextColor3 = Enviorment.Settings.Theme.Text
	b.TextTransparency = 0.1
	b.Size = UDim2.new(0, 100, 0, 20)
	b.Font = Enum.Font.SourceSans
	b.TextSize = 14
	b.BackgroundColor3 = Enviorment.Settings.Theme.Button
	b.BorderColor3 = Enviorment.Settings.Theme.Outline2

	self.Gui = b
	self.Anim = Enviorment.ButtonAnim(b, {
		Mode = mode or 2,
		StartColor = Enviorment.Settings.Theme.Button,
		HoverColor = Enviorment.Settings.Theme.ButtonHover,
		PressColor = Enviorment.Settings.Theme.ButtonPress,
		OutlineColor = Enviorment.Settings.Theme.Outline2,
	})
	self.Disabled = false
	self.OnClick = Signal.new()
	self.OnDown = Signal.new()
	self.OnUp = Signal.new()
	self.AllowedButtons = { 1 }

	b.MouseButton1Click:Connect(function()
		self:Trigger("Click", 1)
	end)
	b.MouseButton1Down:Connect(function()
		self:Trigger("Down", 1)
	end)
	b.MouseButton1Up:Connect(function()
		self:Trigger("Up", 1)
	end)

	b.MouseButton2Click:Connect(function()
		self:Trigger("Click", 2)
	end)
	b.MouseButton2Down:Connect(function()
		self:Trigger("Down", 2)
	end)
	b.MouseButton2Up:Connect(function()
		self:Trigger("Up", 2)
	end)

	return self
end

-- Method to trigger events
function Button:Trigger(event, button)
	if not self.Disabled and table.find(self.AllowedButtons, button) then
		if self["On" .. event] then
			self["On" .. event]:Fire(button)
		else
			warn("Attempt to call missing method 'On" .. event .. "' of table")
		end
	end
end

-- Method to set disabled state
function Button:SetDisabled(dis)
	self.Disabled = dis

	if dis then
		self.Anim:Disable()
		self.Gui.TextTransparency = 0.5
	else
		self.Anim:Enable()
		self.Gui.TextTransparency = 0
	end
end

return {
	new = Button.new,
}
