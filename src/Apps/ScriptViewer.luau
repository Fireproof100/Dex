local Enviorment = require(script.Parent.Parent.Modules.Enviorment)()
local SSI = require(script.Parent.Parent.UI.Normal.SSI)
local SaveInstanceWindow = SSI.new()
local module = {}

module.CloseButton = Enviorment.CloseButton
module.NewTab = function()
	local new;
	local elems = {}
	elems["Frame"] = Instance.new("Frame")
	elems["Frame"].Size = UDim2.new(0,56,0,18)
	elems["Frame"].BackgroundColor3 = Enviorment.Settings.Theme.Outline1
	elems["Frame"].BorderSizePixel = 0
	elems["TextButton"] = Instance.new("TextButton")
	elems["TextButton"].BackgroundTransparency = 1
	elems["TextButton"].Position = UDim2.new(0, 0, 0, 0)
	elems["TextButton"].Size = UDim2.new(1,-16, 1,0)
	elems["TextButton"].TextColor3 = Enviorment.Settings.Theme.Text
	elems["TextButton"].Parent = elems["Frame"]
	elems["TextButton"].FontFace = Font.fromName("SourceSansPro")
	elems["TextButton"].TextSize = 14
	elems["TextButton"].TextXAlignment = Enum.TextXAlignment.Left
	elems["CloseButton"] = module.CloseButton()
	elems["CloseButton"].Parent = elems["Frame"]
	elems["CloseButton"].AnchorPoint = Vector2.new(0,0.5)
	elems["CloseButton"].Position = UDim2.new(1,-18,0.5,0)
	elems["CloseButton"].MouseEnter:Connect(function()
		elems["CloseButton"].BackgroundTransparency = 0
	end)
	elems["CloseButton"].MouseLeave:Connect(function()
		elems["CloseButton"].BackgroundTransparency = 1
	end)
	local function Update()
		elems["TextButton"].Text = new.Text
		elems["Frame"].Size = UDim2.new(0,Enviorment.GetTextSize(new.Text).X + 30,0,18)
	end
	new = setmetatable({
		Text = "",
		GuiElems = elems,
		Gui = elems["Frame"],
		Update = Update,
	},{__newindex = function(s,k,v)
		rawset(s,k,v)
		print("changed __newindex",s,k,v)
		Update()
		return nil
	end,})
	Update()
	return new
end



