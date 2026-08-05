
local module = {}
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Frame = require(script.Parent.Parent.UI.Base.Frame)
local Enviornment = require(script.Parent.Parent.Modules.Enviorment)()
local Button = require(script.Parent.Parent.UI.Base.Button)
local ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new(1)
local Functions = require(script.Parent.Parent.Modules.Functions)
local Label = require(script.Parent.Parent.UI.Base.Label)
local SmallCodeFrame = require(script.Parent.Parent.UI.Base.SmallCodeBox)
local debug = {info = debug.info,
	getupvalues = debug.getupvalues or function() return {"j",10,workspace} end,
	getconstants = debug.getconstants or function() 
		return {10,"f"} 
	end}
module.New = function()
	local Interface;Interface = {
		Window = Window.new(),
		Explorer = nil
	}
	local Explorer_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Explorer_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Explorer_Container.Position = UDim2.new(0,5,0,5)
	Explorer_Container.Size = UDim2.new(0,200,1,-10)
	Interface.Explorer = require(script.Parent.Explorer).NewExplorer(true,Explorer_Container.Gui)
	Interface.Window:SetTitle("Function Interface")
	local Info_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Info_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Info_Container.Position = UDim2.new(0,Explorer_Container.Size.X.Offset+10,0,5) -- 0,5
	Info_Container.Size = UDim2.new(1,-(Explorer_Container.Size.X.Offset+15),0.6,-10) -- 1,-10
	local Control_Container : Frame = Frame.new(Interface.Window.GuiElems.Content)
	Control_Container.BackgroundColor3 = Enviornment.Settings.Theme.Main3
	Control_Container.Position = UDim2.new(0,Explorer_Container.Size.X.Offset+10,0.6,0)
	Control_Container.Size = UDim2.new(1,-(Explorer_Container.Size.X.Offset+15),0.4,-5) -- 1,-10
	Instance.new("UIGridLayout",Control_Container.Gui).CellSize = UDim2.new(1,0,0,18)
	
	Interface.Explorer.SearchBox.PlaceholderText = "Filter Registry"
	Interface.Explorer.NodeContainer.ClipsDescendants = true
	Interface.Explorer.FilterInfo = {}
	Interface.Explorer.AllowMultiSelection = false
	Interface.Explorer.RefreshFilters()
	local function AddFunction(func)
		local name = debug.info(func,"n")
		local params,is_vararg = debug.info(func,"a")
		if name == "" or name == nil then name = tostring(func) end 
		local node = {
			Instance = nil,
			Expanded = false,
			Renaming = false,
			CanExpand = false,
			Subnodes = {},
			Info = {Source = debug.info(func,"s"),
				Line = debug.info(func,"l"),
				Name = name,
				["Parameter Count"] = params,
				["Is Vararg"] = is_vararg,
				["Upvalues"] = debug.getupvalues(func),
				["Constants"] = debug.getconstants(func),
			},
			Highlighted = false,
			Selected = false,
			Icon = Functions.GetIcon("BindableFunction"),
			Text = name,
			Depth = 0,
			IndentInc = 0,
		}
		Interface.Explorer.Nodes[#Interface.Explorer.Nodes+1] = node
	end
	
	local frames = {}
	local order = {"Source:","Line:","Name:","Parameter Count:","Is Vararg:","Upvalues:","Constants:"}
	local count = #order
	for i=1,count do
		local new = SmallCodeFrame.new()
		frames[i] = new
		local info_label = Label.new({Text = order[i],TextXAlignment = Enum.TextXAlignment.Left,Parent = Info_Container.Gui})
		info_label.Position = UDim2.new(0,5,0,info_label.Size.Y.Offset * (i - 1) + 5)
		new.GuiElems.TextBox.Gui.Parent = Info_Container.Gui
		new.GuiElems.TextBox.Gui.Position = UDim2.new(0,100,0,new.GuiElems.TextBox.Gui.Size.Y.Offset * (i - 1) + 5) --Enviornment.GetTextSize(order[i]).X + 5
		new.GuiElems.TextBox.Gui.Size = UDim2.new(1,-110,new.GuiElems.TextBox.Gui.Size.Y.Scale,new.GuiElems.TextBox.Gui.Size.Y.Offset) --(Enviornment.GetTextSize(order[i]).X + 10)
		new.SetEditable(new,false)
	end
	Interface.AddButton = function(text,callback)
		local btn = Button.new()
		btn.Gui.Parent = Control_Container.Gui
		btn.OnClick.Connect(btn.OnClick,callback)
		btn.Gui.Text = text
	end
	
	Interface.ClearInfo = function()
		for _, frm in frames do
			frm:SetText("nil")
		end
	end
	
	Interface.Window:SetSize(400,300)
	Interface.Window.MinX = 400
	Interface.Window.MinY = 300
	Interface.Explorer.NodeSelectionChanged:Connect(function()
		local sel_node = Interface.Explorer.NodeSelection[1]
		Interface.ClearInfo()
		if sel_node == nil then
			return
		end
		if sel_node.Info == nil then
			return
		end
		for i=1,count do
			local info = sel_node.Info[string.sub(order[i],1,#order[i]-1)]
			local frm = frames[i]
			local str = Functions.Value_To_Luau(info)
			frm:SetText(str)
		end
	end)
	Interface.AddButton("Change Upvalues",function() 
		local Conn = ArgumentPrompt.Interaction:Once(function(v,new)
			if v == false then
				return
			end
			print("New Upvalues",new)
		end)
		ArgumentPrompt.Show(ArgumentPrompt)
	end)
	AddFunction(function() end)
	AddFunction(function() return 10 end)
	AddFunction(function(a) end)
	AddFunction(function(b) return 10 end)
	
	return Interface
end
module.Init = module.New
return module
