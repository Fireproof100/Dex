local EnviormentModule = require(script.Parent.Parent.Parent.Modules.Enviorment)()
local f = setmetatable({},{__index = function(f,k)
	if rawget(f,k) ~= nil then return rawget(f,k) else return EnviormentModule[k] end
end,})
function f.buttonArrows(size,num,dir)
	local max = num
	local arrowFrame = CreateInstance("Frame",{
		BackgroundTransparency = 1,
		Name = "Arrow",
		Size = UDim2.new(0,size,0,size)
	})
	if dir == "up" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)+i-math.floor(max/2)-1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "down" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)-i+math.floor(max/2)+1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "left" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)+i-math.floor(max/2)-1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "right" then
		for i = 1,num do
			local newLine = CreateInstance("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-i+math.floor(max/2)+1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	end
	error("r u ok")
end

local ScrollBar do
	ScrollBar = {}

	local user = EnviormentModule.UIS
	local mouse = EnviormentModule.Mouse
	local function check(s)
		if s.ScrollFrame == nil then return true end
		return s.ScrollFrame.Interactable
	end
	ScrollMt = {
		__index = {
			AddMarker = function(self,ind,color)
				self.Markers[ind] = color or Color3.new(0,0,0)
			end,
			ScrollTo = function(self,ind)
				if check(self) == false then return end
				self.Index = ind
				self:Update()
			end,
			ScrollUp = function(self)
				if check(self) == false then return end
				self.Index = self.Index - self.Increment
				self:Update()
			end,
			ScrollDown = function(self)
				if check(self) == false then return end
				self.Index = self.Index + self.Increment
				self:Update()
			end,
			CanScrollUp = function(self)
				return self.Index > 0
			end,
			CanScrollDown = function(self)
				return self.Index + self.VisibleSpace < self.TotalSpace
			end,
			GetScrollPercent = function(self)
				return self.Index/(self.TotalSpace-self.VisibleSpace)
			end,
			SetScrollPercent = function(self,perc)
				if check(self) == false then return end
				self.Index = math.floor(perc*(self.TotalSpace-self.VisibleSpace))
				self:Update()
			end
		}
	}

	function ScrollBar.new(hor)
		local newFrame = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollBar",})
		local button1 = nil
		local button2 = nil

		local lastTotalSpace = 0

		if hor then
			newFrame.Size = UDim2.new(1,0,0,16)
			button1 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Left",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"left").Parent = button1
			button2 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Right",
				Position = UDim2.new(1,-16,0,0),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"right").Parent = button2
		else
			newFrame.Size = UDim2.new(0,16,1,0)
			button1 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Up",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"up").Parent = button1
			button2 = CreateInstance("ImageButton",{
				Parent = newFrame,
				Name = "Down",
				Position = UDim2.new(0,0,1,-16),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			f.buttonArrows(16,4,"down").Parent = button2
		end

		local scrollThumbFrame = CreateInstance("Frame",{
			BackgroundTransparency = 1,
			Parent = newFrame
		})
		if hor then
			scrollThumbFrame.Position = UDim2.new(0,16,0,0)
			scrollThumbFrame.Size = UDim2.new(1,-32,1,0)
		else
			scrollThumbFrame.Position = UDim2.new(0,0,0,16)
			scrollThumbFrame.Size = UDim2.new(1,0,1,-32)
		end

		local scrollThumb = CreateInstance("Frame",{
			BackgroundColor3 = Color3.new(120/255,120/255,120/255),
			BorderSizePixel = 0,
			Parent = scrollThumbFrame
		})

		local markerFrame = CreateInstance("Frame",{
			BackgroundTransparency = 1,
			Name = "Markers",
			Size = UDim2.new(1,0,1,0),
			Parent = scrollThumbFrame
		})

		local newMt = setmetatable({
			Gui = newFrame,
			Index = 0,
			VisibleSpace = 0,
			TotalSpace = 0,
			Increment = 1,
			Markers = {},
			Scrolled = require(script.Parent.Parent.Parent.Modules.Signal).new(),
		},ScrollMt)

		local function drawThumb()
			local total = newMt.TotalSpace
			local visible = newMt.VisibleSpace
			local index = newMt.Index

			if not (newMt:CanScrollUp()	or newMt:CanScrollDown()) then
				scrollThumb.Visible = false
			else
				scrollThumb.Visible = true
			end

			if hor then
				scrollThumb.Size = UDim2.new(visible/total,0,1,0)
				if scrollThumb.AbsoluteSize.X < 16 then
					scrollThumb.Size = UDim2.new(0,16,1,0)
				end
				local fs = scrollThumbFrame.AbsoluteSize.X
				local bs = scrollThumb.AbsoluteSize.X
				scrollThumb.Position = UDim2.new(newMt:GetScrollPercent()*(fs-bs)/fs,0,0,0)
			else
				scrollThumb.Size = UDim2.new(1,0,visible/total,0)
				if scrollThumb.AbsoluteSize.Y < 16 then
					scrollThumb.Size = UDim2.new(1,0,0,16)
				end
				local fs = scrollThumbFrame.AbsoluteSize.Y
				local bs = scrollThumb.AbsoluteSize.Y
				scrollThumb.Position = UDim2.new(0,0,newMt:GetScrollPercent()*(fs-bs)/fs,0)
			end
		end

		local function updateMarkers()
			markerFrame:ClearAllChildren()

			for i,v in pairs(newMt.Markers) do
				if i < newMt.TotalSpace then
					CreateInstance("Frame",{
						BackgroundTransparency = 0,
						BackgroundColor3 = v,
						BorderSizePixel = 0,
						Position = hor and UDim2.new(i/newMt.TotalSpace,0,1,-6) or UDim2.new(1,-6,i/newMt.TotalSpace,0),
						Size = hor and UDim2.new(0,1,0,6) or UDim2.new(0,6,0,1),
						Name = "Marker"..tostring(i),
						Parent = markerFrame
					})
				end
			end
		end
		newMt.UpdateMarkers = updateMarkers

		local function update()
			local total = newMt.TotalSpace
			local visible = newMt.VisibleSpace
			local index = newMt.Index

			if visible <= total then
				if index > 0 then
					if index + visible > total then
						newMt.Index = total - visible
					end
				else
					newMt.Index = 0
				end
			else
				newMt.Index = 0
			end

			if lastTotalSpace ~= newMt.TotalSpace then
				lastTotalSpace = newMt.TotalSpace
				updateMarkers()
			end

			if newMt.OnUpdate then newMt:OnUpdate() end

			if newMt:CanScrollUp() then
				for i,v in pairs(button1.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0
				end
			else
				button1.BackgroundTransparency = 1
				for i,v in pairs(button1.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0.5
				end
			end
			if newMt:CanScrollDown() then
				for i,v in pairs(button2.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0
				end
			else
				button2.BackgroundTransparency = 1
				for i,v in pairs(button2.Arrow:GetChildren()) do
					v.BackgroundTransparency = 0.5
				end
			end

			drawThumb()
			newMt.Scrolled:Fire()
		end

		local buttonPress = false
		local thumbPress = false
		local thumbFramePress = false

		local thumbColor = Color3.new(120/255,120/255,120/255)
		local thumbSelectColor = Color3.new(140/255,140/255,140/255)
		button1.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and newMt:CanScrollUp() then button1.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not newMt:CanScrollUp() then return end
			buttonPress = true
			button1.BackgroundTransparency = 0.5
			if newMt:CanScrollUp() then newMt:ScrollUp() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if f.checkMouseInGui(button1) and newMt:CanScrollUp() then button1.BackgroundTransparency = 0.8 else button1.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and newMt:CanScrollUp() then
					newMt:ScrollUp()
				end
				wait()
			end
		end)
		button1.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button1.BackgroundTransparency = 1 end
		end)
		button2.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and newMt:CanScrollDown() then button2.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not newMt:CanScrollDown() then return end
			buttonPress = true
			button2.BackgroundTransparency = 0.5
			if newMt:CanScrollDown() then newMt:ScrollDown() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if f.checkMouseInGui(button2) and newMt:CanScrollDown() then button2.BackgroundTransparency = 0.8 else button2.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and newMt:CanScrollDown() then
					newMt:ScrollDown()
				end
				wait()
			end
		end)
		button2.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button2.BackgroundTransparency = 1 end
		end)

		scrollThumb.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0.2 scrollThumb.BackgroundColor3 = thumbSelectColor end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end

			local dir = hor and "X" or "Y"
			local lastThumbPos = nil

			buttonPress = false
			thumbFramePress = false			
			thumbPress = true
			scrollThumb.BackgroundTransparency = 0
			local mouseOffset = mouse[dir] - scrollThumb.AbsolutePosition[dir]
			local mouseStart = mouse[dir]
			local releaseEvent
			local mouseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				if mouseEvent then mouseEvent:Disconnect() end
				if f.checkMouseInGui(scrollThumb) then scrollThumb.BackgroundTransparency = 0.2 else scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = thumbColor end
				thumbPress = false
			end)
			newMt:Update()
			--while math.abs(mouse[dir] - mouseStart) == 0 do wait() end
			mouseEvent = user.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement and thumbPress and releaseEvent.Connected then
					local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
					local pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - mouseOffset
					if pos > thumbFrameSize then
						pos = thumbFrameSize
					elseif pos < 0 then
						pos = 0
					end
					if lastThumbPos ~= pos then
						lastThumbPos = pos
						newMt:ScrollTo(math.floor(pos/thumbFrameSize*(newMt.TotalSpace-newMt.VisibleSpace)))
					end
					wait()
				end
			end)
		end)
		scrollThumb.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = thumbColor end
		end)
		scrollThumbFrame.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 or f.checkMouseInGui(scrollThumb) then return end

			local dir = hor and "X" or "Y"

			local function doTick()
				local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
				local thumbFrameDist = scrollThumb.AbsolutePosition[dir] - scrollThumbFrame.AbsolutePosition[dir]
				local pos = thumbFrameDist + (mouse[dir] < scrollThumb.AbsolutePosition[dir] + math.floor(scrollThumb.AbsoluteSize[dir]/2) and -50 or 50)
				if pos > thumbFrameSize then
					pos = thumbFrameSize
				elseif pos < 0 then
					pos = 0
				end
				if pos < thumbFrameDist and scrollThumbFrame.AbsolutePosition[dir] + pos + math.floor(scrollThumb.AbsoluteSize[dir]/2) <= mouse[dir] then
					pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - math.floor(scrollThumb.AbsoluteSize[dir]/2)
				elseif pos > thumbFrameDist and scrollThumbFrame.AbsolutePosition[dir] + pos + math.floor(scrollThumb.AbsoluteSize[dir]/2) >= mouse[dir] then
					pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - math.floor(scrollThumb.AbsoluteSize[dir]/2)
				end
				newMt:ScrollTo(math.floor(pos/thumbFrameSize*(newMt.TotalSpace-newMt.VisibleSpace)))
			end

			thumbPress = false			
			thumbFramePress = true
			doTick()
			local thumbFrameTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
				releaseEvent:Disconnect()
				thumbFramePress = false
			end)
			while thumbFramePress and not f.checkMouseInGui(scrollThumb) do
				if tick() - thumbFrameTick >= 0.3 then
					doTick()
				end
				wait()
			end
		end)

		local function texture(self,data)
			thumbColor = data.ThumbColor or Color3.new(0,0,0)
			thumbSelectColor = data.ThumbSelectColor or Color3.new(0,0,0)
			scrollThumb.BackgroundColor3 = data.ThumbColor or Color3.new(0,0,0)
			newFrame.BackgroundColor3 = data.FrameColor or Color3.new(0,0,0)
			button1.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
			button2.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
			for i,v in pairs(button1.Arrow:GetChildren()) do
				v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
			end
			for i,v in pairs(button2.Arrow:GetChildren()) do
				v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
			end
		end
		newMt.Texture = texture

		local wheelIncrement = 1
		local scrollOverlay = Instance.new("ScrollingFrame")
		scrollOverlay.BackgroundTransparency = 1
		scrollOverlay.Size = UDim2.new(1,0,1,0)
		scrollOverlay.ScrollBarThickness = 0
		scrollOverlay.CanvasSize = UDim2.new(0,0,0,0)
		local scrollOverlayFrame = Instance.new("Frame",scrollOverlay)
		scrollOverlayFrame.BackgroundTransparency = 1
		scrollOverlayFrame.Size = UDim2.new(1,0,1,0)
		scrollOverlayFrame.MouseWheelForward:Connect(function()newMt:ScrollTo(newMt.Index - wheelIncrement)end)
		scrollOverlayFrame.MouseWheelBackward:Connect(function()newMt:ScrollTo(newMt.Index + wheelIncrement)end)

		local scrollUpEvent,scrollDownEvent

		local function setScrollFrame(self,frame,inc)
			wheelIncrement = inc or self.Increment
			if scrollUpEvent then scrollUpEvent:Disconnect() scrollUpEvent = nil end
			if scrollDownEvent then scrollDownEvent:Disconnect() scrollDownEvent = nil end
			scrollUpEvent = frame.MouseWheelForward:Connect(function()newMt:ScrollTo(newMt.Index - wheelIncrement)end)
			scrollDownEvent = frame.MouseWheelBackward:Connect(function()newMt:ScrollTo(newMt.Index + wheelIncrement)end)
			newMt.ScrollFrame = frame
			--scrollOverlay.Parent = frame
		end
		newMt.SetScrollFrame = setScrollFrame

		newMt.Update = update
		newMt:Texture({
			--FrameColor = Color3.new(80/255,80/255,80/255),
			--ThumbColor = Color3.new(120/255,120/255,120/255),
			--ThumbSelectColor = Color3.new(140/255,140/255,140/255),
			--ButtonColor = Color3.new(163/255,162/255,165/255),
			--ArrowColor = Color3.new(220/255,220/255,220/255)
			ThumbColor = Color3.fromRGB(60,60,60),
			ThumbSelectColor = Color3.fromRGB(75,75,75),
			ArrowColor = Color3.new(1,1,1),
			FrameColor = Color3.fromRGB(40,40,40),
			ButtonColor = Color3.fromRGB(75,75,75)
		})
		update()
		return newMt
	end
end
return ScrollBar
