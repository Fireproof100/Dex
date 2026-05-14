local module = {}
-- TODO: Make better
--module.new = function()
--	return {
--		Callbacks = {},
--		Firing = false,
--		Connect = function(s,f)
--			if typeof(s) ~= "table" then error("No.") end
--			local idx = #s.Callbacks+1
--			s.Callbacks[idx] = f
--			return {
--				Disconnect = function()
--					s.Callbacks[idx] = nil
--				end,
--			}
--		end,
--		Fire = function(s,...)
--			if typeof(s) ~= "table" then error("No.") end
--			s.Firing = true
--			task.wait()
--			for i, v in s.Callbacks do
--				task.spawn(v,...)
--			end
--			s.Firing = false
--		end,
--		Wait = function(s)
--			if typeof(s) ~= "table" then error("No.") end
--			repeat task.wait() until s.Firing == true
--		end,
--	}
--end
module.new = function()
	local Signal = setmetatable({__type = "Signal"},{__type = "Signal",__metatable = "Locked"})
	Signal.Firing = false
	Signal.Callbacks = {}
	Signal.Connections = {}
	Signal.Connect = function(self,callback)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		local Connection = setmetatable({__type = "Connection"},{__type = "Connection",__metatable = "Locked"})
		Connection.Signal = Signal
		Connection.idx = #Signal.Callbacks+1
		
		Connection.Signal.Callbacks[Connection.idx] = callback
		Connection.Signal.Connections[Connection.idx] = Connection
		
		Connection.Connected = true
		Connection.Function = callback
		Connection.Enabled = true
		Connection.Disconnect = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			table.remove(Connection.Signal.Callbacks,Connection.idx)
			table.remove(Connection.Signal.Connections,Connection.idx)
		end
		Connection.Disable = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			Connection.Enabled = false
		end
		Connection.Enable = function(self)
			if self ~= Connection then
				error("Expected ':' not '.' when calling member function")
			end
			Connection.Enabled = true
		end
		return Connection
	end
	Signal.Wait = function(self)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		repeat task.wait() until Signal.Firing == true
	end
	Signal.Fire = function(self,...)
		if self ~= Signal then
			error("Expected ':' not '.' when calling member function")
		end
		Signal.Firing = true
		task.wait()
		for _, connection in Signal.Connections do
			if connection == nil then
				continue
			end
			if connection.Connected ~= true then
				continue
			end
			if connection.Enabled ~= true then
				continue
			end
			if connection.Function == nil then
				continue
			end
			task.spawn(connection.Function,...)
		end
		Signal.Firing = false
	end
	return Signal
end


return module
