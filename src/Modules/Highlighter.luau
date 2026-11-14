local highlighter = {}
local Environment = require(script.Parent.Environment)()
local keywords = {
	lua = {
		"and", "break", "or", "else", "elseif", "if", "then", "until", "repeat", "while", "do", "for", "in", "end",
		"local", "return", "function", "export", "const",
	},
	rbx = {
		"Workspace","game", "workspace", "script", "math", "string", "table", "task", "wait", "select", "next", "Enum",
		"error", "warn", "tick", "assert", "shared", "loadstring", "tonumber", "tostring", "type",
		"typeof", "unpack", "print", "Instance", "CFrame", "Vector3", "Vector2", "Color3", "UDim", "UDim2", "Ray", "BrickColor",
		"OverlapParams", "RaycastParams", "Axes", "Random", "Region3", "Rect", "TweenInfo",
		"collectgarbage", "not", "utf8", "pcall", "xpcall", "_G", "setmetatable", "getmetatable", "os", "pairs", "ipairs"
	},
	exploit = {
		"hookmetamethod", "hookfunction", "getgc", "filtergc", "Drawing", "getgenv", "getsenv", "getrenv", "getfenv", "setfenv",
		"decompile", "saveinstance", "getrawmetatable", "setrawmetatable", "checkcaller", "cloneref", "clonefunction",
		"iscclosure", "islclosure", "isexecutorclosure", "newcclosure", "getfunctionhash", "crypt", "writefile", "appendfile", "loadfile", "readfile", "listfiles",
		"replicatesignal" , "getconnections" , "firesignal", "getscriptbytecode" , "setscriptbytecode" , "hookinstance" ,
		"getscriptclosure" , "getthreadidentity" , "setthreadidentity", "getnamecallmethod", "checkcaller",
		"makefolder", "isfolder", "isfile", "delfile", "delfolder", "getcustomasset", "fireclickdetector", "firetouchinterest", "fireproximityprompt"
	},
	operators = {
		"#", "+", "-", "*", "%", "/", "^", "=", "~", "=", "<", ">", ",", ".", "(", ")", "{", "}", "[", "]", ";", ":"
	}
}

local colors = {
	numbers = Environment.Settings.Theme.Syntax.Number or Color3.fromRGB(255, 198, 0),
	boolean = Environment.Settings.Theme.Syntax.Bool or Color3.fromRGB(255, 198, 0),
	operator = Environment.Settings.Theme.Syntax.Operator or Color3.fromRGB(204, 204, 204),
	lua = Environment.Settings.Theme.Syntax.BuiltIn or Color3.fromRGB(132, 214, 247),
	exploit = Environment.Settings.Theme.Syntax.Exploit or Color3.fromRGB(171, 84, 247),
	rbx = Environment.Settings.Theme.Syntax.Keyword,
	str = Environment.Settings.Theme.Syntax.String,
	comment = Environment.Settings.Theme.Syntax.Comment,
	null = Environment.Settings.Theme.Syntax.Nil,
	call = Environment.Settings.Theme.Syntax.LocalMethod,
	self_call = Environment.Settings.Theme.Syntax.LocalMethod,
	local_color = Environment.Settings.Theme.Syntax.Local,
	function_color = Environment.Settings.Theme.Syntax.FunctionName,
	self_color = Environment.Settings.Theme.Syntax.Self,
	local_property = Environment.Settings.Theme.Syntax.LocalProperty,
}

local function createKeywordSet(keywords)
	local keywordSet = {}
	for _, keyword in ipairs(keywords) do
		keywordSet[keyword] = true
	end
	return keywordSet
end

local luaSet = createKeywordSet(keywords.lua)
local exploitSet = createKeywordSet(keywords.exploit)
local rbxSet = createKeywordSet(keywords.rbx)
local operatorsSet = createKeywordSet(keywords.operators)

