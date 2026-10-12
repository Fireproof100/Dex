local function load(Enviornment)
	local IsStudio = Enviornment.IsSudio
	local loadstring_roblox = loadstring
	local loadstring = IsStudio and require(workspace.vLuau) or loadstring_roblox
	local module = {}
	module.Support = {}
	module.Messages = {

	}
	module.Fallbacks = {
		newcclosure = function(func) return func end,
		iscclosure = function(f) local s,_ = pcall(setfenv,f,getfenv(f));return not s end,
		islclosure = function(f) local s,_ = pcall(setfenv,f,getfenv(f));return s end,
		checkcaller = function() 
			local caller = getfenv(debug.info(4,"f"));
			local scr : Instance | nil = rawget(caller,"script"); 
			if scr == nil then
				return true
			end
			if scr:IsDescendantOf(Enviornment.CoreGui) or scr:IsDescendantOf(Enviornment.CorePackages) then
				return true
			end
			return false
		end,
		getcallingscript = function()
			local caller = getfenv(debug.info(4,"f"));
			local scr : Instance | nil = rawget(caller,"script"); 
			return scr
		end,
		hookfunction = function(func,hook)
			return func
		end,
		isfunctionhooked = function(func)
			return false
		end,
		restorefunction = function()
			
		end,
		cloneref = function(...)
			return (...)
		end,
		setclipboard = function(v)
			if IsStudio then
				warn("[setclipboard] ",v)
			end
		end,
		protectgui = function(gui)
			gui.Parent = script.Parent.Parent
		end,
		getnilinstances = function()
			return {}
		end,
		writefile = function()
			
		end,
		readfile = function()
			
		end,
		HttpGet = function(...)
			local s,res = pcall(function(...)
				return game:HttpGet(...)
			end,...)
			if s then
				return res
			end
			local s2,res2 = pcall(function(...)
				return Enviornment.HttpService:GetAsync(...)
			end,...)
			if s2 then
				return res2
			end
			return ""
		end,
		saveinstance = function(...)
			local s,r = pcall(function(...)
				local Params = {
					RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
					SSI = "saveinstance",
				}
				loadstring(module.HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()(...)
			end,...)
			if s then
				return r
			end
		end,
		decompile = function(scr)
			if IsStudio then
				local s, source = pcall(function()
					return scr.Source
				end) 
				if not s then
					source = "-- The current thread cannot read the script's source. "
				end
				return source;
			end
			if module.getscriptbytecode == nil then
				return "-- Missing function 'getscriptbytecode'"
			else 
				return "-- Missing function 'decompile'"
			end
		end,
		hookmetamethod = function(object,method,hook)
			if method == "__index" then
				local _, Metamethod = xpcall(function()
					return object[tostring(math.random())]
				end, function(err)
					return debug.info(2, "f")
				end)

				return Metamethod
			elseif method == "__newindex" then
				local _, Metamethod = xpcall(function()
					object[tostring(math.random())] = true
				end, function(err)
					return debug.info(2, "f")
				end)

				return Metamethod
			elseif method == "__namecall" then
				local _, Metamethod = xpcall(function()
					object:Mustard()
				end, function(err)
					return debug.info(2, "f")
				end)

				return Metamethod
			end

			return nil
		end,
		gethiddenproperty = function(obj,name)
			local s,res = pcall(function()
				return Enviornment.services.UGCValidationService:GetPropertyValue(obj,name)
			end)
			if s then
				return res
			end
			return obj[name]
		end,
		sethiddenproperty = function(obj,name,value)
			obj[name] = value
		end,
		getcallbackvalue = function()
			return nil
		end,
		gethui = function()
			if Enviornment.IsElevated() then
				return Enviornment.CoreGui
			else
				return script.Parent.Parent.Parent
			end
		end,
		getgenv = function()
			return _G
		end,
		loadstring = loadstring,
	}
	local TEST_EXISTENCE_ONLY = function(v)
		assert(v,"Function does not exist")
	end
	local function Test(name,func,callback,impl_in_c)
		local succeded, message = false,"???"
		if func ~= nil then
			if typeof(func) ~= "function" then
				succeded, message = false,"Expected function of type 'function', got '" .. typeof(func) .. "' instead"
			else
				local is_l,_ = pcall(setfenv,func,getfenv(func))
				if is_l and impl_in_c then
					succeded,message = false,"Function should be implemented in C"
				else
					succeded,message = pcall(callback,func)
				end
			end

		else
			succeded = false
			message = "Function does not exist"
		end
		module.Support[name] = succeded
		module.Messages[name] = message
	end

	-- Closure
	Test("newcclosure",newcclosure,function(v)
		local upvalue  = 0
		local closure = newcclosure(function(a,b)
			upvalue = a + b
			task.wait()
			return true
		end)
		if typeof(closure) ~= "function" then
			error("newcclosure did not return a function")
		end
		local return_value = closure(1,2)
		if return_value ~= true then
			error("newcclosure failed to make a new closure")
		end
		assert(debug.info(closure, "s") == "[C]", "newcclosure did not create a C closure")

		task.wait(0.1)
		local s,_ = pcall(closure,1,2)
		assert(s,"Implemented in Luau")
		local s,_ = pcall(setfenv,closure,getfenv(closure))
		assert(not s, "debug.info was hooked")

	end,true)
	Test("iscclosure",iscclosure,function()
		assert(typeof(iscclosure) == "function", "iscclosure is not a function")
		assert(iscclosure(math.abs), "iscclosure did not identify a C closure")
		assert(not iscclosure(function() end), "iscclosure identified a Luau closure as a C closure")
	end)
	Test("islclosure",islclosure,function()
		assert(typeof(islclosure) == "function", "iscclosure is not a function")
		assert(not islclosure(math.abs), "islclosure did not identify a C closure")
		assert(islclosure(function() end), "islclosure identified a Luau closure as a C closure")
	end)
	Test("checkcaller",checkcaller,function()
		assert(checkcaller(),"Main Scope should return true")
	end)
	Test("getcallingscript", getcallingscript, TEST_EXISTENCE_ONLY)
	Test("hookfunction",hookfunction,function()
		local still_ran = false
		local still_ran_hook = false
		local function Original(a, b)
			still_ran = true
			return a + b
		end

		local ref = hookfunction(Original, function(a, b)
			still_ran_hook = true
			return a * b
		end)

		local v = Original(1,1)
		assert((not still_ran) and still_ran_hook,"hookfunction implemented in Luau")
		assert(not still_ran,"Did not hook anything")

		assert(Original(2, 3) == 6, "Failed to hook a function and change the return value")
		assert(ref(2, 3) == 5, "Did not return the original function")
	end,true)
	Test("isfunctionhooked",isfunctionhooked,function()
		assert(typeof(hookfunction) == "function", "hookfunction is required for this test")

		local function Original(a, b)
			return a + b
		end

		assert(isfunctionhooked(Original) == false, "isfunctionhooked returned true for an unhooked function")

		hookfunction(Original, function(a, b)
			return a * b
		end)

		assert(isfunctionhooked(Original) == true, "isfunctionhooked returned false for a hooked function")
	end)
	Test("restorefunction",restorefunction,function()
		assert(typeof(hookfunction) == "function", "hookfunction is required for this test")

		local function Original(a, b)
			return a + b
		end

		hookfunction(Original, function(a, b)
			return a * b
		end)

		assert(Original(2, 3) == 6, "Failed to hook a function and change the return value")

		restorefunction(Original)

		assert(Original(2, 3) == 5, "restorefunction did not restore the original function")
	end)
	Test("setstackhidden",setstackhidden, function()
		local StackCheck = {}

		local CallerFunctionSource = [[
		local StackCheck = ...
		local function CallerFunction()
			return StackCheck[1]()
		end
		return CallerFunction
	]]

		local CallerFunction = (loadstring(CallerFunctionSource, "=CallerFunction") :: (...any) -> ...any)(StackCheck)

		setstackhidden(CallerFunction, true)

		StackCheck[1] = function()
			return debug.info(2, "f") ~= CallerFunction
		end

		local IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (debug.info)")

		StackCheck[1] = function()
			return not debug.traceback():find("CallerFunction")
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (debug.traceback)")

		local TestTable = { math.huge, 0 / 0, 123, 58913 } :: { any }
		setfenv(CallerFunction, TestTable)

		StackCheck[1] = function()
			return getfenv(2) ~= TestTable
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (getfenv)")

		StackCheck[1] = function()
			return not select(2, pcall(error, "", 3)):find("CallerFunction")
		end

		IsHidden = CallerFunction()
		assert(IsHidden == true, "setstackhidden did not hide the function from the stack (error with level traceback)")
	end)
	Test("hookmetamethod",hookmetamethod, function()
		local object = setmetatable({}, {
			__index = newcclosure(function()
				return false
			end),
			__metatable = "Locked!",
		})

		local ref = hookmetamethod(object, "__index", function()
			return true
		end)

		assert(object.test == true, "Failed to hook a metamethod and change the return value")
		assert(typeof(ref) == "function", "Did not return the original function")
		assert(ref() == false, "Did not return the original function")
		local ud = newproxy(true)
		local mt2 = getmetatable(ud)
		mt2.__index = function() return false end
		mt2.__metatable = "Locked!"

		local ref2 = hookmetamethod(object, "__index", function()
			return true
		end)

		assert(object.test == true, "setmetatable was hooked")
		assert(typeof(ref) == "function", "Did not return the original function")
		assert(ref() == false, "Did not return the original function")
	end)

	-- Metamethod
	Test("getnamecallmethod",getnamecallmethod, function()
		pcall(function()
			game:TEST_NAMECALL_METHOD()
		end)

		assert(getnamecallmethod() == "TEST_NAMECALL_METHOD", "getnamecallmethod did not return the real namecall method")
	end)
	Test("getrawmetatable",getrawmetatable,function()
		local mt = {__index = function() return 10 end,__metatable = "No."}
		local tbl = setmetatable({},mt)
		local res = getrawmetatable(tbl)
		assert(typeof(res) == "table","getrawmetatable did not return a table")
		if res ~= mt then
			if res.__index == mt.__index and res.__metatable == mt.__metatable then
				error("copyrawmetatable alias")
			end
			error("Did not return the metatable")
		end
		local ud = newproxy(true)
		local mt2 = getmetatable(ud)
		mt2.__index = mt.__index
		mt2.__metatable = mt.__metatable

		local res2 = getrawmetatable(ud)
		assert(typeof(res2) == "table","getrawmetatable did not return a table (userdata check)")
		if res2 ~= mt2 then
			if res.__index == mt.__index and res.__metatable == mt.__metatable then
				error("copyrawmetatable alias")
			end
			error("setmetatable was hooked")
		end

	end)
	-- Instance Library
	Test("getcallbackvalue",getcallbackvalue, function()
		local bindable = Instance.new("BindableFunction")
		local InvokeRan = false
		local InvokeFunction = function(value)
			InvokeRan = true
			return value * 2
		end
		bindable.OnInvoke = InvokeFunction

		local FetchedInvoke = getcallbackvalue(bindable, "OnInvoke")
		bindable:Destroy()

		assert(typeof(FetchedInvoke) == "function", "getcallbackvalue did not return a function")

		assert(FetchedInvoke(5) == 10, "getcallbackvalue's function return did not match expected value")
		assert(InvokeRan, "getcallbackvalue's function did not run")
	end)
	Test("getnilinstances",getnilinstances, function()
		local x = Instance.new("Folder")
		local NilInstances = getnilinstances()
		assert(typeof(NilInstances) == "table", "getnilinstances did not return a table")
		assert(#x ~= 0, "Did not return a table containing nil instances")
	end)
	Test("getloadedmodules",getloadedmodules, function()
		local NilInstances = getloadedmodules()
		assert(typeof(NilInstances) == "table", "getloadedmodules did not return a table")
	end)
	Test("getgenv",getgenv,function()
		assert(typeof(getgenv()) == "table", "getgenv did not return a table")
	end)
	Test("loadstring",loadstring_roblox,function()
		local s,_ = pcall(loadstring_roblox,"local a = 10;")
		assert(s,"loadstring() is not available")
	end)
	local function Add(name)
		if module.Support[name] == true then
			local f = getfenv()[name]
			module[name] = f
		else
			module[name] = module.Fallbacks[name] or function(...) return (...) end
		end
	end
	Add("newcclosure")
	Add("iscclosure")
	Add("islclosure")
	Add("hookfunction")
	Add("hookmetamethod")
	Add("checkcaller")
	Add("getcallingscript")
	Add("restorefunction")
	Add("setstackhidden")
	Add("getnamecallmethod")
	Add("getrawmetatable")
	Add("getcallbackvalue")
	Add("getnilinstances")
	
	Add("sethiddenproperty")
	Add("gethiddenproperty")
	Add("gethui")
	Add("protectgui")
	Add("getscriptbytecode")
	Add("decompile")
	Add("saveinstance")
	Add("isfunctionhooked")
	Add("loadstring")
	Add("getgenv")
	Add("getloadedmodules")
	Add("cloneref")
	Add("setclipboard")
	return module
end
return load
