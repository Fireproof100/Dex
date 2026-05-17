local module = {}
local Enviorment = require(script.Parent.Enviorment)()
local args = {...};
local enabled = args[1] or true;
local Apps = nil;
local Loader = nil;
Enviorment.AppSignal:Fire("Loader",function(v,v2) Apps = v;Loader = v2;end)
local Components = {}
local ComponentsMt = {__index = function(_,name)
	return require(script.Parent.Parent.UI:FindFirstChild(name))
end,}
setmetatable(Components,ComponentsMt)
table.freeze(Components)
ComponentsMt.__metatable = "No."
local ReadonlyEnv = newproxy(true)
local mt = getmetatable(ReadonlyEnv)
mt.__metatable = "No."
mt.__index = Enviorment

local ReadonlyMain = newproxy(true)
local mt2 = getmetatable(ReadonlyMain)
mt2.__metatable = "No."
mt2.__index = Loader

local API = {
	Apps = Apps;
	Enviorment = ReadonlyEnv;
	Components = Components;
	Main = ReadonlyMain;
}
module.Enabled = enabled;
local WrappedAPI = newproxy(true)
local mt3 = getmetatable(WrappedAPI)
mt3.__metatable = "No."
mt3.__index = API

module.API = WrappedAPI

return module