module.NewScriptViewer = function()
	local window, currentFrame
	local Tabs, Scripts = {}, {}
	local new = {}
	local window = require(script.Parent.Parent.UI.Normal.Window).new()
	window:SetTitle("Script Viewer")
	window:Resize(500, 400)
	new.Window = window
	new.Frame = require(script.Parent.Parent.UI.Normal.CodeFrame).new()
	new.Frame.Frame.Position = UDim2.new(0, 0, 0, 20)
	new.Frame.Frame.Size = UDim2.new(1, 0, 1, -40)
	new.Frame.Frame.Parent = window.GuiElems.Content
	new.Frame.Gui.Visible = true
	--ScriptViewer.Window = window
	local copyButton = Instance.new("TextButton", window.GuiElems.Content)
	copyButton.BackgroundTransparency = 1
	copyButton.Position = UDim2.new(0.0, 0, 1, -20)
	copyButton.Size = UDim2.new(0.5, 0, 0, 20)
	copyButton.Text = "Copy To Clipboard"
	copyButton.TextColor3 = Color3.new(1, 1, 1)
	copyButton.BorderSizePixel = 0
	copyButton.BackgroundTransparency = 1
	copyButton.MouseButton1Click:Connect(function()
		for _, tab in Tabs do
			if tab.Selected ~= true then continue end	
		
			pcall(Enviorment.Functions.setclipboard, tab.Source)
			return
		end
	end)

	local saveButton = Instance.new("TextButton", window.GuiElems.Content)
	saveButton.BackgroundTransparency = 1
	saveButton.Size = UDim2.new(0.5, 0, 0, 20)
	saveButton.Position = UDim2.new(0.5, 0, 1, -20)
	saveButton.Text = "Save To File"
	saveButton.TextColor3 = Color3.new(1, 1, 1)
	saveButton.MouseButton1Click:Connect(function()
		-- TODO use SSI
		--pcall(Enviorment.Functions.writefile, "Place_" .. game.PlaceId .. "_Script_" .. os.time() .. ".lua", currentFrame:GetText())
		SaveInstanceWindow:Show()
	end)
	SaveInstanceWindow.OnSave:Connect(function(path)
		for _, tab in Tabs do
			if tab.Selected ~= true then continue end
			Enviorment.Functions.writefile(path,tab.Source)
			return
		end
		
	end)
	local selectionLine = Instance.new("Frame")
	selectionLine.Size = UDim2.new(0,10,0,1)
	selectionLine.BackgroundColor3 = Color3.new(1, 1, 1)
	selectionLine.BorderSizePixel = 0
	selectionLine.Position = UDim2.new(0,0,0,18)
	selectionLine.Name = "SLine"
	selectionLine.Parent = new.Window.GuiElems.Content
	selectionLine.ZIndex = 2
	local function addNewTab(Script: LocalScript | ModuleScript)
		local newTab = module.NewTab()
		
		newTab.Text = Script.Name
		newTab.Gui.Parent = window.GuiElems.Content
		local old = newTab.Update
		local first = true
		local idx = #Tabs+1
		local Hook = function()
			old()
			local xoffset = 3
			for i, tab in Tabs do
				if tab == nil then continue end
				if tab.Gui == nil then continue end
				if tab.Gui.Parent == nil then continue end
				local idx = table.find(Tabs,newTab) or idx
				if i >= idx then continue end
				print("b offset",xoffset)
				xoffset = xoffset + tab.Gui.Size.X.Offset + 3
				print("new offset",xoffset)
			end
			if true then
				first = false
				newTab.Gui.Position = UDim2.new(0,xoffset,0,1)
			--else
				--Enviorment.TweenS:Create(new.Gui,TweenInfo.new(0.25),{Position = UDim2.new(0,xoffset,0,1)}):Play()
			end
			
		end
		for _, tab in Tabs do
			tab.Selected = false
		end
		newTab.Script = Script
		newTab.Modifiable = false
		newTab.Selected = true
		newTab.Source = Enviorment.Functions.decompile(Script)
		newTab.Update = Hook
		newTab.Hook = Hook
		Hook()
		new.Frame:SetText(newTab.Source)
		
		local x = newTab.Gui.Position.X.Offset + newTab.Gui.Size.X.Offset
		print(x,new.Window.GuiElems.Content.AbsoluteSize.X)
		if x > new.Window.GuiElems.Content.AbsoluteSize.X then
			
			idx = #Tabs
			if Tabs[idx] then
				Tabs[idx].Gui:Destroy()
			end
			Hook()
		end
		
		Tabs[idx] = newTab
		newTab.Gui.Close.Activated:Connect(function()
			table.remove(Tabs,idx)
			newTab.Gui:Destroy()
			newTab.Gui = nil
			newTab = nil
			for _, v in Tabs do
				if v.Gui == nil then
					continue
				end
				v.Update()
				v.Hook()
			end
			if Tabs[idx] then
				Tabs[idx].Selected = true
			end
			
		end)
		newTab.GuiElems.TextButton.Activated:Connect(function()
			for _, tab in Tabs do
				tab.Selected = false
			end
			newTab.Selected = true
		end)
		
		
		
	end
	new.ViewScript = function(Script: LocalScript | ModuleScript)
		task.spawn(function() window:Show() end)
		local f = nil
		for _, tab in Tabs do
			if tab.Script == Script then f = tab end
		end
		if not f then
			addNewTab(Script)
		else
			for _, Tab in Tabs do Tab.Selected = false end
			f.Selected = true
		end
	end
	task.spawn(function()
		while task.wait() do
			local no_more = false
			for idx,Tab in Tabs do
				if no_more then continue end
				if Tab.Gui == nil then
					local no_more = true
					continue
				end
				if Tab.Selected == true then
					Enviorment.TweenS:Create(selectionLine,TweenInfo.new(0.25,Enum.EasingStyle.Linear),{Position = UDim2.new(0,Tab.Gui.Position.X.Offset,0,18)}):Play()
					selectionLine.Size = UDim2.new(0,Tab.Gui.Size.X.Offset,0,1)
				end
				if Tab.Selected == true and new.Frame:GetText() ~= Tab.Source then
					if Tab.Modifiable == false then
						new.Frame:SetText(Tab.Source)
					else
						Tab.Source = new.Frame:GetText()
					end
				end
			end
		end
	end)
	return new
end
module.Init = function()
	local new = module.NewScriptViewer()
	Enviorment.AppSignal:Connect(function(app,...)
		if app ~= script.Name then
			return
		end
		new.ViewScript(...)
	end)
	return new
end
return module