function getHighlight(tokens, index)
	local token = tokens[index]

	if colors[token .. "_color"] then
		return colors[token .. "_color"]
	end

	if tonumber(token) then
		return colors.numbers
	elseif token == "nil" then
		return colors.null
	elseif token:sub(1, 2) == "--" then
		return colors.comment
	elseif operatorsSet[token] then
		return colors.operator
	elseif luaSet[token] then
		return colors.rbx
	elseif rbxSet[token] then
		return colors.lua
	elseif exploitSet[token] then
		return colors.exploit
	elseif token:sub(1, 1) == "\"" or token:sub(1, 1) == "\'" or token:match("^%[=*%[") then
		return colors.str
	elseif token == "true" or token == "false" then
		return colors.boolean
	end

	if tokens[index + 1] == "(" then
		if tokens[index - 1] == ":" then
			return colors.self_call
		end

		return colors.call
	end

	if tokens[index - 1] == "." then
		if tokens[index - 2] == "Enum" then
			return colors.rbx
		end

		return colors.local_property
	end
end

function highlighter.run(source)
	local tokens = {}
	local currentToken = ""

	local inString = false

	local i = 1
	local len = #source

	while i <= len do
		local character = source:sub(i, i)

		if inString then
			if (character == inString and source:sub(i - 1, i - 1) ~= "\\") or character == "\n" then
				currentToken = currentToken .. character
				table.insert(tokens, currentToken)
				currentToken = ""
				inString = false
			else
				currentToken = currentToken .. character
			end
			i += 1
		else
			if source:sub(i, i + 1) == "--" then
				if currentToken ~= "" then
					table.insert(tokens, currentToken)
					currentToken = ""
				end

				local _, openEnd, eq = source:find("^%[(=*)%[", i + 2)
				if openEnd then
					local closeDelim = "]" .. eq .. "]"
					local _, closeEnd = source:find(closeDelim, openEnd + 1, true)
					if closeEnd then
						table.insert(tokens, source:sub(i, closeEnd))
						i = closeEnd + 1
					else
						table.insert(tokens, source:sub(i))
						break
					end
				else
					local nlPos = source:find("\n", i + 2, true)
					if nlPos then
						table.insert(tokens, source:sub(i, nlPos - 1))
						table.insert(tokens, "\n")
						i = nlPos + 1
					else
						table.insert(tokens, source:sub(i))
						break
					end
				end
			elseif character == "[" then
				local _, openEnd, eq = source:find("^%[(=*)%[", i)
				if openEnd then
					if currentToken ~= "" then
						table.insert(tokens, currentToken)
						currentToken = ""
					end

					local closeDelim = "]" .. eq .. "]"
					local _, closeEnd = source:find(closeDelim, openEnd + 1, true)
					if closeEnd then
						table.insert(tokens, source:sub(i, closeEnd))
						i = closeEnd + 1
					else
						table.insert(tokens, source:sub(i))
						break
					end
				else
					if currentToken ~= "" then
						table.insert(tokens, currentToken)
						currentToken = ""
					end
					table.insert(tokens, character)
					i += 1
				end
			elseif character == "\"" or character == "\'" then
				if currentToken ~= "" then
					table.insert(tokens, currentToken)
				end
				currentToken = character
				inString = character
				i += 1
			elseif operatorsSet[character] then
				if currentToken ~= "" then
					table.insert(tokens, currentToken)
					currentToken = ""
				end
				table.insert(tokens, character)
				i += 1
			elseif character:match("[%w_]") then
				currentToken = currentToken .. character
				i += 1
			else
				if currentToken ~= "" then
					table.insert(tokens, currentToken)
					currentToken = ""
				end
				table.insert(tokens, character)
				i += 1
			end
		end
	end

	if currentToken ~= "" then
		table.insert(tokens, currentToken)
	end

	local highlighted = {}

	for idx, token in ipairs(tokens) do
		local highlight = getHighlight(tokens, idx)

		if highlight then
			local syntax = string.format("<font color = \"#%s\">%s</font>", highlight:ToHex(), token:gsub("<", "&lt;"):gsub(">", "&gt;"))

			table.insert(highlighted, syntax)
		else
			table.insert(highlighted, token)
		end
	end

	return table.concat(highlighted)
end

return highlighter
