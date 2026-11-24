local module = {}
local Environment = require(script.Parent.Environment)()
local enabled = Environment.UsePluginAPI;
local Apps = nil;
local Loader = nil;
Environment.AppSignal:Fire("Loader",function(v,v2) Apps = v;Loader = v2;end)
local Components = {}
local ComponentsMt = {
	__index = function(_,name)
		return require(script.Parent.Parent.UI:FindFirstChild(name,true))
	end,
}
setmetatable(Components,ComponentsMt)
local API = {
	Apps = Apps;
	Environment = Environment;
	Components = Components;
	Main = Loader;
}
module.Enabled = enabled;
if not enabled then
	API = {}
end
module.API = API

return module
