function CreateInstance(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end
local TreeView do
	TreeView = {}

	local treeMt = {
		__index = {
			Length = function(self)
				return #self.Tree
			end
		}
	}

	function TreeView.new()
			

		local newMt = setmetatable({
			Index = 0,
			Tree = {},
			Expanded = {},
			NodeTemplate = nil,
			DisplayFrame = nil,
			Entries = {},
			Height = 18,
			OffX = 1,
			OffY = 1
		},treeMt)
		local function createDNodeTemplate()
			if newMt.EntryTemplate then
				return newMt.EntryTemplate:Clone()
			end

			local DNodeTemplate = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.37647062540054,0.54901963472366,0.82745105028152),BackgroundTransparency=1,BorderColor3=Color3.new(0.33725491166115,0.49019610881805,0.73725491762161),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,1,0,2),Rotation=0,Selectable=true,Size=UDim2.new(1,-18,0,18),SizeConstraint=0,Visible=true,ZIndex=1,Name="Entry",})
			local DNodeTemplate2 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=1,BorderColor3=Color3.new(0.14509804546833,0.20784315466881,0.21176472306252),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,18,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-18,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Indent",Parent = DNodeTemplate})
			local DNodeTemplate3 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Item",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,22,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-22,0,18),SizeConstraint=0,Visible=true,ZIndex=1,Name="EntryName",Parent = DNodeTemplate2})
			local DNodeTemplate4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,2,0.5,-8),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="IconFrame",Parent = DNodeTemplate2})
			local DNodeTemplate5 = CreateInstance("ImageLabel",{Image="rbxassetid://529659138",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-5.811999797821,0,-1.3120000362396,0),Rotation=0,Selectable=false,Size=UDim2.new(16,0,16,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Icon",Parent = DNodeTemplate4})
			local DNodeTemplate6 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,-16,0.5,-8),Rotation=0,Selectable=true,Size=UDim2.new(0,16,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Expand",Parent = DNodeTemplate2})
			local DNodeTemplate7 = CreateInstance("ImageLabel",{Image="rbxassetid://529659138",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-12.562000274658,0,-12.562000274658,0),Rotation=0,Selectable=false,Size=UDim2.new(16,0,16,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Icon",Parent = DNodeTemplate6})
			return DNodeTemplate
		end
		local dNodeTemplate = createDNodeTemplate()	
		
		local function refresh(self)
			if not self.DisplayFrame then warn("Tree: No Display Frame") return end
			newMt.NodeTemplate = newMt.NodeTemplate or createDNodeTemplate()
			if self.PreUpdate then self:PreUpdate() end

			local displayFrame = self.DisplayFrame
			local entrySpace = math.ceil(displayFrame.AbsoluteSize.Y / (self.Height + 1))

			for i = 1,entrySpace do
				local node = self.Tree[i + self.Index]
				if node then
					local entry = self.Entries[i]
					if not entry then
						entry = self.NodeTemplate:Clone()
						entry.Position = UDim2.new(0,self.OffX,0,self.OffY + (self.Height + 1) * #displayFrame:GetChildren())
						entry.Parent = displayFrame
						self.Entries[i] = entry
						if self.NodeCreate then self:NodeCreate(entry,i) end
					end
					entry.Visible = true
					if self.NodeDraw then self:NodeDraw(entry,node) end
				else
					local entry = self.Entries[i]
					if entry then
						entry.Visible = false
					end
				end
			end

			for i = entrySpace+1,#self.Entries do
				if self.Entries[i] then
					self.Entries[i]:Destroy()
					self.Entries[i] = nil
				end
			end

			if self.OnUpdate then self:OnUpdate() end
			if self.RefreshNeeded then self.RefreshNeeded = false self:Refresh() end
		end
		newMt.Refresh = refresh

		local function expand(self,item)
			self.Expanded[item] = not self.Expanded[item]
			if self.TreeUpdate then self:TreeUpdate() end
			self:Refresh()
		end
		newMt.Expand = expand

		local Selection do
			Selection = {
				List = {},
				Selected = {}
			}

			function Selection:Add(obj)
				if Selection.Selected[obj] then return end

				Selection.Selected[obj] = true
				table.insert(Selection.List,obj)
			end

			function Selection:Set(objs)
				for i,v in pairs(Selection.List) do
					Selection.Selected[v] = nil
				end
				Selection.List = {}

				for i,v in pairs(objs) do
					if not Selection.Selected[v] then
						Selection.Selected[v] = true
						table.insert(Selection.List,v)
					end
				end
			end

			function Selection:Remove(obj)
				if not Selection.Selected[obj] then return end

				Selection.Selected[obj] = false
				for i,v in pairs(Selection.List) do
					if v == obj then table.remove(Selection.List,i) break end
				end
			end
		end
		newMt.Selection = Selection

		return newMt
	end
end
return TreeView
