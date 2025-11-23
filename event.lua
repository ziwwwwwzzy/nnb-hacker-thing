GameTabCurrentEvent = Instance.new("Frame", GameTabEvents)
GameTabCurrentEvent.Name = "current event"
GameTabCurrentEvent.BackgroundColor3 = Color3.new(0,0,0)
GameTabCurrentEvent.BackgroundTransparency = .75
GameTabCurrentEvent.Size = UDim2.new(.5,0,0,96)
GameTabCurrentEvent.ZIndex = -5
uic(GameTabCurrentEvent, 4)
uill(GameTabCurrentEvent, UDim.new(0,16))
GameTabCurrentEvent.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
GameTabCurrentEvent.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
CurrentEventInfo = Instance.new("Frame", GameTabCurrentEvent)
CurrentEventInfo.Name = "info"
CurrentEventInfo.LayoutOrder = 2
CurrentEventInfo.BackgroundTransparency = 1
CurrentEventInfo.Size = UDim2.new(.5,-6,1,0)
CurrentEventName = Instance.new("TextLabel", CurrentEventInfo)
CurrentEventName.Name = "name"
CurrentEventName.AutomaticSize = Enum.AutomaticSize.X
CurrentEventName.TextXAlignment = Enum.TextXAlignment.Left
CurrentEventName.BackgroundTransparency = 1
CurrentEventName.Size = UDim2.new(1,0,1,0)
CurrentEventName.Text = ReplicatedStorage.values.events.currentevent.Value
if CurrentEventName.Text == "" then
	CurrentEventName.Text = "no event"
end
CurrentEventName.FontFace = boldfont
CurrentEventName.TextSize = 32
CurrentEventName.TextColor3 = Color3.new(1,1,1)
CurrentEventName.TextTransparency = .25
CurrentEventIcon = Instance.new("ImageLabel", GameTabCurrentEvent)
CurrentEventIcon.Name = "icon"
CurrentEventIcon.Size = UDim2.new(.75,0,.75,0)
CurrentEventIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
CurrentEventIcon.BackgroundColor3 = Color3.new(0,0,0)
CurrentEventIcon.BackgroundTransparency = .75
uic(CurrentEventIcon, 4)

GameTabBuyEvent = Instance.new("Frame", GameTabEvents)
GameTabBuyEvent.Name = "buy"
GameTabBuyEvent.LayoutOrder = 1
GameTabBuyEvent.BackgroundTransparency = 1
GameTabBuyEvent.Size = UDim2.new(.5,0,0,96)
uill(GameTabBuyEvent, UDim.new(0,8))
EventCooldownTimer = Instance.new("TextLabel", GameTabBuyEvent)
EventCooldownTimer.Name = "cooldown"
EventCooldownTimer.BackgroundColor3 = Color3.new(0,0,0)
EventCooldownTimer.BackgroundTransparency = .75
EventCooldownTimer.Size = UDim2.new(1,-16,.5,-4)
EventCooldownTimer.Text = "cooldown " .. ReplicatedStorage.values.events.eventCoolDown.Value
EventCooldownTimer.FontFace = semiboldfont
EventCooldownTimer.TextColor3 = Color3.new(1,1,1)
EventCooldownTimer.TextSize = 18
EventCooldownTimer.TextTransparency = .25
uic(EventCooldownTimer, 4)
GameTabBuyEventDisable = Instance.new("TextButton", GameTabBuyEvent)
GameTabBuyEventDisable.Name = "disable"
GameTabBuyEventDisable.LayoutOrder = 2
GameTabBuyEventDisable.BackgroundColor3 = Color3.new(0,0,0)
GameTabBuyEventDisable.BackgroundTransparency = .75
GameTabBuyEventDisable.Size = UDim2.new(1,-16,.5,-4)
GameTabBuyEventDisable.FontFace = semiboldfont
GameTabBuyEventDisable.Text = "disable events"
GameTabBuyEventDisable.TextColor3 = Color3.new(1,1,1)
GameTabBuyEventDisable.TextSize = 18
GameTabBuyEventDisable.TextTransparency = .25
uic(GameTabBuyEventDisable,4)
GameTabBuyEventDisable.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.game.global.purchase:FireServer("jackpot")
end)
