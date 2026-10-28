local module = {}
local Window = require(script.Parent.Parent.UI.Normal.Window)
local Button = require(script.Parent.Parent.UI.Base.Button)
local Environment = require(script.Parent.Parent.Modules.Environment)()
local Functions = require(script.Parent.Parent.Modules.Functions)
local Signal = require(script.Parent.Parent.Modules.Signal)
local Highlighter = require(script.Parent.Parent.Modules.Highlighter)
local ScrollBar = require(script.Parent.Parent.UI.Normal.ScrollBar)
local Explorer = require(script.Parent.Explorer)
local Frame = require(script.Parent.Parent.UI.Base.Frame)


local function areArgsEqual(a, b)
	if a == b then return true end
	if type(a) ~= "table" or type(b) ~= "table" then return false end
	if #a ~= #b then return false end

	for k, v in pairs(a) do
		local bv = b[k]
		if type(v) == "table" and type(bv) == "table" then
			if not areArgsEqual(v, bv) then return false end
		elseif v ~= bv then
			return false
		end
	end
	for k in pairs(b) do
		if a[k] == nil then return false end
	end
	return true
end
local function getcallingsource()
	for i = 3, 10 do
		local s = debug.info(i, "s")
		if not s then
			break
		end

		if s == "[C]" then
			continue
		end

		return s
	end
	return debug.info(3, "s")
end
local function getcallingfunction()
	for i = 3, 10 do
		local f, s = debug.info(i, "fs")
		if f == nil then
			continue
		end
		if s == nil then
			continue
		end
		if s == "[C]" then
			continue
		end

		return f
	end
	return debug.info(3, "f")
end
local function getcallingline()
	for i = 3, 10 do
		local s, l = debug.info(i, "sl")
		if s == nil then
			continue
		end
		if s == "[C]" then
			continue
		end

		return l
	end
	return debug.info(3, "l")
