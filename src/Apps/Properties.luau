local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Label = require(script.Parent.Parent.UI.Base.Label)
local Button = require(script.Parent.Parent.UI.Base.Button)
local ViewportTextBox = require(script.Parent.Parent.UI.Base.ViewportTextBox)
local Checkbox = require(script.Parent.Parent.UI.Base.Checkbox)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local DropDown = require(script.Parent.Parent.UI.Normal.DropDown)
local ContextMenu = require(script.Parent.Parent.UI.Normal.ContextMenu)
local Signal = require(script.Parent.Parent.Modules.Signal)
local Functions = require(script.Parent.Parent.Modules.Functions)
local ColorPicker = require(script.Parent.Parent.UI.Normal.ColorPicker)
local ColorSequenceEditor = require(script.Parent.Parent.UI.Normal.ColorSequenceEditor)
local module = {}
local create__ = create
local function create(...): GuiBase
	return create__(...)
end
module.ExpandHighlight = function(exp)
	--exp.MouseLeave:Connect(function()
	--	exp.Icon.ImageRectOffset = Vector2.new(176,16) --  Icon_Expand
	--	exp.Icon.ImageRectOffset = Vector2.new(144,16) -- Icon_Retract
	--end)
	--exp.MouseEnter:Connect(function()
	--	exp.Icon.ImageRectOffset = Vector2.new(160,16) -- Icon_Expand
	--	exp.Icon.ImageRectOffset = Vector2.new(128,16) -- Icon_Retract
	--end)
	exp.MouseEnter:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(176,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset =  Vector2.new(160,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(144,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(128,16)
		end
	end)
	exp.MouseLeave:Connect(function()
		if exp.Icon.ImageRectOffset == Vector2.new(160,16) then --  Icon_Expand 
			exp.Icon.ImageRectOffset = Vector2.new(176,16)
		elseif exp.Icon.ImageRectOffset == Vector2.new(128,16) then --  Icon_Expand
			exp.Icon.ImageRectOffset = Vector2.new(144,16)
		end
	end)
end
module.NewEntryTemplate = function()
	local f = create({
		{1,"TextButton",{
			AutoButtonColor = false,
			BackgroundColor3 = Enviorment.Settings.Theme.Main2,
			BorderColor3 = Enviorment.Settings.Theme.Outline1,
			Font=3,
			Name="Entry",
			Position=UDim2.new(0,1,0,1),
			Size=UDim2.new(0,250,0,22),
			Text=""
			,TextSize=14,}},
		{2,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.ListSelection,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),
			BorderSizePixel=0,
			Name="NameFrame",
			Parent={1},
			Position=UDim2.new(0,20,0,0),
			Size=UDim2.new(1,-40,1,0),}},
		{3,"TextLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="PropName",
			Parent={2},
			Position=UDim2.new(0,2,0,0),
			Size=UDim2.new(1,-2,1,0),
			Text="Anchored",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			TextTruncate=1,
			TextXAlignment=0,}},
		{4,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			ClipsDescendants=true,Font=3,
			Name="Expand",
			Parent={2},
			Position=UDim2.new(0,-20,0,1)
			,Size=UDim2.new(0,20,0,20),
			Text="",
			TextSize=14,
			Visible=false,}},
		{5,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5642383285",ImageRectOffset=Vector2.new(144,16),
			ImageRectSize=Vector2.new(16,16),
			Name="Icon",
			Parent={4},
			Position=UDim2.new(0,2,0,2),
			ScaleType=4,
			Size=UDim2.new(0,16,0,16),}},
		{6,"TextButton",{BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=4
			,Name="ToggleAttributes",
			Parent={2},
			Position=UDim2.new(1,-85,0,0),
			Size=UDim2.new(0,85,0,22),
			Text="[SETTING: OFF]",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			Visible=false,}},
		{7,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.ListSelection,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.33725491166115,0.49019607901573,0.73725491762161),
			BorderSizePixel=0,
			Name="ValueFrame",
			Parent={1},
			Position=UDim2.new(1,-100,0,0),
			Size=UDim2.new(0,80,1,0),}},
		{8,"Frame",{
			BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14117647707462),
			BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),
			BorderSizePixel=0,
			Name="Line",
			Parent={7},
			Position=UDim2.new(0,-1,0,0),
			Size=UDim2.new(0,1,1,0),}},
		{9,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="ColorButton",
			Parent={7},
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{10,"Frame",{
			BackgroundColor3=Color3.new(1,1,1),
			BorderColor3=Color3.new(0,0,0),
			Name="ColorPreview",
			Parent={9},
			Position=UDim2.new(0,5,0,6),
			Size=UDim2.new(0,10,0,10),}},
		{11,"UIGradient",{
			Parent={10},}},
		{12,"Frame",{
			BackgroundTransparency=1,
			Name="EnumArrow",
			Parent={7},
			Position=UDim2.new(1,-16,0,3),
			Size=UDim2.new(0,16,0,16),
			Visible=false,}},
		{13,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,8,0,9),
			Size=UDim2.new(0,1,0,1),}},
		{14,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,7,0,8),
			Size=UDim2.new(0,3,0,1),}},
		{15,"Frame",{
			BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),
			BorderSizePixel=0,
			Parent={12},
			Position=UDim2.new(0,6,0,7),
			Size=UDim2.new(0,5,0,1),}},
		{16,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Font=3,
			Name="ValueBox",
			Parent={7},
			Position=UDim2.new(0,4,0,0),
			Size=UDim2.new(1,-8,1,0),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			TextTruncate=1,
			TextXAlignment=0,}},
		{17,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="RightButton",
			Parent={7},Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="...",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{18,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3
			,Name="SettingsButton",
			Parent={7},
			Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			Visible=false,}},
		{19,"Frame",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Name="SoundPreview",
			Parent={7},
			Size=UDim2.new(1,0,1,0),
			Visible=false,}},
		{20,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="ControlButton",
			Parent={19},
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,}},
		{21,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5642383285",
			ImageRectOffset=Vector2.new(144,16),
			ImageRectSize=Vector2.new(16,16),
			Name="Icon",
			Parent={20},
			Position=UDim2.new(0,2,0,3),
			ScaleType=4,
			Size=UDim2.new(0,16,0,16),}},
		{22,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Highlight2,
			BorderSizePixel=0,
			Name="TimeLine",
			Parent={19},
			Position=UDim2.new(0,26,0.5,-1),
			Size=UDim2.new(1,-34,0,2),}},
		{23,"Frame",{
			BackgroundColor3=Enviorment.Settings.Theme.Button,
			BorderColor3=Enviorment.Settings.Theme.Outline1,
			Name="Slider",
			Parent={22},
			Position=UDim2.new(0,-4,0,-8),
			Size=UDim2.new(0,8,0,18),}},
		{24,"TextButton",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			BorderSizePixel=0,
			Font=3,
			Name="EditAttributeButton",
			Parent={1},
			Position=UDim2.new(1,-20,0,0),
			Size=UDim2.new(0,20,0,22),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,}},
		{25,"ImageLabel",{
			BackgroundColor3=Color3.new(1,1,1),
			BackgroundTransparency=1,
			Image="rbxassetid://5034718180",
			ImageTransparency=0.20000000298023
			,Name="Icon",Parent={24},
			Position=UDim2.new(0,2,0,3),
			Size=UDim2.new(0,16,0,16),}},
		{26,"TextButton",{
			AutoButtonColor=false,
			BackgroundColor3=Enviorment.Settings.Theme.Button,
			BorderSizePixel=0,
			Font=3,
			Name="RowButton",
			Parent={1},
			Size=UDim2.new(1,0,1,0),
			Text="Add Attribute",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextTransparency=0.10000000149012,
			Visible=false,}},
		
		--{27,"UIStroke",{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.fromRGB(33,33,33),Thickness=1,Parent={1}}},
	})
	local G2L = {
		
	}
	G2L["2"] = Instance.new("ImageLabel", f.ValueFrame.RightButton);
	G2L["2"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["2"]["Image"] = [[rbxassetid://6511490623]];
	G2L["2"]["ImageRectSize"] = Vector2.new(16, 16);
	G2L["2"]["Size"] = UDim2.new(0, 16, 0, 16);
	G2L["2"]["BackgroundTransparency"] = 1;
	G2L["2"]["ImageRectOffset"] = Vector2.new(112, 0);
	G2L["2"]["Position"] = UDim2.new(0, 2, 0, 3);
	return f
end
module.InitInputBox = function(Properties)
	
end
module.MakeNode = function(Properties,index)
	local new = module.NewEntryTemplate()
	new.Parent = Properties.NodeContent
	
	local function f1(ex)
		for _, v in new.ValueFrame:GetChildren() do
			if table.find({"SettingsButton","RightButton","Line","Delete"},v.Name) then continue end
			if v == Properties.InputBox then continue end
			if ex == nil then v.Visible = false end
			if typeof(ex) == "table" then
				if table.find(ex,v) then
					v.Visible = true
				else
					v.Visible = false
				end
				continue
			end
			if v ~= ex then v.Visible = false;continue end
			
			
			v.Visible = true
		end
	end
	Properties.Connected[index] = true
	local Connections = {}
	local checkbox2 = Checkbox.new(1)
	local delete_button = Enviorment.CloseButton()
	delete_button.Parent = new.ValueFrame
	delete_button.Position = UDim2.new(1,-delete_button.AbsoluteSize.X,0,delete_button.Position.Y.Offset)
	delete_button.Name = "Delete"
	checkbox2.Gui.Parent = new.ValueFrame
	module.ExpandHighlight(new.NameFrame.Expand)
	local function RightButton(txt,vis)
		if txt == "..." then
			new.ValueFrame.RightButton:FindFirstChildOfClass("ImageLabel").Visible = false
			new.ValueFrame.RightButton.Text = txt
		elseif txt == "close" then
			new.ValueFrame.RightButton:FindFirstChildOfClass("ImageLabel").Visible = true
			new.ValueFrame.RightButton.Text = ""
		end
		new.ValueFrame.RightButton.Visible = vis or false
	end
	local function Refresh()
		for _, v in Connections do local s,err = pcall(function() v:Disconnect() end); if not s then warn("Errored while disconnecting ",err) end end
		if new == nil then
			return
		end
		if new.Parent == nil then
			new = nil
			return
		end
		local node = Properties.GetNodeAtIndex(index)
		if node == nil then
			new.Visible = false
			return
		end
		
		
		new.Visible = true
		local value = node.GetValue()
		local type_value = typeof(value)
		
		if type_value == "nil" then
			local s,_ = pcall(function()
				node.SetValue(Instance.new("Frame"),true)
			end)
			local s2,_ = pcall(function()
				node.SetValue(PhysicalProperties.new(node.GetObject().Material),true)
			end)
			local s3,_ = pcall(function()
				node.SetValue(Instance.new("Camera"),true)
			end)
			local s4,_ = pcall(function()
				node.SetValue(Instance.new("Part"),true)
			end)
			local s5,_ = pcall(function()
				node.SetValue(Instance.new("Humanoid"),true)
			end)
			if s or s3 or s4 or s5 then
				type_value = "Instance"
				node.SetValue(nil)
			end
			if s2 then
				type_value = "PhysicalProperties"
				node.SetValue(nil)
			end
		end
		
		
		new.NameFrame.PropName.Text = node.Name
		if node.Writable() ~= true then
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
			new.ValueFrame.ValueBox.TextColor3 = Enviorment.Settings.Theme.PlaceholderText
			
		else
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.Text
			new.ValueFrame.ValueBox.TextColor3 = Enviorment.Settings.Theme.Text
		end
		
		--
		
		new.Position = UDim2.new(0,0,0,new.Position.Y.Offset)
		new.Size = UDim2.new(1,0,0,22)
		
		local xoffset = 20 + node.Depth * 16
		
		
		
		new.NameFrame.Position = UDim2.new(0,xoffset,0,0)
		new.NameFrame.Size = UDim2.new(0.5,-(xoffset + 1),1,0)
		
		new.ValueFrame.Position = UDim2.new(0.5,0,0,0)
		new.ValueFrame.Size = UDim2.new(0.5,0,1,0)
		
		RightButton("...",false)
		
		Connections[#Connections+1] = new.NameFrame.Expand.Activated:Connect(function()
			if node.Button then
				return
			end
			if node.RowText ~= nil then
				if Properties.ExpandedCategories[node.RowText] == nil then
					Properties.ExpandedCategories[node.RowText] = true
				end
				Properties.ExpandedCategories[node.RowText] = not Properties.ExpandedCategories[node.RowText]
				--print("Written at index ",node.RowText, Properties.ExpandedCategories[node.RowText]," at node render function ",node)
				new.NameFrame.Expand.Icon.ImageRectOffset = (Properties.ExpandedCategories[node.RowText]) and Vector2.new(176,16) or Vector2.new(144,16)
			else
				node.Expanded = node.Expanded or false
				node.Expanded = not node.Expanded
				new.NameFrame.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16)  or Vector2.new(144,16)
			end
			
			
			Properties.Refresh()
		end)
		new.RowButton.Visible = false
		delete_button.Visible = false
		if node.Button ~= nil then
			new.RowButton.Visible = true
			new.RowButton.Text = node.Button.Text or "Button"
			
			Connections[#Connections+1] = new.RowButton.Activated:Connect(function() node.Button.Activated:Fire() end)
			return
		elseif node.IsTag then
			delete_button.Visible = true
			f1(nil)
			new.NameFrame.PropName.Text = node.Name
			new.NameFrame.PropName.Font = Enum.Font.SourceSans
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main2
			new.NameFrame.Expand.Visible = false
			Connections[#Connections+1] = delete_button.Activated:Connect(function() node.TagSignal:Fire() end)
			new.ValueFrame.Visible = true
			return
		elseif node.RowText ~= nil then
			new.Visible = true
			if Properties.ExpandedCategories[node.RowText] == nil then
				Properties.ExpandedCategories[node.RowText] = true
			end
			
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main1
			new.ValueFrame.Visible = false

			new.NameFrame.PropName.Text = node.RowText
			new.NameFrame.PropName.Font = Enum.Font.SourceSansBold
			new.NameFrame.Expand.Visible = true
			new.NameFrame.PropName.TextColor3 = Enviorment.Settings.Theme.Text
			new.NameFrame.BackgroundTransparency = 1
			new.NameFrame.Size = UDim2.new(1,0,1,0)
			new.EditAttributeButton.Visible = false
			new.NameFrame.Expand.Icon.ImageRectOffset = Properties.ExpandedCategories[node.RowText] == true and Vector2.new(176,16) or  Vector2.new(144,16)
			return
		else
			new.NameFrame.Expand.Icon.ImageRectOffset = node.Expanded and Vector2.new(176,16) or Vector2.new(144,16)
			new.NameFrame.PropName.Text = node.Name
			new.NameFrame.PropName.Font = Enum.Font.SourceSans
			new.BackgroundColor3 = Enviorment.Settings.Theme.Main2
			new.NameFrame.Expand.Visible = false
			new.ValueFrame.Visible = true
			
		end
		new.ValueFrame.ValueBox.BackgroundColor3 = Enviorment.Settings.Theme.Main1
		new.EditAttributeButton.Visible = node.IsAttribute or false
		if not node.Subnodes then
			new.NameFrame.Expand.Visible = false
		elseif #node.Subnodes == 0 then
			new.NameFrame.Expand.Visible = false
		else
			new.NameFrame.Expand.Visible = true
		end
		Connections[#Connections+1] = new.EditAttributeButton.Activated:Connect(function()
			if not node.Writable() then
				return
			end
			Properties.AttributeContext:Clear()
			Properties.AttributeContext.Add(Properties.AttributeContext,{
				Name = "Delete",
				Disabled = false,
				OnClick = function()
					if node.IsCategory or node.IsAttribute ~= true or node.Button ~= nil or node.IsButton == true then
						return
					end
					node.SetValue(nil)
				end
			})
			Properties.AttributeContext.Add(Properties.AttributeContext,{
				Name = "Edit",
				Disabled = false,
				OnClick = function()
					if node.IsCategory or node.IsAttribute ~= true or node.Button ~= nil or node.IsButton == true then
						return
					end
					Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects,node.Name)
				end
			})
			Properties.AttributeContext.Gui.Parent = new.ValueFrame
			Properties.AttributeContext.Width = new.ValueFrame.AbsoluteSize.X
			Properties.AttributeContext:Show(new.ValueFrame.AbsolutePosition.X,new.ValueFrame.AbsolutePosition.Y)
		end)
		new.ValueFrame.ValueBox.Position = UDim2.new(0,0,0,0)
		new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = false
		if table.find({"string","CFrame","Vector3int16","Vector3","Vector2int16","Vector2","Color3","number","SecurityCapabilities","Ray","UDim2","UDim","Rect","Color3","ColorSequence"},type_value) then
			local btn : TextButton = new.ValueFrame.ValueBox
			if type_value == "Color3" or type_value == "ColorSequence" then
				f1({btn,new.ValueFrame.ColorButton})
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Enabled = true
				new.ValueFrame.ColorButton.ColorPreview.UIGradient.Color = type_value == "Color3" and ColorSequence.new(node.GetValue()) or node.GetValue()
			else
				f1(btn)
			end
			
			btn.Text = type_value == "ColorSequence" and "< Color Sequence >" or tostring(value)
			local poffset2 = 0
			if new.ValueFrame.ColorButton.Visible then
				poffset2 = poffset2 + new.ValueFrame.ColorButton.AbsoluteSize.X
			end
			btn.Position = UDim2.new(0,poffset2,0,0)
			local function OpenColorSeq()
				local connection;connection = Properties.ColorSequenceEditor.OnSelect:Connect(function()
					node.SetValue(Properties.ColorSequenceEditor.Sequence)
					connection:Disconnect()
				end)
				Properties.ColorSequenceEditor:SetSequence(node.GetValue())
				Properties.ColorSequenceEditor:Show()
			end
			Connections[#Connections+1] = new.ValueFrame.ColorButton.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				if type_value == "ColorSequence" then
					OpenColorSeq()
					return
				end
				local connection;connection = Properties.ColorPicker.OnSelect:Connect(function()
					node.SetValue(Properties.ColorPicker.Color)
					connection:Disconnect()
				end)
				Properties.ColorPicker:SetColor(node.GetValue())
				Properties.ColorPicker:Show()
				
			end)
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				if type_value == "ColorSequence" then
					OpenColorSeq()
					return
				end
				
				Properties.InputProp = node.Name
				local box : TextBox = Properties.InputTextBox
				Properties.InputBox.Parent = new.ValueFrame
				
				local offset = 2
				local poffset = 0
				if new.EditAttributeButton.Visible then
					offset = offset + new.EditAttributeButton.AbsoluteSize.X
				end
				--if new.ValueFrame.ColorButton.Visible then
				--	offset = offset + new.ValueFrame.ColorButton.AbsoluteSize.X
				--	poffset = poffset + new.ValueFrame.ColorButton.AbsoluteSize.X
				--end
				local prev_visible = new.ValueFrame.ColorButton.Visible
				new.ValueFrame.ColorButton.Visible = prev_visible
				Properties.InputBox.Position = UDim2.new(0,2 + poffset,0,0)
				Properties.InputBox.Size = UDim2.new(1,-offset,1,0)
				
				Properties.InputBox.Visible = true
				Properties.InputTextBox.Text = tostring(value)
				Properties.TextBoxNode = node
				box:CaptureFocus()
				local i = #Connections+1
				btn.Visible = false
				if prev_visible == true then
					Properties.MakeVisibleOnLostFocus(new.ValueFrame.ColorButton)
				end
				Properties.MakeVisibleOnLostFocus(btn)
				--Connections[i] = 
			end)
		elseif table.find({"boolean","PhysicalProperties"},type_value) then
			f1(checkbox2.Gui)
			
			Connections[#Connections+1] = checkbox2.OnInput:Connect(function() 
				if type_value == "PhysicalProperties" then
					node.SetValue(checkbox2.Toggled and PhysicalProperties.new(node.GetObject().Material) or nil)
					if checkbox2.Toggled then
						for i,subprop in Properties.ExpandableTypes[type_value] do
							local subnode = Properties.AddNode(node,subprop,true,i)
							node.Subnodes[i] = subnode
						end
					else
						node.Subnodes = {}
					end
				else
					node.SetValue(checkbox2.Toggled);
				end
				
			end)
			checkbox2.Disabled = not node.Writable()
			checkbox2:Paint()
			if node.GetValue() ~= checkbox2.Toggled then
				if type_value == "PhysicalProperties" then
					checkbox2:SetState(node.GetValue() ~= nil and true or false)
					
				else
					checkbox2:SetState(node.GetValue())
					Refresh()
					checkbox2:Paint()
				end
				
			end
		elseif type_value == "Instance" then
			local btn : TextButton = new.ValueFrame.ValueBox
			f1(btn)
			btn.Text = node.GetValue() == nil and "" or node.GetValue().Name
			RightButton("close",false)
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				RightButton("close",true)
				Properties.InputProp = node.Name
				local box : TextBox = Properties.InputTextBox
				Properties.InputBox.Parent = new.ValueFrame
				Properties.InputBox.Position = UDim2.new(0,2,0,0)
				local offset = 2
				if new.EditAttributeButton.Visible then
					offset = offset + 20
				end
				Properties.InputBox.Size = UDim2.new(1,-offset,1,0)
				Properties.InputBox.Visible = true
				Properties.InputTextBox.Text = tostring(value)
				box:CaptureFocus()
				btn.Visible = false
				Properties.MakeVisibleOnLostFocus(btn)
				Enviorment.AppSignal:Fire("Explorer","NewIndex","RunOnSelect",function(ExplorerNode)
					print("pressed ",ExplorerNode)
					task.spawn(node.SetValue,ExplorerNode.Instance)
					task.spawn(function()
						btn.Visible = true
						Properties.InputTextBox:ReleaseFocus()
						Properties.InputBox.Visible = false
						RightButton("close",false)
					end)
					
				end)
				
			end)
			Connections[#Connections+1] = new.ValueFrame.RightButton.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				task.spawn(node.SetValue,nil)
			end)
		elseif type_value == "EnumItem" then
			local btn : TextButton = new.ValueFrame.ValueBox
			if node.Writable() then
				f1({new.ValueFrame:FindFirstChild("EnumArrow"),btn})
			else
				f1(btn)
			end
			
			btn.Text = node.GetValue().Name
			
			Connections[#Connections+1] = btn.Activated:Connect(function()
				if not node.Writable() then
					return
				end
				Properties.ArrowContext:Clear()
				local options = {}
				local EnumItem : EnumItem = node.GetValue()
				
				for _, enum in node.GetValue().EnumType:GetEnumItems() do
					options[#options+1] = enum.Name
				end
				for _,option in options do
					Properties.ArrowContext.Add(Properties.ArrowContext,{
						Name = option,
						Disabled = false,
						OnClick = function()
							node.SetValue(EnumItem.EnumType[option])
						end
					})
				end
				Properties.ArrowContext.Gui.Parent = new.ValueFrame
				Properties.ArrowContext.Width = new.ValueFrame.AbsoluteSize.X
				Properties.ArrowContext:Show(new.ValueFrame.AbsolutePosition.X,new.ValueFrame.AbsolutePosition.Y)
				
				
				
				
			end)
			
		else
			f1(nil)
		end
		
		
		
	end
	Refresh()
	Properties.RegisterCallback(Refresh,new)
end

module.New = function()
	local Properties = {ViewWidth = 0,YOffset = 0,SearchText = ""}
	Properties.Entry_List = {}
	Properties.Node_List = {}
	Properties.AllowedAttributeTypes = {"string","boolean","number","UDim","UDim2","BrickColor","Color3","Vector2","Vector3","NumberSequence","ColorSequence","NumberRange","Rect","Font"}
	Properties.Connections = {}
	Properties.ExpandedCategories = {}
	Properties.Refresh_Callbacks = {}
	Properties.MakeVisibleContent = {}
	Properties.Connected = {}
	Properties.ActiveNodes = {}
	Properties.TagEditor = module.NewTagEditor(Properties)
	Properties.RegisterCallback = function(f,entry)
		if entry then
			local idx = #Properties.Refresh_Callbacks+1
			Properties.Refresh_Callbacks[idx] = f
			Properties.Entry_List[idx] = {
				Func = f, 
				Entry = entry, 
				Disable = function() 
					Properties.ActiveNodes[idx] = false
					table.remove(Properties.Refresh_Callbacks,idx); 
					table.remove(Properties.Entry_List,idx) 
					entry:Destroy();
					
				end}
		else
			local idx = #Properties.Refresh_Callbacks+1
			Properties.Refresh_Callbacks[idx] = f
		end
		
	end
	Properties.MakeVisibleOnLostFocus = function(v)
		Properties.MakeVisibleContent[#Properties.MakeVisibleContent+1] = v
	end
	Properties.StringToValue = function(value : any,s)
		if table.find({"CFrame","Vector3int16","Vector3","Vector2int16","Vector2","Color3","PhysicalProperties","Rect","UDim2","UDim"},s)then
			local numbers = string.split(value,","); for i, v in numbers do numbers[i] = tonumber(v) end
			return getfenv()[s].new(table.unpack(numbers))
		end
		if s == "SecurityCapabilities" then
			local strings = string.split(value,"|");
			for i, v in strings do
				local new = ""
				for _, c in string.split(v,"") do if c == " " or c == "\n" or c == "	" then continue end;new = new .. c end
				strings[i] = new
			end
			local args = {}
			for _, v in strings do
				pcall(function()
					args[#args+1] = Enum.SecurityCapability[v]
				end)
			end
			return SecurityCapabilities.new(table.unpack(args))
		end
		if s == "Ray" then
			local numbers = string.split(value,",");for i, v in numbers do numbers[i] = tonumber(v) end
			return Ray.new(Vector3.new(numbers[1],numbers[2],numbers[3]),Vector3.new(numbers[4],numbers[5],numbers[6]))
		end
		if s == "string" then return value elseif s == "number" then return tonumber(value) elseif s == "boolean" then return value == "true" end
	end
	Properties.GetNodeAtIndex = function(index,nooffset)
		local final = nooffset == true and index or index + Properties.YOffset
		local x = 0
		local s = nil
		local function OnNode(node)
			if node == nil then return end
			if node.Category ~= nil then
				--print(node.Category,Properties.ExpandedCategories[node.Category])
				if Properties.ExpandedCategories[node.Category] == false then
					--print("skipped",node)
					return
				end
			end
			if Properties.SearchText ~= "" and node.IsCategory ~= true then
				if string.find(string.lower(node.Name),string.lower(Properties.SearchText)) == nil then
					return
				end
			end
			x = x + 1
			if x == final then
				s = node
				return
			end
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end
		end
		for _, v in Properties.Node_List do OnNode(v) end
		return s
	end
	Properties.GetIndexOfNode = function(node)
		local x = 0
		local s = nil
		local function OnNode(node)
			if node == nil then return end
			if node.Category ~= nil then
				if Properties.ExpandedCategories[node.Category] == false then
					return
				end
			end
			if Properties.SearchText ~= "" and node.IsCategory ~= true then
				if string.find(string.lower(node.Name),string.lower(Properties.SearchText)) == nil then
					return
				end
			end
			x = x + 1
			if Properties.GetNodeAtIndex(x) == node then
				s = node
				return
			end
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end

		end
		for _, v in Properties.Node_List do OnNode(v) end
		return s
	end
	Properties.GetMaxIndex = function()
		local x = 0
		local n = nil
		repeat 
			x = x + 1
			n = Properties.GetNodeAtIndex(x,true)
		until n == nil
		x = x - 1
		n = Properties.GetNodeAtIndex(x,true)
		return x
	end
	Properties.GetMaxNode = function()
		local x = 0
		local n = nil
		repeat 
			x = x + 1
			n = Properties.GetNodeAtIndex(x,true)
		until n == nil
		x = x - 1
		n = Properties.GetNodeAtIndex(x,true)
		return n
	end
	Properties.GetLenght = function()
		local x = 0
		local function OnNode(node)
			if node == nil then
				return
			end
			if typeof(node) ~= "table" then
				return
			end
			x = x + 1
			if node.Expanded and node.Subnodes then
				for _, v in node.Subnodes do OnNode(v) end
			end
		end
		for _, v in Properties.Node_List do OnNode(v) end
		return x
	end
	Properties.Refresh = function(instant)
		--local instant = true
		task.spawn(function()
			Properties.ScrollY.TotalSpace = #Properties.Node_List * 4
			--Properties.ScrollY:Update()
		end)
		
		for i, f in Properties.Refresh_Callbacks do
			if Properties.ActiveNodes[i] == false then continue end
			if instant then 
				task.spawn(f)
			else 
				f() 
			end
		end
	end
	Properties.ClearNodes = function() table.clear(Properties.Connected);table.clear(Properties.Node_List);Properties.Refresh() end
	Properties.GetProperies_Sorted = function(obj)
		local currentTitle = ""
		local sortedList = {}
		local SuperClass = ""
		--print(Enviorment.API)
		for class_name, instance_data in Enviorment.API.Classes do
			
			if obj:IsA(class_name) == false then continue end
			
			for d, Property in instance_data.Properties do
				--if Property["MemberType"] ~= "Property" then continue end
				local readable,writable = Functions.GetPropertyData(obj,Property["Name"])
				if readable == false then continue end
				
				local AddToTable = true
				if Property["Tags"] ~= nil then
					for i, tag in Property["Tags"] do
						if Enviorment.Settings.Properties.ShowDeprecated == false and tag == "Deprecated" then
							AddToTable = false
						end
						if Enviorment.Settings.Properties.ShowHidden == false     and tag == "Hidden" then
							AddToTable = false
						end
					end
				end
				if AddToTable == true then
					--print("Found Property in API: " .. tostring(Property["Name"]))
					local FoundCategory = false
					for c, Category in sortedList do
						if Category.Category == Property["Category"] then
							table.insert(Category.props,Property["Name"])
							FoundCategory = true
						end
					end
					if FoundCategory == false then
						table.insert(sortedList,{Category = Property["Category"],props = {Property["Name"]}})
					end
				end
			end
		end

		return sortedList -- {Category = "CategoryName",props = {"propname1","propname2","propname3"}}
	end
	Properties.ExpandableTypes = {
		["Vector3int16"] = {"X","Y","Z","Magnitude"},
		["Vector3"] = {"X","Y","Z","Magnitude"},
		["Vector2int16"] = {"X","Y","Magnitude"},
		["Vector2"] = {"X","Y","Magnitude"},
		["CFrame"] = {"Position","XVector","YVector","ZVector"},
		["PhysicalProperties"] = {"AcousticAbsorption","Density","Friction","Elasticity","FrictionWeight","ElasticityWeight"},
		["Ray"] = {"Origin","Direction"},
		["UDim"] = {"Scale","Offset"},
		["UDim2"] = {"X","Y"},
		["Rect"] = {"Width","Height","Min","Max"},
		["SecurityCapabilities"] = {},
	}
	Properties.DefaultPropValue = {
		string = "",
		boolean = false,
		int = 0,
		UDim = UDim.new(0,0),
		UDim2 = UDim2.new(0,0,0,0),
		BrickColor = BrickColor.new("Medium stone grey"),
		Color3 = Color3.new(1,1,1),
		Vector2 = Vector2.new(0,0),
		Vector3 = Vector3.new(0,0,0),
		NumberSequence = NumberSequence.new(1),
		ColorSequence = ColorSequence.new(Color3.new(1,1,1)),
		NumberRange = NumberRange.new(0),
		Rect = Rect.new(0,0,0,0),
		Font = Font.fromEnum(Enum.Font.SourceSans),
		CFrame = CFrame.new(0,0,0),
	}

	
	for _, capability in Enum.SecurityCapability:GetEnumItems() do
		Properties.ExpandableTypes["SecurityCapabilities"][#Properties.ExpandableTypes["SecurityCapabilities"]+1] = capability.Name
	end
	Properties.AddNode = function(parent,prop,norefresh,index)
		
		local node;node = {
			Name = prop,
			Depth = parent.Depth + 1,
			Expanded = false,
			Subnodes = {},
			Category = parent.Category,
			GetValue = function() 
				if typeof(parent.GetValue()) == "SecurityCapabilities" then
					return parent.GetValue():Contains(Enum.SecurityCapability[prop])
				end
				return parent.GetValue()[prop] 
			end,
			SetValue = function(num) 
				local r = parent.GetValue();
				if typeof(parent.GetValue()) == "Vector3" then 
					return parent.SetValue(Vector3.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"],prop == "Z" and num or r["Z"]))
				end 
				if typeof(parent.GetValue()) == "Vector2" then 
					return parent.SetValue(Vector2.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end 
				if typeof(parent.GetValue()) == "Vector3int16" then 
					return parent.SetValue(Vector3int16.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"],prop == "Z" and num or r["Z"]))
				end 
				if typeof(parent.GetValue()) == "Vector2int16" then 
					return parent.SetValue(Vector2int16.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end
				if typeof(parent.GetValue()) == "Ray" then
					return parent.SetValue(Ray.new(prop == "Origin" and num or r["Origin"],prop == "Direction" and num or r["Direction"]))
				end
				if typeof(parent.GetValue()) == "Rect" then
					return parent.SetValue(Rect.new(prop == "Min" and num or r["Min"],prop == "Max" and num or r["Max"]))
				end
				if typeof(parent.GetValue())  == "UDim2" then
					return parent.SetValue(UDim2.new(prop == "X" and num or r["X"],prop == "Y" and num or r["Y"]))
				end
				if typeof(parent.GetValue()) == "UDim" then
					return parent.SetValue(UDim.new(prop == "Scale" and num or r["Scale"],prop == "Offset" and num or r["Offset"]))
				end
				if typeof(parent.GetValue()) == "PhysicalProperties" then
					local args = {}
					for _, arg in Properties.ExpandableTypes["PhysicalProperties"] do
						if arg == "AcousticAbsorption" then continue end
						args[#args+1] = prop == arg and num or r[arg]
					end
					return parent.SetValue(PhysicalProperties.new(table.unpack(args)))
				end
				if typeof(parent.GetValue()) == "CFrame" then 
					if prop == "Position" then
						return parent.SetValue(CFrame.new(num.X,num.Y,num.Z,r.XVector.X,r.XVector.Y,r.XVector.Z,r.YVector.X,r.YVector.Y,r.YVector.Z,r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "XVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,num.X,num.Y,num.Z, r.YVector.X,r.YVector.Y,r.YVector.Z,r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "YVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,r.XVector.X,r.XVector.Y,r.XVector.Z, num.X,num.Y,num.Z,  r.ZVector.X,r.ZVector.Y,r.ZVector.Z))
					end
					if prop == "ZVector" then
						return parent.SetValue(CFrame.new(r.Position.X,r.Position.Y,r.Position.Z,	r.XVector.X,r.XVector.Y,r.XVector.Z, r.YVector.X,r.YVector.Y,r.YVector.Z, num.X,num.Y,num.Z ))
					end
					return nil
				end 
				if typeof(parent.GetValue()) == "SecurityCapabilities" then
					local args = {}
					for _, enum in Enum.SecurityCapability:GetEnumItems() do
						if parent.GetValue():Contains(enum) then
							args[#args+1] = enum
						end
					end
					local argument = Enum.SecurityCapability[prop]
					if num == true and not table.find(args,argument) then
						args[#args+1] = argument
					elseif num == false then
						table.remove(args,table.find(args,argument))
					end
					return parent.SetValue(SecurityCapabilities.new(table.unpack(args)))
				end
			end,
			GetObject = function() return parent.GetObject() end,
			Writable = function() 
				if parent.Writable() == false then return false end
				local stype = typeof(parent.GetValue())
				if stype ==  "SecurityCapabilities" then
					local s : SecurityCapabilities = parent.GetValue()
					if s:Contains(Enum.SecurityCapability[prop]) then
						local writable,_ = pcall(parent.SetValue,s:Remove(Enum.SecurityCapability[prop]),true)
						if writable then
							pcall(parent.SetValue,s:Add(Enum.SecurityCapability[prop]),true)
						end
						return writable
					end
					local writable,_ = pcall(parent.SetValue,s:Add(Enum.SecurityCapability[prop]),true)
					if writable then
						pcall(parent.SetValue,s:Remove(Enum.SecurityCapability[prop]),true)
					end
					return writable
				end
				if stype == "Rect" then
					return (prop ~= "Width" and prop ~= "Height")
				end
				return (prop ~= "Magnitude" and prop ~= "AcousticAbsorption") 
			end,
		}
		--print("Adding ",node,prop, " with index ",index , " to ",parent)
		if Properties.ExpandableTypes[typeof(node.GetValue())] then
			for i,subprop in Properties.ExpandableTypes[typeof(node.GetValue())] do
				local subnode = Properties.AddNode(node,subprop,true,i)
				node.Subnodes[i] = subnode
			end
		end
		return node
	end
	Properties.AddProperty = function(data)
		local node;node = {
			Name = data.Property,
			GetValue = function()
				if node.IsAttribute then
					return data.Object:GetAttribute(data.Property)
				end
				return data.Object[data.Property]
			end,
			IsAttribute = data.IsAttribute,
			IsTag = data.IsTag,
			TagSignal = data.TagSignal,
			Category = data.IsCategory ~= true and data.Category,
			IsCategory = data.IsCategory,
			IsButton = data.IsButton,
			SetValue = function(val,NoCall)
				if node.IsAttribute then
					if NoCall then
						data.Object:SetAttribute(data.Property,val)
						return
					end
					pcall(data.Object.SetAttribute,data.Object,data.Property,val)
					return
				end
				if NoCall then
					data.Object[data.Property] = val;return
				end
				pcall(function() data.Object[data.Property] = val end)
			end,
			Writable = function()
				if node.IsAttribute then
					return table.pack(pcall(node.SetValue,node.GetValue(),true))[1]
				end
				local API_Writable = table.pack(pcall(function() node.SetValue(node.GetValue(),true) end))[1]
				local Locked = false
				return (API_Writable == true and Locked == false ) and true or false
			end,
			Expanded = false,
			Subnodes = {},
			Button = data.Button,
			GetObject = function()
				return data.Object
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
			--node.Name = nil
		end
		if data.IsButton or data.IsTag then
			node.GetValue = function() return "" end
			node.SetValue = function() return end
			node.Writable = function() return data.IsTag == true and true or false end
			node.ForceVisible = true
			node.Category = nil
		end
		
		if Properties.ExpandableTypes[typeof(node.GetValue())] then
			for i,subprop in Properties.ExpandableTypes[typeof(node.GetValue())] do
				local subnode = Properties.AddNode(node,subprop,true,i)
				node.Subnodes[i] = subnode
			end
		end
		if data.AutoAdd ~= false then
			Properties.Node_List[#Properties.Node_List+1] = node
		end
		
		if data.NoRefresh ~= true then
			Properties.Refresh()
		end
		return node
	end
	Properties.ForceRebuild = function(node)
		--Properties.AddProperty(node.GetObject(),node.Name,true,node.RowText ~= nil,node.Category,true)
		local new_node = Properties.AddProperty({
			Object = node.GetObject(),
			Property = node.Name,
			NoRefresh = true,
			IsCategory = node.RowText ~= nil,
			Category = node.Category,
			AutoAdd = false,
		})
		for index, node2 in Properties.Node_List do
			if node2 == node then
				Properties.Node_List[index] = node
				print("Replaced at ",index)
			end
		end
		Properties.Refresh()
	end
	Properties.ClearNonProperties = function()
		for index,node in Properties.Node_List do
			if node.IsAttribute or node.IsTag or (node.IsCategory == true and node.RowText == "Attributes") or (node.IsCategory == true and node.RowText == "Tags") or (node.IsButton) or node.Button ~= nil then
				Properties.Node_List[index] = nil
				task.wait()
			end
		end
	end
	Properties.SConnections = {}
	Properties.ShowObjectNonProperties = function(obj)
		Properties.DisplayedObjects = {obj}
		Properties.ClearNonProperties()
		for _, v in Properties.SConnections do
			pcall(function() v:Disconnect() end)
		end
		local add_in_order = {}
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = true,
			Property = "Tags",
			NoRefresh = true,
			AutoAdd = false,
		})
		local before_tags = obj:GetTags()
		for i, tag in before_tags do
			local n = Properties.AddProperty({
				Object = obj,
				IsCategory = false,
				Property = tag,
				Category = "Tags",
				AutoAdd = false,
				NoRefresh = true,
				IsAttribute = false,
				IsTag = true,
				TagSignal = Signal.new()
			})
			add_in_order[#add_in_order+1] = n
			Properties.SConnections[#Properties.SConnections+1] = n.TagSignal:Connect(function()
				obj:RemoveTag(tag)
				Properties.ShowObjectNonProperties(obj)
			end)
		end
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = true,
			Property = "Attributes",
			NoRefresh = true,
			AutoAdd = false,
		})
		local before = obj:GetAttributes()
		
		for attribute, value in before do
			add_in_order[#add_in_order+1] = Properties.AddProperty({
				Object = obj,
				IsCategory = false,
				Property = attribute,
				Category = "Attributes",
				AutoAdd = false,
				NoRefresh = true,
				IsAttribute = true,
			})
		end
		
		local Button = {
			Text = "Add Attribute",
			Activated = Signal.new(),
		}
		local EditorButton = {
			Text = "Add Tag",
			Activated = Signal.new(),
		}
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = Button,
			IsButton = true,
		})
		add_in_order[#add_in_order+1] = Properties.AddProperty({
			Object = obj,
			IsCategory = false,
			Property = "",
			Category = "",
			AutoAdd = false,
			NoRefresh = true,
			Button = EditorButton,
			IsButton = true,
		})
		local Button_node = add_in_order[#add_in_order+1]
		local EditorButton_node = add_in_order[#add_in_order]
		Properties.SConnections[#Properties.SConnections+1] = Button.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects)
		end)
		Properties.SConnections[#Properties.SConnections+1] = EditorButton.Activated:Connect(function()
			Properties.DisplayAddAttributeWindow(Properties.DisplayedObjects,nil,true)
		end)
		Properties.SConnections[#Properties.SConnections+1] = obj.AttributeChanged:Connect(function(attribute)
			if obj:GetAttribute(attribute) == nil then
				for i, node in Properties.Node_List do
					if node.Name == attribute and node.IsAttribute == true and node.Button == nil then
						table.remove(Properties.Node_List,i)
						Properties.Refresh()
						return
					end
				end
			end
			if before[attribute] == nil then
				local new_node = Properties.AddProperty({
					Object = obj,
					IsCategory = false,
					Property = attribute,
					Category = "Attributes",
					AutoAdd = false,
					NoRefresh = true,
					IsAttribute = true,
				})
				Properties.Node_List[#Properties.Node_List] = new_node
				for i, v in Properties.Node_List do
					if v == Button_node then
						Properties.Node_List[i] = nil
					end
					if v == EditorButton_node then
						Properties.Node_List[i] = nil
						task.wait()
					end
				end
				
				
				--Properties.Node_List[table.find(Properties.Node_List,Button_node)] = nil
				
				before = obj:GetAttributes()
				Properties.Refresh()
				task.spawn(function()
					task.wait(0.1)
					Properties.ShowObjectNonProperties(obj)
				end)
			end
		end)
		Properties.SConnections[#Properties.SConnections+1] = Enviorment.RunService.Heartbeat:Connect(function()
			local new = obj:GetTags()
			for i,v in new do
				if not table.find(before_tags,v) then
					before_tags = new
					Properties.ShowObjectNonProperties(obj)
					return
				end
			end
		end)
		for _, v in add_in_order do 
			Properties.Node_List[#Properties.Node_List+1] = v
		end
	end
	Properties.ShowObjectProperties = function(obj : Instance)
		Properties.ClearNodes()
		Properties.TagEditor.AddObjectProperties(obj)
		for _, v in Properties.Connections do
			pcall(function() v:Disconnect() end)
		end
		for _, category in Properties.GetProperies_Sorted(obj) do
			Properties.AddProperty({
				Object = obj,
				IsCategory = true,
				Property = category.Category,
				NoRefresh = true,
			})
			for _,prop in category.props do
				Properties.AddProperty({
					Object = obj,
					Property = prop,
					Category = category.Category,
					AutoAdd = true,
					NoRefresh = true,
				})
			end
		end
		
		Properties.ShowObjectNonProperties(obj)
		
		
		Properties.Refresh()
	end
	Properties.ShowExplorerProps = function(objects)
		Properties.ScrollY.Index = 0
		Properties.ScrollY:Update()
		Properties.DisplayedObjects = typeof(objects) == "table" and objects or {objects}
		if typeof(objects) == "table" then
			Properties.ShowObjectProperties(objects[1])
			return
		end
		Properties.ShowObjectProperties(objects)
	end
	Properties.RemakeNodes = function()
		--local count = math.round(Properties.NodeContent.AbsoluteSize.Y / 20)
		--if count < Properties.NodeContent.AbsoluteSize.Y / 20 then
		--	count = count + 1
		--end
		--for i=1,count do
		--	local entry = Properties.Entry_List[i]
		--	Properties.ActiveNodes[i] = true
		--	if entry == nil then
				
		--		module.MakeNode(Properties,i)
		--	end
			
			
			
			
			
		--end
		--for i, entry in Properties.Entry_List do
		--	if i > count then
		--		print("disabling ",i,count)
		--		entry.Disable()
		--	end
		--end
		for i=1,45 do
			module.MakeNode(Properties,i)
		end
	end
	
	Properties.DisplayAddAttributeWindow = function(objects,attribute,is_tag)
		local win = Properties.AddAttributeWindow
		if not win then
			win = Window.new()
			win.Alignable = false
			win.Resizable = false
			win:SetTitle("Add Attribute")
			win:SetSize(200,130)

			local saveButton = Button.new()
			local nameLabel = Label.new()
			nameLabel.Text = "Name"
			nameLabel.Position = UDim2.new(0,30,0,10)
			nameLabel.Size = UDim2.new(0,40,0,20)
			nameLabel.Parent = win.GuiElems.Content

			local nameBox = ViewportTextBox.new()
			nameBox.Position = UDim2.new(0,75,0,10)
			nameBox.Size = UDim2.new(0,120,0,20)
			nameBox.Parent = win.GuiElems.Content
			nameBox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				saveButton:SetDisabled(#nameBox:GetText() == 0)
			end)

			local typeLabel = Label.new()
			typeLabel.Text = "Type"
			typeLabel.Position = UDim2.new(0,30,0,40)
			typeLabel.Size = UDim2.new(0,40,0,20)
			typeLabel.Parent = win.GuiElems.Content

			local typeChooser = DropDown.new()
			typeChooser.CanBeEmpty = false
			typeChooser.Gui.Position = UDim2.new(0,75,0,40)
			typeChooser.Gui.Size = UDim2.new(0,120,0,20)
			typeChooser:SetOptions(Properties.AllowedAttributeTypes)
			typeChooser.Gui.Parent = win.GuiElems.Content

			local errorLabel = Label.new()
			errorLabel.Text = ""
			errorLabel.Position = UDim2.new(0,5,1,-45)
			errorLabel.Size = UDim2.new(1,-10,0,20)
			errorLabel.TextColor3 = Enviorment.Settings.Theme.Important
			win.ErrorLabel = errorLabel
			errorLabel.Parent = win.GuiElems.Content

			local cancelButton = Button.new()
			cancelButton.Gui.Text = "Cancel"
			cancelButton.Gui.Position = UDim2.new(1,-97,1,-25)
			cancelButton.Gui.Size = UDim2.new(0,92,0,20)
			cancelButton.OnClick:Connect(function()
				win:Close()
			end)
			cancelButton.Gui.Parent = win.GuiElems.Content

			saveButton.Gui.Text = "Save"
			saveButton.Gui.Position = UDim2.new(0,5,1,-25)
			saveButton.Gui.Size = UDim2.new(0,92,0,20)
			saveButton.OnClick:Connect(function()
				local name = nameBox:GetText()
				if is_tag then
					for _,obj in objects do
						pcall(obj.AddTag,obj,name)
					end
				else
					if #name > 100 then
						errorLabel.Text = "Error: Name over 100 chars"
						return
					elseif name:sub(1,3) == "RBX" and not Enviorment.IsElevated() then
						errorLabel.Text = "Error: Name begins with 'RBX'"
						return
					end

					local typ = typeChooser.Selected
					if attribute then
						for _, obj in objects do
							local _,val = pcall(obj.GetAttribute,obj,attribute)
							pcall(obj.SetAttribute,obj,attribute,nil)
							pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,val)
						end
					else
						for _, obj in objects do
							pcall(obj.SetAttribute,obj,nameBox.TextBox.Text,Properties.DefaultPropValue[typ])
						end
					end
				end
				
				win:Close()
			end)
			saveButton.Gui.Parent = win.GuiElems.Content
			win.Elements.NameBox = nameBox
			win.Elements.Error = errorLabel
			win.Elements.SaveButton = saveButton
			win.Elements.TypeChooser = typeChooser
			Properties.AddAttributeWindow = win
		end

		if is_tag then win:SetTitle("Add Tag") else win:SetTitle(attribute ~= nil and "Edit Attribute " .. attribute or "Add Attribute") end
		win.Elements.Error.Text = ""
		win.Elements.NameBox:SetText("")
		win.Elements.SaveButton:SetDisabled(true)
		win.Elements.TypeChooser:SetSelected(1)
		win:Show()
	end
	
	Properties.Window = Window.new()
	Properties.Window:SetTitle("Properties")
	Properties.NodeContent = Properties.Window.GuiElems.Content:Clone()
	Properties.NodeContent.BackgroundTransparency = 1
	Properties.NodeContent.Parent = Properties.Window.GuiElems.Content
	Properties.NodeContent.Size = UDim2.new(1,-16,1,-23)
	Properties.NodeContent.Position = UDim2.new(0,0,0,23)
	
	Properties.ColorPicker = ColorPicker.new()
	Properties.ColorSequenceEditor = ColorSequenceEditor.new()
	
	Properties.ScrollY = ScrollBar.new()
	Properties.ScrollY.Gui.Parent = Properties.Window.GuiElems.Content
	Properties.ScrollY.Gui.Position = UDim2.new(1,-16,0,20)
	Properties.ScrollY.Gui.Size = UDim2.new(0,16,1,-20)
	Properties.ScrollY.Increment = 1
	Properties.ScrollY:SetScrollFrame(Properties.Window.GuiElems.Content)
	--Instance.new("UIListLayout",Properties.NodeContent)
	Properties.ArrowContext = ContextMenu.new()
	Properties.ArrowContext.SearchEnabled = false
	Properties.ArrowContext.Iconless = true
	
	Properties.AttributeContext = ContextMenu.new()
	Properties.AttributeContext.SearchEnabled = false
	Properties.AttributeContext.Iconless = true
	Properties.AttributeContext.Clear(Properties.AttributeContext)
	
	
	local propertiesItems = create({
		{ 1, "Folder", { Name = "PropertiesItems" } },
		{
			2,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.Main1,
				BorderSizePixel = 0,
				Name = "ToolBar",
				Parent = { 1 },
				Size = UDim2.new(1, 0, 0, 22),
			},
		},
		{
			3,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.TextBox,
				BorderColor3 = Color3.new(0.1176470592618, 0.1176470592618, 0.1176470592618),
				BorderSizePixel = 0,
				Name = "SearchFrame",
				Parent = { 2 },
				Position = UDim2.new(0, 3, 0, 1),
				Size = UDim2.new(1, -6, 0, 18),
			},
		},
		{
			4,
			"TextBox",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				Font = 3,
				Name = "SearchBox",
				Parent = { 3 },
				PlaceholderColor3 = Color3.new(0.39215689897537, 0.39215689897537, 0.39215689897537),
				PlaceholderText = "Search Properties",
				Position = UDim2.new(0, 4, 0, 0),
				Size = UDim2.new(1, -24, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				TextXAlignment = 0,
			},
		},
		{ 5, "UICorner", { CornerRadius = UDim.new(0, 2), Parent = { 3 } } },
		{
			6,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Enviorment.Settings.Theme.Menu,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Reset",
				Parent = { 3 },
				Position = UDim2.new(1, -17, 0, 1),
				Size = UDim2.new(0, 16, 0, 16),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
			},
		},
		{
			7,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5034718129",
				ImageColor3 = Color3.new(0.39215686917305, 0.39215686917305, 0.39215686917305),
				Parent = { 6 },
				Size = UDim2.new(0, 16, 0, 16),
			},
		},
		{
			8,
			"TextButton",
			{
				AutoButtonColor = false,
				BackgroundColor3 = Enviorment.Settings.Theme.Menu,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = 3,
				Name = "Refresh",
				Parent = { 2 },
				Position = UDim2.new(1, -20, 0, 1),
				Size = UDim2.new(0, 18, 0, 18),
				Text = "",
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 14,
				Visible = false,
			},
		},
		{
			9,
			"ImageLabel",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Image = "rbxassetid://5642310344",
				Parent = { 8 },
				Position = UDim2.new(0, 3, 0, 3),
				Size = UDim2.new(0, 12, 0, 12),
			},
		},
		{
			10,
			"Frame",
			{
				BackgroundColor3 = Enviorment.Settings.Theme.ButtonPress,
				BorderSizePixel = 0,
				Name = "ScrollCorner",
				Parent = { 1 },
				Position = UDim2.new(1, -16, 1, -16),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = false,
			},
		},
		{
			11,
			"Frame",
			{
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Name = "List",
				Parent = { 1 },
				Position = UDim2.new(0, 0, 0, 23),
				Size = UDim2.new(1, 0, 1, -23),
			},
		},
	})
	
	local toolBar = propertiesItems.ToolBar
	local treeFrame = propertiesItems.List
	local SearchBox : TextBox = toolBar.SearchFrame.SearchBox
	--Explorer.GuiElems.ToolBar = toolBar
	--Explorer.GuiElems.TreeFrame = treeFrame
	toolBar.Parent = Properties.Window.GuiElems.Content
	treeFrame.Parent = Properties.Window.GuiElems.Content
	
	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		local n = SearchBox.Text
		Properties.SearchText = n
		Properties.Refresh(true)
	end)
	
	Properties.InputBox = create({
		{1,"Frame",{BackgroundColor3=Enviorment.Settings.Theme.TextBox,
			BorderSizePixel=0
			,Name="InputBox",
			Size=UDim2.new(0,200,0,22),
			Visible=false,
			ZIndex=2,}},
		{2,"TextBox",{
			BackgroundColor3=Enviorment.Settings.Theme.Main2,
			BackgroundTransparency=1,
			BorderColor3=Color3.new(0.062745101749897,0.51764708757401,1),
			BorderSizePixel=0,ClearTextOnFocus=false,
			Font=3,
			Parent={1},
			PlaceholderColor3=Color3.new(0.69803923368454,0.69803923368454,0.69803923368454),
			Position=UDim2.new(0,3,0,0),
			Size=UDim2.new(1,-6,1,0),
			Text="",
			TextColor3=Color3.new(1,1,1),
			TextSize=14,
			TextXAlignment=0,
			ZIndex=2,}},
	})
	
	Properties.InputTextBox = Properties.InputBox.TextBox
	Properties.InputBox.BackgroundColor3 = Enviorment.Settings.Theme.TextBox
	Properties.InputBox.Parent = Properties.Window.GuiElems.Content
	Properties.InputTextBox.FocusLost:Connect(function()
		if Properties.TextBoxNode == nil then return end
		Properties.TextBoxNode.SetValue(Properties.StringToValue(Properties.InputTextBox.Text,typeof(Properties.TextBoxNode.GetValue())))
		Properties.InputBox.Visible = false
		Properties.Refresh()
		Properties.TextBoxNode = nil
		for i, v in Properties.MakeVisibleContent do
			if v == nil then
				table.remove(Properties.MakeVisibleContent,i)
				continue
			end
			v.Visible = true
			table.remove(Properties.MakeVisibleContent,i)
		end
	end)

	Properties.InputTextBox.Focused:Connect(function()
		Properties.InputTextBox.SelectionStart = 1
		Properties.InputTextBox.CursorPosition = #Properties.InputTextBox.Text + 1
	end)

	ViewportTextBox.convert(Properties.InputTextBox)
	
	Properties.RemakeNodes()
	task.spawn(function()
		Properties.ShowObjectProperties(workspace)
	end)
	local OldYOffset = 0
	local OldYSize = Properties.Window.GuiElems.Content.AbsoluteSize.Y
	task.spawn(function()
		while task.wait() do
			if Properties.Window.GuiElems.Content.AbsoluteSize.Y - OldYSize ~= 0  then
				--Properties.RemakeNodes()
				OldYSize = Properties.Window.GuiElems.Content.AbsoluteSize.Y
			end
			if Properties.ScrollY.Index ~= OldYOffset then
				OldYOffset = Properties.ScrollY.Index
				Properties.YOffset = OldYOffset
				Properties.ScrollY.TotalSpace = Properties.GetLenght()
				Properties.InputTextBox:ReleaseFocus()
				Properties.Refresh(true)
			end
			Properties.ScrollY.VisibleSpace = math.round(Properties.Window.GuiElems.Content.AbsoluteSize.Y / 20) - 10
			
			local index = 0
			for _, new in Properties.NodeContent:GetChildren() do
				if new.Visible == false then
					continue
				end
				index = index + 1
				new.Position = UDim2.new(0,0,0,(index - 2) * new.Size.Y.Offset)
			end
		end
	end)
	task.spawn(function()
		while task.wait(1) do Properties.Refresh() end
	end)
	Enviorment.AppSignal:Connect(function(app,inst)
		if app ~= script.Name then return end
		if inst == nil then return end
		Properties.ShowExplorerProps(inst)
	end)
	return Properties
end
module.NewTagEditor = function(Properties)
	local sub_module = {}
	sub_module.YOffset = 0
	sub_module.Node_List = {}
	sub_module.Window = Window.new()
	sub_module.Window.SetTitle(sub_module.Window,"Tag Editor")
	sub_module.Window.Resizable = false
	
	sub_module.UpdateFunctions = {}
	sub_module.GetAtIndex = function(index,nooffset) local final = nooffset == true and index or index + sub_module.YOffset ;return sub_module.Node_List[final] end
	sub_module.MakeNode = function(i)
		local new = module.NewEntryTemplate()
		local delete_button = Enviorment.CloseButton()
		delete_button.Parent = new.ValueFrame
		delete_button.Position = UDim2.new(1,-delete_button.AbsoluteSize.X,0,delete_button.Position.Y.Offset)
		delete_button.Name = "Delete"
		local function f1(ex)
			for _, v in new.ValueFrame:GetChildren() do
				if table.find({"SettingsButton","RightButton","Line","Delete"},v.Name) then continue end
				if v == Properties.InputBox then continue end
				if ex == nil then v.Visible = false end
				if typeof(ex) == "table" then
					if table.find(ex,v) then
						v.Visible = true
					else
						v.Visible = false
					end
					continue
				end
				if v ~= ex then v.Visible = false;continue end


				v.Visible = true
			end
		end
		f1(nil)
		new.ValueFrame.Visible = true
		local connections = {}
		sub_module[#sub_module+1] = function()
			for _,v in connections do
				pcall(function()
					connections:Disconnect()
				end)
			end
			local node = sub_module.GetAtIndex(i)
			if node == nil then
				new.Visible = false
				return
			end
			new.NameFrame.Expand.Visible = false
			new.NameFrame.PropName.Text = node.Name;
			connections[#connections+1] = delete_button.Activated:Connect(function()
				node.Object:RemoveTag(node.Name)
			end)
		end
		new.Parent = sub_module.Window.GuiElems.Content
		new.Position = UDim2.new(0,0,0,20 * (i-1))
		
	end
	sub_module.Clear = function() sub_module.Node_List = {} end
	sub_module.Refresh = function(instant) 
		for _, v in sub_module.UpdateFunctions do 
			if instant then 
				task.spawn(v)
			else 
				v()
			end 
		end 
	end
	sub_module.AddProperty = function(data)
		local new = {
			Object = data.Object,
			Name = data.Name,
		}
		if data.AutomaticAdd ~= false then
			sub_module.Node_List[#sub_module.Node_List+1] = new
		end
		sub_module.Refresh()
	end
	sub_module.RemakeEntries = function()
		for i=1,15 do sub_module.MakeNode(i) end
	end
	sub_module.AddObjectProperties = function(object : Instance)
		sub_module.Clear()
		for _, tag in object:GetTags() do
			sub_module.AddProperty({Object = object,Name = tag,Tag = tag})
		end
		sub_module.Clear()
	end
	sub_module.RemakeEntries()
	return sub_module
end
module.Init = module.New
return module
