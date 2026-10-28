local module = {}
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Frame = require(script.Parent.Parent.UI.Base.Frame)
local Enviornment = require(script.Parent.Parent.Modules.Environment)()
local Button = require(script.Parent.Parent.UI.Base.Button)
local ArgumentPrompt = require(script.Parent.Parent.UI.Normal.ArgumentPrompt).new(1)
local FunctionResult = require(script.Parent.Parent.UI.Normal.FunctionResult).new()
local Functions = require(script.Parent.Parent.Modules.Functions)
local Label = require(script.Parent.Parent.UI.Base.Label)
local SmallCodeFrame = require(script.Parent.Parent.UI.Base.SmallCodeBox)
local debug = debug

if Enviornment.IsStudio then
	sdebug = {info = debug.info,
		getupvalues = debug.getupvalues or function() return {"j",10,workspace} end,
		getconstants = debug.getconstants or function() 
			return {10,"f"} 
		end}
end
module.New = function()
	local Interface;Interface = {
		Window = Window.new(),
		Explorer = nil,
		Frames = {
			Function = {

			},
			Userdata = {

			},
			Table = {

			},
		},
		Properties = {
			Function = {
				"Source:",
				"Line:",
				"Name:",
				"Parameter Count:",
				"Is Vararg:",
				"Upvalues:",
				"Constants:",
				--"Fenv:",
			},
			Userdata = {
				
			},
			Table = {

			},
		}
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
	local function AddValue(func)
		
		local node = {
			Instance = nil,
			Expanded = false,
			Renaming = false,
			CanExpand = false,
			Subnodes = {},
			Info = {},
			Func = func,
			Highlighted = false,
			Selected = false,
			Value = func,
			Depth = 0,
			IndentInc = 0,
		}
		if typeof(func) == "function" then
			local name = debug.info(func,"n")
			local params,is_vararg = debug.info(func,"a")
			if name == "" or name == nil then name = tostring(func) end 
			local icon,offset,size = Functions.GetIcon("BindableFunction")
			node.Icon = icon
			node.IconOffset = offset
			node.IconSize = size	
			node.Text = name
			node.Type = "Function"
			local fenv = {}
			for i, v in getfenv(func) do
				fenv[i] = v
			end
			node.Info = {
				Source = debug.info(func,"s"),
				Line = debug.info(func,"l"),
				Name = name,
				["Parameter Count"] = params,
				["Is Vararg"] = is_vararg,
				["Upvalues"] = sdebug.getupvalues(func),
				["Constants"] = sdebug.getconstants(func),
				["Fenv"] = fenv,
			}
		end
		Interface.Explorer.Nodes[#Interface.Explorer.Nodes+1] = node
		Interface.Explorer.Refresh()
	end
	
	local frames = Interface.Frames
	local props = Interface.Properties
	local i = 0
	for groupname,group in props do
		
		for _, prop in group do
			i += 1
			local new = SmallCodeFrame.new()
			frames[groupname][#frames[groupname]+1] = new
			local info_label = Label.new({Text = prop,TextXAlignment = Enum.TextXAlignment.Left,Parent = Info_Container.Gui})
			info_label.Position = UDim2.new(0,5,0,info_label.Size.Y.Offset * (i - 1) + 5)
			new.GuiElems.TextBox.Gui.Parent = Info_Container.Gui
			new.GuiElems.TextBox.Gui.Position = UDim2.new(0,100,0,
				new.GuiElems.TextBox.Gui.Size.Y.Offset * (i - 1) + 5) --Enviornment.GetTextSize(order[i]).X + 5
			new.GuiElems.TextBox.Gui.Size = UDim2.new(1,-110,new.GuiElems.TextBox.Gui.Size.Y.Scale,new.GuiElems.TextBox.Gui.Size.Y.Offset) --(Enviornment.GetTextSize(order[i]).X + 10)
			new.SetEditable(new,false)
		end
	end
	Interface.AddButton = function(text,callback)
		local btn = Button.new()
		btn.Gui.Parent = Control_Container.Gui
		btn.OnClick.Connect(btn.OnClick,callback)
		btn.Gui.Text = text
	end
	
	Interface.ClearInfo = function()
		for _, group in frames do
			for _, frm in group do
				frm:SetText("nil")
			end
		end
	end
	Interface.Refresh = function()
		local sel_node = Interface.Explorer.NodeSelection[1]
		Interface.ClearInfo()
		if sel_node == nil then
			return
		end
		if sel_node.Info == nil then
			return
		end
		local i = 0;
		for _,frm in frames[sel_node.Type] do
			i += 1
			local info = sel_node.Info[string.sub(props[sel_node.Type][i],1,#props[sel_node.Type][i]-1)]

			local str = Functions.Value_To_Luau(info)
			frm:SetText(str)

		end
	end
	Interface.Window:SetSize(400,300)
	Interface.Window.MinX = 400
	Interface.Window.MinY = 300
	Interface.Explorer.NodeSelectionChanged:Connect(function()
		--print("nodes")
		task.wait(0.1)
		Interface.ClearInfo()
		Interface.Refresh()
	end)
	Interface.AddButton("Change Upvalues",function()
		if Interface.Explorer.NodeSelection[1] == nil then
			return
		end
		if Interface.Explorer.NodeSelection[1].Type ~= "Function" then
			return
		end
		local Conn = ArgumentPrompt.Interaction:Once(function(v,new)
			if v == false then
				return
			end
			if typeof(new) ~= "table" then
				FunctionResult:DisplayAndShow({Success = false, Result = "Invalid upvalues (table expected)"})
				return
			end
			--print("New Upvalues",new)
			local old = Interface.Explorer.NodeSelection[1].Info["Upvalues"]
			if #new ~= #old then
				FunctionResult:DisplayAndShow({Success = false, Result = "Invalid upvalues (length must match)"})
			else
				for i, v in new do
					Enviornment.Functions.sdebug.setupvalue(Interface.Explorer.NodeSelection[1].Func,i,v)
				end
				Interface.Explorer.NodeSelection[1].Info["Upvalues"] = new
				Interface.Refresh()
			end
		end)
		ArgumentPrompt.Show(ArgumentPrompt,{Functions.Value_To_Luau(Interface.Explorer.NodeSelection[1].Info["Upvalues"])})
	end)
	Interface.AddButton("Change Constants",function()
		if Interface.Explorer.NodeSelection[1] == nil then
			return
		end
		if Interface.Explorer.NodeSelection[1].Type ~= "Function" then
			return
		end
		local Conn = ArgumentPrompt.Interaction:Once(function(v,new)
			if v == false then
				return
			end
			if typeof(new) ~= "table" then
				FunctionResult:DisplayAndShow({Success = false, Result = "Invalid constants (table expected)"})
				return
			end
			--print("New Upvalues",new)
			local old = Interface.Explorer.NodeSelection[1].Info["Constants"]
			if #new ~= #old then
				FunctionResult:DisplayAndShow({Success = false, Result = "Invalid constants (length must match)"})
			else
				for i, v in new do
					Enviornment.Functions.sdebug.setconstant(Interface.Explorer.NodeSelection[1].Func,i,v)
				end
				Interface.Explorer.NodeSelection[1].Info["Constants"] = new
				Interface.Refresh()

			end
		end)
		ArgumentPrompt.Show(ArgumentPrompt,{Functions.Value_To_Luau(Interface.Explorer.NodeSelection[1].Info["Constants"])})
	end)
	local function named(...)
		return 10
	end
	AddValue(function() end)
	AddValue(function() return 10 end)
	AddValue(function(a) end)
	AddValue(function(b) return 10 end)
	AddValue(named)
	
	return Interface
end
module.Init = module.New
return module