end
module.NewSpy = function()
	local RemoteSpy = {}
	RemoteSpy.Window = Window.new()
	RemoteSpy.Window:SetTitle("Remote Spy")

	RemoteSpy.Window.SizeX = 625
	RemoteSpy.Window.SizeY = 400
	RemoteSpy.Window.MinX = 300
	RemoteSpy.Window.MinY = 300

	RemoteSpy.nodes = {}

	RemoteSpy.Outgoing = Button.new(0)
	RemoteSpy.Outgoing.Gui.Parent = RemoteSpy.Window.GuiElems.Content
	RemoteSpy.Outgoing.Gui.Text = "Outgoing"
	RemoteSpy.Outgoing.Gui.Position = UDim2.new(0,210,0,10)
	RemoteSpy.Outgoing.Gui.Size = UDim2.new(0,105,0,25)
	RemoteSpy.Outgoing.Gui.TextSize = 18

	RemoteSpy.Incoming = Button.new(0)
	RemoteSpy.Incoming.Gui.Parent = RemoteSpy.Window.GuiElems.Content
	RemoteSpy.Incoming.Gui.Text = "Incoming"
	RemoteSpy.Incoming.Gui.Position = UDim2.new(0,210,0,45)
	RemoteSpy.Incoming.Gui.Size = UDim2.new(0,105,0,25)
	RemoteSpy.Incoming.Gui.TextSize = 18
	RemoteSpy.LogType = "Incoming"

	RemoteSpy.Local = Button.new(0)
	RemoteSpy.Local.Gui.Parent = RemoteSpy.Window.GuiElems.Content
	RemoteSpy.Local.Gui.Text = "Local"
	RemoteSpy.Local.Gui.Position = UDim2.new(0,210,0,80)
	RemoteSpy.Local.Gui.Size = UDim2.new(0,105,0,25)
	RemoteSpy.Local.Gui.TextSize = 18

	local Explorer_Container : Frame = Frame.new(RemoteSpy.Window.GuiElems.Content)
	Explorer_Container.BackgroundColor3 = Environment.Settings.Theme.Main3
	Explorer_Container.Position = UDim2.new(0,5,0,5)
	Explorer_Container.Size = UDim2.new(0,200,1,-10)

	local SExplorer_Container : Frame = Frame.new(RemoteSpy.Window.GuiElems.Content)
	SExplorer_Container.BackgroundColor3 = Environment.Settings.Theme.Main3
	SExplorer_Container.Position = UDim2.new(0,320,0,5)
	SExplorer_Container.Size = UDim2.new(0,200,1,-10)


	RemoteSpy.SExplorer = Explorer.NewExplorer(true, SExplorer_Container.Gui)
	RemoteSpy.SExplorer.SearchBox.PlaceholderText = "Filter Calls"
	RemoteSpy.SExplorer.NodeContainer.ClipsDescendants = true
	RemoteSpy.SExplorer.FilterInfo = {}
	RemoteSpy.SExplorer.AllowMultiSelection = false
	RemoteSpy.SExplorer.RefreshFilters()

	RemoteSpy.SExplorer.ForeachEntry(function(entry)
		entry.Indent.EntryName.Position = UDim2.new(0,0,0,0)
	end)

	RemoteSpy.Explorer = Explorer.NewExplorer(true, Explorer_Container.Gui)
	RemoteSpy.Explorer.FilterInfo = {}
	local function explorerFilter(node)
		return node.Type == RemoteSpy.LogType
	end
	RemoteSpy.Explorer.CustomFilters = { explorerFilter }
	RemoteSpy.Explorer.CustomFiltersEnabled = true
	RemoteSpy.Explorer.IndexFilterEnabled = true
	RemoteSpy.Explorer.IndexFilter = explorerFilter
	RemoteSpy.Explorer.SearchBox.PlaceholderText = "Filter Remote Calls"
	RemoteSpy.Explorer.NodeContainer.ClipsDescendants = true
	RemoteSpy.Explorer.AllowMultiSelection = false
	RemoteSpy.Explorer.RefreshFilters()

	RemoteSpy.SExplorer.SetRichText(true)

	local function getSelectedNode()
		if RemoteSpy.Explorer.Selection then
			for k, v in pairs(RemoteSpy.Explorer.Selection) do
				if type(k) == "table" and k.Calls ~= nil then
					return k
				elseif type(v) == "table" and v.Calls ~= nil then
					return v
				end
			end
		end
		for _, node in ipairs(RemoteSpy.Explorer.Nodes) do
			if node.Selected then
				return node
			end
		end
		return nil
	end

	local function updateSExplorer()
		local selected = getSelectedNode()
		if selected and selected.Calls then
			RemoteSpy.SExplorer.Nodes = selected.Calls
		else
			RemoteSpy.SExplorer.Nodes = {}
		end
		RemoteSpy.SExplorer.Refresh()
	end

	RemoteSpy.Explorer.NodeSelectionChanged:Connect(updateSExplorer)

	RemoteSpy.SetLogType = function(type_ : string)
		RemoteSpy.Incoming.Gui.BackgroundColor3 = type_ == "Incoming" and Environment.Settings.Theme.Menu or Environment.Settings.Theme.Button
		RemoteSpy.Outgoing.Gui.BackgroundColor3 = type_ == "Outgoing" and Environment.Settings.Theme.Menu or Environment.Settings.Theme.Button
		RemoteSpy.Local.Gui.BackgroundColor3 = type_ == "Local" and Environment.Settings.Theme.Menu or Environment.Settings.Theme.Button

		RemoteSpy.LogType = type_
		RemoteSpy.Explorer.Refresh()
		updateSExplorer()
	end

	RemoteSpy.Log = function(remote, network_type, arguments, caller,more_info)
		if remote.ClassName == "BindableFunction" or remote.ClassName == "BindableEvent" then
			network_type = "Local"
		end

		if RemoteSpy.nodes[remote] == nil then
			RemoteSpy.nodes[remote] = {}
		end

		local is_new_remote = false
		if RemoteSpy.nodes[remote][network_type] == nil then
			local icon, offset, size = Functions.GetIcon(remote.ClassName)
			local n = {
				Instance = nil,
				Expanded = false,
				Renaming = false,
				CanExpand = false,
				Subnodes = {},
				Highlighted = false,
				Selected = false,
				Depth = 0,
				IndentInc = 0,

				Remote = remote,
				Type = network_type,
				CallNumber = 1,
				Calls = {},
				Icon = icon,
				IconOffset = offset,
				IconSize = size,
			}
			RemoteSpy.nodes[remote][network_type] = n
			RemoteSpy.Explorer.Nodes[#RemoteSpy.Explorer.Nodes + 1] = n
			is_new_remote = true
		end

		local node = RemoteSpy.nodes[remote][network_type]
		node.Text = remote.Name .. " (x" .. tostring(node.CallNumber) .. ")"
		node.CallNumber += 1


		local lastCall = node.Calls[#node.Calls]
		local is_repeat = false

		if lastCall ~= nil and lastCall.CallInfo ~= nil then
			local sameCaller = (lastCall.CallInfo.Caller == caller)
			local sameArgs = areArgsEqual(lastCall.CallInfo.Arguments, arguments)
			if sameCaller and sameArgs then
				is_repeat = true
			end
		end

		if is_repeat then
			lastCall.CallInfo.Count += 1
			lastCall.Text = Highlighter.run(Functions.Value_To_Luau(lastCall.CallInfo.Arguments)) .. (" (x" .. tostring(lastCall.CallInfo.Count) .. ")")
			lastCall.TextOverride = Functions.Value_To_Luau(lastCall.CallInfo.Arguments) .. (" (x" .. tostring(lastCall.CallInfo.Count) .. ")")
		else
			local call_node = {
				Instance = nil,
				Expanded = false,
				Renaming = false,
				CanExpand = false,
				Subnodes = {},
				Highlighted = false,
				Selected = false,
				Depth = 0,
				IndentInc = 0,

				Remote = remote,
				Type = network_type,
				
				CallInfo = {
					Arguments = arguments,
					Caller = caller,
					Count = 1,
				},
				Icon = "",
				IconOffset = Vector2.new(),
				IconSize = Vector2.new(),
				Text = Highlighter.run(Functions.Value_To_Luau(arguments)) .. " (x1)",
				TextOverride = Functions.Value_To_Luau(arguments) .. "	(x1)",
			}
			for i, v in more_info do
				call_node.CallInfo[i] = v
			end
			table.insert(node.Calls, call_node)
		end

		RemoteSpy.Explorer.Refresh()


		local selected = getSelectedNode()
		if selected == node then
			RemoteSpy.SExplorer.Nodes = node.Calls
			RemoteSpy.SExplorer.Refresh()
		end
	end

	RemoteSpy.Refresh = function()
		RemoteSpy.Explorer.Refresh()
		updateSExplorer()
	end
	RemoteSpy.SetLogType("Incoming")
	RemoteSpy.Outgoing.OnClick:Connect(function() RemoteSpy.SetLogType("Outgoing") end)
	RemoteSpy.Incoming.OnClick:Connect(function() RemoteSpy.SetLogType("Incoming") end)
	RemoteSpy.Local.OnClick:Connect(function() RemoteSpy.SetLogType("Local") end)

	-- Hooks
	local changed = {}
	local newc = function(...)
		if Environment.Functions.Support.newcclosure then
			return Environment.Functions.newcclosure(...)
		end
		return ...
	end
	RemoteSpy.HookLocal = function()
		local hookfunction = Environment.Functions.hookfunction
		local originalFire
		originalFire = hookfunction(Instance.new("BindableEvent").Fire, newc(function(self, ...)
			local args = {...}
			local calling_script = Environment.Functions.getcallingscript()
			RemoteSpy.Log(self, "Local", args, getcallingfunction(),{
				Line = getcallingline(),
				Origin = calling_script,
				Source = getcallingsource(),
				IsExecutor = Environment.Functions.checkcaller(),
			})
			return originalFire(self, ...)
		end))

		local originalInvoke
		originalInvoke = hookfunction(Instance.new("BindableFunction").Invoke, newc(function(self, ...)
			local args = {...}
			local calling_script = Environment.Functions.getcallingscript()
			RemoteSpy.Log(self, "Local", args, getcallingfunction(),{
				Origin = calling_script,
				Source = getcallingsource(),
				IsExecutor = Environment.Functions.checkcaller(),
				Line = getcallingline(),
			})
			return originalInvoke(self, ...)
		end))
	end

	RemoteSpy.ListenLocal = function()
		local function oninst(b : BindableEvent | BindableFunction | Instance)
			if b.ClassName == "BindableEvent" then
				b.Event:Connect(function(...)
					local args = {...}
					RemoteSpy.Log(b, "Local", args, nil,{})
				end)
			elseif b.ClassName == "BindableFunction" and Environment.Functions.Support.getcallbackvalue then
				local original = Environment.Functions.Support.getcallbackvalue(b, "OnInvoke")
				b.OnInvoke = function(...)
					local args = {...}
					RemoteSpy.Log(b, "Local", args, nil,{})
					return original(...)
				end
			end
		end
		for _, v in game:GetDescendants() do
			oninst(v)
		end
		game.DescendantAdded:Connect(oninst)
	end

	RemoteSpy.HookIncoming = function()

		local function oninst(b : RemoteEvent | RemoteFunction | UnreliableRemoteEvent | Instance)
			if b.ClassName == "RemoteEvent" or b.ClassName == "UnreliableRemoteEvent" then
				b.OnClientEvent:Connect(function(...)
					local args = {...}
					RemoteSpy.Log(b,"Incoming",args,nil)
				end)
			elseif b.ClassName == "RemoteFunction" and Environment.Functions.Support.getcallbackvalue then

				local function replacehook()
					local original = Environment.Functions.getcallbackvalue(b,"OnClientInvoke")
					local hook = newc(function(...)
						local args = {...}
						RemoteSpy.Log(b,"Incoming",args,nil)
						return original(...)
					end)
					Environment.Functions.hookfunction(original,hook)

				end
				replacehook()
				changed[b] = replacehook
			end
		end
		for i, v in game:GetDescendants() do
			oninst(v)
		end
		game.DescendantAdded:Connect(oninst)
	end

	RemoteSpy.ListenIncoming = function()
		local function oninst(b : RemoteEvent | RemoteFunction | UnreliableRemoteEvent | Instance)
			if b.ClassName == "RemoteEvent" or b.ClassName == "UnreliableRemoteEvent" then
				b.OnClientEvent:Connect(function(...)
					local args = {...}
					local info = {
						Origin = nil,
						Line = nil,
						Source = nil,
						IsExecutor = false,
					}
					RemoteSpy.Log(b, "Incoming", args, nil,info)
				end)
			elseif b.ClassName == "RemoteFunction" and Environment.Functions.Support.getcallbackvalue then
				local original = Environment.Functions.Support.getcallbackvalue(b, "OnClientInvoke")
				b.OnClientInvoke = function(...)
					local args = {...}
					local info = {
						Origin = nil,
						Line = nil,
						Source = nil,
						IsExecutor = false,
					}
					RemoteSpy.Log(b, "Incoming", args, nil,info)
					return original(...)
				end
			end
		end
		for _, v in game:GetDescendants() do
			oninst(v)
		end
		game.DescendantAdded:Connect(oninst)
	end
	RemoteSpy.HookOutgoing = function()
		local temp_remote = Instance.new("RemoteEvent")
		local temp_unremote = Instance.new("UnreliableRemoteEvent")
		local fire_server
		local unfire_server
		local function_for_remote = newc(function(self,...)
			if typeof(self) ~= "Instance" then
				error("Expected ':' not '.' calling member function FireServer")
			end
			if self.ClassName ~= "RemoteEvent" and self.ClassName ~= "UnreliableRemoteEvent" then
				error("Expected ':' not '.' calling member function FireServer")
			end
			local args = {...}
			RemoteSpy.Log(self,"Outgoing",args,getcallingfunction(),{
				Origin = Environment.Functions.getcallingscript(),
				IsExecutor = Environment.Functions.checkcaller(),
				Line = getcallingline(),
				Source = getcallingsource(),
			})
			if self.ClassName == "UnreliableRemoteEvent" then
				return unfire_server(self,...)
			end
			return fire_server(self,...)
		end)
		fire_server = Environment.Functions.hookfunction(temp_remote.FireServer,function_for_remote)
		unfire_server = Environment.Functions.hookfunction(temp_unremote.FireServer,function_for_remote)


		local temp_func = Instance.new("RemoteFunction")
		local invoke_server
		local function_for_func = newc(function(self,...)
			if typeof(self) ~= "Instance" then
				error("Expected ':' not '.' calling member function InvokeServer")
			end
			if self.ClassName ~= "RemoteFunction" then
				error("Expected ':' not '.' calling member function InvokeServer")
			end
			local args = {...}
			RemoteSpy.Log(self,"Outgoing",args,getcallingfunction(),{
				Origin = Environment.Functions.getcallingscript(),
				IsExecutor = Environment.Functions.checkcaller(),
				Line = getcallingline(),
				Source = getcallingsource(),
			})
			return invoke_server(self,...)
		end)
		invoke_server = Environment.Functions.hookfunction(temp_func.InvokeServer,function_for_func)
	end
	if Environment.Functions.Support.hookfunction then
		RemoteSpy.HookLocal()
		RemoteSpy.HookIncoming()
		RemoteSpy.HookOutgoing()
	else
		RemoteSpy.ListenLocal()
		RemoteSpy.ListenIncoming()
	end
	if Environment.Functions.Support.hookmetamethod then
		local old; old = Environment.Functions.hookmetamethod(game,"__newindex",newc(function(self,...)
			if typeof(self) ~= "Instance" then
				return old(self,...)
			end
			if self:IsA("BindableFunction") or self:IsA("RemoteFunction") then
				local result = old(self,...)
				if changed[self] ~= nil then
					changed[self]()
				end
				return result
			else
				return old(self,...)
			end
		end))
	end
	return RemoteSpy
end

module.Init = module.NewSpy
return module
