-- 4.3

local Workspace = game.Workspace
local ReplicatedStorage = game.ReplicatedStorage
local SoundService = game.SoundService
local TweenService = game.TweenService
local hintModule = require(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild(".scripts"):WaitForChild("mainHud"):WaitForChild("hintModule"))
local Players = game.Players
local player = Players.LocalPlayer
local gui = player.PlayerGui
local char = player.Character
player.CharacterAdded:Connect(function()
	char = player.Character
  hintModule = require(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild(".scripts"):WaitForChild("mainHud"):WaitForChild("hintModule"))
end)

local boldfont = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
local semiboldfont = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
local normalfont = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)

local TPTable = {
	[1] = {
		['name'] = "players",
	},
	[2] = {
		['name'] = "mall",
		[1] = {
			['name'] = "parking",
			['position'] = Vector3.new(-802, -3, -68),
			['image'] = "http://www.roblox.com/asset/?id=17474832112",
		},
		[2] = {
			['name'] = "club",
			['position'] = Vector3.new(-1156, 23, -258),
			['image'] = "http://www.roblox.com/asset/?id=17474838618",
		},
		[3] = {
			['name'] = "parking top",
			['position'] = Vector3.new(-1145, 78, 136),
			['image'] = "http://www.roblox.com/asset/?id=17474842703",
		},
		[4] = {
			['name'] = "courtyard",
			['position'] = Vector3.new(-903, 9, -362),
			['image'] = "rbxassetid://0",
		}
	},
	[3] = {
		["name"] = "tunnels",
	},
	[4] = {
		['name'] = "russia",
		[1] = {
			['name'] = "benny's",
			['position'] = Vector3.new(-154, 11, -421),
			['image'] = "http://www.roblox.com/asset/?id=17474849339"
		},
		[2] = {
			['name'] = "cyberia",
			['position'] = Vector3.new(-99, 13, -559),
			['image'] = "http://www.roblox.com/asset/?id=17474853712"
		},
		[3] = {
			['name'] = "garage",
			['position'] = Vector3.new(-472, 20, -1118),
			['image'] = "rbxassetid://0"
		},
		[4] = {
			['name'] = "rooftop",
			['position'] = Vector3.new(107, 115, -762),
			['image'] = "rbxassetid://0"
		},
		[5] = {
			['name'] = "other rooftop",
			['position'] = Vector3.new(-427, 85, -1016),
			['image'] = "rbxassetid://0"
		},
	[5] = {
		['name'] = 'outpost',
		[1] = {
			['name'] = 'tower',
			['position'] = Vector3.new(95, 27, -1557),
			['image'] = 'rbxassetid://115044501344439'
		},
		[2] = {
			['name'] = 'bunker',
			['position'] = Vector3.new(93, 12, -2015),
			['image'] = 'rbxassetid://82266224792985'
		},
		[3] = {
			['name'] = 'rooftop',
			['position'] = Vector3.new(109, 49.1161728, -1845),
			['image'] = 'rbxassetid://122365354877840'
		},
		[4] = {
			['name'] = 'house',
			['position'] = Vector3.new(-177, 21, -1816),
			['image'] = 'rbxassetid://123163204300219'
		},
	},
	[6] = {
		['name'] = "port",
		[1] = {
			['name'] = "garage",
			['position'] = Vector3.new(-539, 15, 1153),
			['image'] = "http://www.roblox.com/asset/?id=17474862971"
		},
		[2] = { --wanna mispelled this as nennys
			['name'] = "benny's",
			['position'] = Vector3.new(-771, 15, 1778),
			['image'] = "http://www.roblox.com/asset/?id=17474866882"
		}
	},
	[7] = {
		['name'] = "airport",
		[1] =  {
			['name'] = "294",
			['position'] = Vector3.new(-2470, 42, 1260),
			['image'] = "http://www.roblox.com/asset/?id=17474871389"
		},
		[2] = {
			['name'] = "bathroom",
			['position'] = Vector3.new(-3034, 42, 1383),
			['image'] = "http://www.roblox.com/asset/?id=17483675268"
		}
	},
	[8] = {
		['name'] = "backrooms",
		[1] = {
			['name'] = "entrance",
			['position'] = Vector3.new(-1325, -91, 66),
			['image'] = "http://www.roblox.com/asset/?id=17483450780"
		},
		[2] = {
			['name'] = "pitfalls",
			['position'] = Vector3.new(-1887, -91, 54),
			['image'] = "http://www.roblox.com/asset/?id=17483455185"
		},
		[3] = {
			['name'] = "gate",
			['position'] = Vector3.new(-1565, -91, 465),
			['image'] = "http://www.roblox.com/asset/?id=17483457814"
		},
	},
	[9] = {
		['name'] = "hotel",
		[1] = {
			['name'] = "room",
			['position'] = Vector3.new(-1709, 327, -483),
			['image'] = "http://www.roblox.com/asset/?id=17483496833"
		},
		[2] = {
			['name'] = "slides",
			['position'] = Vector3.new(-1456, 263, -510),
			['image'] = "http://www.roblox.com/asset/?id=17483499340"
		},
		[3] = {
			['name'] = "wellness",
			['position'] = Vector3.new(-1675, 196, -655),
			['image'] = "http://www.roblox.com/asset/?id=17483509567"
		},
		[4] = {
			['name'] = "pool",
			['position'] = Vector3.new(-1521, 186, -661),
			['image'] = "rbxassetid://0"
		}
	},
	[10] = {
		['name'] = "poolrooms",
		[1] = {
			['name'] = "first floor",
			['position'] = Vector3.new(-1673, 450, -675),
			['image'] = "http://www.roblox.com/asset/?id=17483634427"
		},
		[2] = {
			['name'] = "second floor",
			['position'] = Vector3.new(-1598, 472, -636),
			['image'] = "http://www.roblox.com/asset/?id=17483636298"
		},
		[3] = {
			['name'] = "third floor",
			['position'] = Vector3.new(-1966, 492, -295),
			['image'] = "http://www.roblox.com/asset/?id=17483639103"
		},
		[4] = {
			['name'] = "tunnel",
			['position'] = Vector3.new(-2001, 503, -709),
			['image'] = "rbxassetid://0"
		}
	},
	[11] = {
		['name'] = "flatgrass",
		[1] = {
			['name'] = "spawn",
			['position'] = Vector3.new(183, 541, -1157),
			['image'] = "rbxassetid://0"
		},
		[2] = {
			['name'] = "hidden room",
			['position'] = Vector3.new(175, 487, -1226),
			['image'] = "rbxassetid://0"
		}
	},
	[12] = {
		['name'] = "playground",
		[1] = {
			['name'] = "spawn",
			['position'] = Vector3.new(-3087, -303, -1072),
			['image'] = "rbxassetid://0"
		},
		[2] = {
			['name'] = "nn_mapnameiforgotlol",
			['position'] = Vector3.new(-2951, -256, -418),
			['image'] = "rbxassetid://0"
		}
	},
	[13] = {
		['name'] = "bigmaze",
		[1] = {
			['name'] = "spawn",
			['position'] = Vector3.new(1112, 41, -1560),
			['image'] = "rbxassetid://0"
		},
		[2] = {
			['name'] = "tower top",
			['position'] = Vector3.new(2009, 165, -1080),
			['image'] = "rbxassetid://0"
		}
	},
	[14] = {
		['name'] = "dreammaze",
		[1] = {
			['name'] = "top spawn",
			['position'] = Vector3.new(694, -179, -2094),
			['image'] = "rbxassetid://0"
		},
		[2] = {
			['name'] = "pit",
			['position'] = Vector3.new(345, -239, -188),
			['image'] = "rbxassetid://0"
		}
	}
}

function Teleport(position)
	Workspace[player.Name].HumanoidRootPart.CFrame = CFrame.new(position)
end

function uic(Parent, Strenght)
	Instance.new("UICorner", Parent).CornerRadius = UDim.new(0,Strenght)
end
function uip(Parent, left, right, top, bottom)
	local padding = Instance.new("UIPadding", Parent)
	padding.PaddingLeft = UDim.new(0,left)
	padding.PaddingRight = UDim.new(0,right)
	padding.PaddingTop = UDim.new(0,top)
	padding.PaddingBottom = UDim.new(0,bottom)
end
function uigl(Parent, padding, size)
	local gridlayout = Instance.new("UIGridLayout", Parent)
	gridlayout.CellPadding = padding
	gridlayout.CellSize = size
	gridlayout.SortOrder = Enum.SortOrder.LayoutOrder
end
function uill(Parent, padding)
	local listlayout = Instance.new("UIListLayout", Parent)
	listlayout.Padding = padding
	listlayout.FillDirection = Enum.FillDirection.Vertical
	listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	listlayout.SortOrder = Enum.SortOrder.LayoutOrder
	listlayout.VerticalAlignment = Enum.VerticalAlignment.Top
end
function uisc(Parent, max, min)
	local sizeconstraint = Instance.new("UISizeConstraint", Parent)
	sizeconstraint.MaxSize = max
	sizeconstraint.MinSize = min
end

function create_tab_button(name, order, color)
	local button = Instance.new("TextButton", TopbarTabsHolder)
	button.Name = name .. "tab"
	button.LayoutOrder = order
	button.BackgroundColor3 = color
	button.BackgroundTransparency = .8
	button.FontFace = semiboldfont
	button.Text = name
	button.TextColor3 = Color3.new(1,1,1)
	button.TextSize = 18
	uic(button, 4)

	local outline = Instance.new("UIStroke", button)
	outline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	outline.Color = Color3.new(1,1,1)
	outline.Transparency = .5
end
function create_tab(name)
	local tab = Instance.new("ScrollingFrame", tabholder)
	tab.Name = name .. "tab"
	tab.BackgroundTransparency = 1
	tab.BorderSizePixel = 0
	tab.Size = UDim2.new(1,0,1,0)
	tab.CanvasSize = UDim2.new(0,0,1,0)
	tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	tab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	tab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	tab.ElasticBehavior = Enum.ElasticBehavior.Always
	tab.ScrollBarImageTransparency = .75
	tab.ScrollBarThickness = 6
	tab.ScrollingDirection = Enum.ScrollingDirection.Y
	tab.ClipsDescendants = true
	uill(tab, UDim.new(0,12))
	uip(tab, 8,8,8,8)
end

function create_sfx(name, id, vol)
	sound = Instance.new("Sound", SfxFolder)
	sound.Name = name
	sound.SoundId = id
	sound.Volume = vol
end

local loadingHint = hintModule.new("loading adro's script...")
hintModule.Appear(loadingHint)

screengui = Instance.new("ScreenGui", gui)
screengui.Enabled = false
screengui.Name = "scriptPanel"
screengui.ResetOnSpawn = false
screengui.DisplayOrder = 10
screengui.IgnoreGuiInset = true

mouselock = Instance.new("TextButton", screengui)
mouselock.BackgroundTransparency = 1
mouselock.Text = ""
mouselock.Size = UDim2.new(0,2,0,2)
mouselock.Modal = true

SfxFolder = Instance.new("Folder", screengui)
SfxFolder.Name = "sfx"
create_sfx("click", "rbxassetid://10150792962", 1)
clicksfx = SfxFolder.click

scriptPanel = Instance.new("Frame", screengui)
scriptPanel.Name = "main"
scriptPanel.AnchorPoint = Vector2.new(.5,.5)
scriptPanel.BackgroundColor3 = Color3.new(0,0,0)
scriptPanel.Position = UDim2.new(.5,0,.5,8)
scriptPanel.Size = UDim2.new(.625,0,.75,0)
scriptPanel.BackgroundTransparency = .25
uic(scriptPanel,8)

uisc(scriptPanel, Vector2.new(1200,900), Vector2.new(482,0))

scriptPanelBg = Instance.new("ImageButton", scriptPanel)
scriptPanelBg.Name = "background"
scriptPanelBg.Image = ""
scriptPanelBg.BackgroundTransparency = 1
scriptPanelBg.Size = UDim2.new(1,0,1,0)
scriptPanelBg.ZIndex = -999
scriptPanelBg.ImageColor3 = scriptPanel.BackgroundColor3
scriptPanelBgGrad = Instance.new("ImageLabel", scriptPanelBg)
scriptPanelBgGrad.Name = "gradient"
scriptPanelBgGrad.BackgroundTransparency = 1
scriptPanelBgGrad.Position = UDim2.new(0,0,.4,0)
scriptPanelBgGrad.Size = UDim2.new(1,0,.6,0)
scriptPanelBgGrad.Image = "rbxassetid://12320989495"
scriptPanelBgGrad.ImageColor3 = Color3.new(.1,1,0)
scriptPanelBgGrad.ImageTransparency = .75
scriptPanelBgGrad.ScaleType = Enum.ScaleType.Tile
scriptPanelBgGrad.TileSize = UDim2.new(1,0,0,4)
uic(scriptPanelBgGrad, 8)

scriptPanelBgGradGrad = Instance.new("UIGradient", scriptPanelBgGrad)
scriptPanelBgGradGrad.Rotation = -90
scriptPanelBgGradGrad.Transparency = NumberSequence.new(0,1)

Topbar = Instance.new("Frame", scriptPanel)
Topbar.Name = 'topbar'
Topbar.BackgroundColor3 = Color3.new(0,0,0)
Topbar.BackgroundTransparency = .75
Topbar.Size = UDim2.new(1,0,0,32)
uic(Topbar, 8)
uip(Topbar, 8,4,0,0)

TopbarTitle = Instance.new("TextLabel", Topbar)
TopbarTitle.BackgroundTransparency = 1
TopbarTitle.Size = UDim2.new(0,32,1,0)
TopbarTitle.Text = "cool script"
TopbarTitle.FontFace = boldfont
TopbarTitle.TextTransparency = .25
TopbarTitle.TextColor3 = Color3.new(1,1,1)
TopbarTitle.TextSize = 24
TopbarTitle.TextXAlignment = Enum.TextXAlignment.Left

TopbarTabsHolder = Instance.new("Frame", Topbar)
TopbarTabsHolder.Name = "tabs"
TopbarTabsHolder.AnchorPoint = Vector2.new(1,0)
TopbarTabsHolder.BackgroundTransparency = 1
TopbarTabsHolder.Position = UDim2.new(1,0,0,0)
TopbarTabsHolder.Size = UDim2.new(1,-120,1,0)
uip(TopbarTabsHolder,0,0,4,4)
uigl(TopbarTabsHolder, UDim2.new(0,6,0,0), UDim2.new(.15,0,1,0))
TopbarTabsHolder.UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right

create_tab_button("funny stuff", 0, Color3.new(.3,1,.3))
create_tab_button("player", 1, Color3.new(.3,1,.3))
create_tab_button("game", 2, Color3.new(.3,.6,1))
create_tab_button("teleport", 4, Color3.new(1,1,0))
create_tab_button("auto", 5, Color3.new(.3,1,.3))

local PlayerTabButton = TopbarTabsHolder.playertab
local GameTabButton = TopbarTabsHolder.gametab
local TeleportTabButton = TopbarTabsHolder.teleporttab
local AutoTabButton = TopbarTabsHolder.autotab

tabholder = Instance.new("Frame", scriptPanel)
tabholder.Name = "tabs"
tabholder.AnchorPoint = Vector2.new(0,1)
tabholder.BackgroundTransparency = 1
tabholder.Position = UDim2.new(0,0,1,0)
tabholder.Size = UDim2.new(1,0,1,-32)
tabholder.ClipsDescendants = true
tabholder.Active = false
uill(tabholder, UDim.new(0,12))
uip(tabholder,8,8,8,8)

create_tab("player")
PlayerTab = tabholder.playertab

PlayerTabTop = Instance.new("Frame", PlayerTab)
PlayerTabTop.Name = "top"
PlayerTabTop.LayoutOrder = 1
PlayerTabTop.BackgroundTransparency = 1
PlayerTabTop.Position = UDim2.new(.5,0,0,8)
PlayerTabTop.Size = UDim2.new(1,-120,0,100)
PlayerTabTop.Active = false
uisc(PlayerTabTop, Vector2.new(600,99999), Vector2.new(0,0))

PlayerTabCurrentPlayer = Instance.new("Frame", PlayerTabTop)
PlayerTabCurrentPlayer.Name = "player"
PlayerTabCurrentPlayer.AnchorPoint =  Vector2.new(-1,0)
PlayerTabCurrentPlayer.BackgroundColor3 = Color3.new(0,0,0)
PlayerTabCurrentPlayer.BackgroundTransparency = .75
PlayerTabCurrentPlayer.Size = UDim2.new(1,0,0,96)
PlayerTabCurrentPlayer.ZIndex = -5
uic(PlayerTabCurrentPlayer, 4)
uip(PlayerTabCurrentPlayer, 8,8,8,8)

PlayerTabCurrentPlayerInfo = Instance.new("Frame", PlayerTabCurrentPlayer)
PlayerTabCurrentPlayerInfo.Name = "info"
PlayerTabCurrentPlayerInfo.AnchorPoint = Vector2.new(1,0)
PlayerTabCurrentPlayerInfo.BackgroundTransparency = 1
PlayerTabCurrentPlayerInfo.Position = UDim2.new(1,0,0,0)
PlayerTabCurrentPlayerInfo.Size = UDim2.new(1,-88,1,0)
PlayerTabCurrentPlayerInfo.Active = false
uill(PlayerTabCurrentPlayerInfo, UDim.new(0,10))

PlayerTabCurrentPlayerInfoName = Instance.new("TextLabel", PlayerTabCurrentPlayerInfo)
PlayerTabCurrentPlayerInfoName.Name = "name"
PlayerTabCurrentPlayerInfoName.LayoutOrder = 1
PlayerTabCurrentPlayerInfoName.AnchorPoint = Vector2.new(1,0)
PlayerTabCurrentPlayerInfoName.BackgroundTransparency = .95
PlayerTabCurrentPlayerInfoName.Size = UDim2.new(1,0,0,20)
PlayerTabCurrentPlayerInfoName.RichText = true
PlayerTabCurrentPlayerInfoName.TextXAlignment = Enum.TextXAlignment.Left
PlayerTabCurrentPlayerInfoName.FontFace = semiboldfont
PlayerTabCurrentPlayerInfoName.Text = "    <font color ='rgb(138, 255, 66)' >".. game.Players.LocalPlayer.DisplayName .."</font> <font color='rgb(65, 120, 31)'>(@".. game.Players.LocalPlayer.Name ..")</font>"
PlayerTabCurrentPlayerInfoName.TextSize = 16
PlayerTabCurrentPlayerInfoName.TextTransparency = .5

PlayerTabCurrentPlayerInfoId = Instance.new("TextLabel", PlayerTabCurrentPlayerInfo)
PlayerTabCurrentPlayerInfoId.Name = "id"
PlayerTabCurrentPlayerInfoId.LayoutOrder = 1
PlayerTabCurrentPlayerInfoId.AnchorPoint = Vector2.new(1,0)
PlayerTabCurrentPlayerInfoId.BackgroundTransparency = .95
PlayerTabCurrentPlayerInfoId.Size = UDim2.new(1,0,0,20)
PlayerTabCurrentPlayerInfoId.RichText = true
PlayerTabCurrentPlayerInfoId.TextXAlignment = Enum.TextXAlignment.Left
PlayerTabCurrentPlayerInfoId.FontFace = semiboldfont
PlayerTabCurrentPlayerInfoId.Text = "    id: <font color='#8aff42'>".. game.Players.LocalPlayer.UserId .."</font>"
PlayerTabCurrentPlayerInfoId.TextColor3 = Color3.new(1,1,1)
PlayerTabCurrentPlayerInfoId.TextSize = 16
PlayerTabCurrentPlayerInfoId.TextTransparency = .5

PlayerTabCurrentPlayerInfoAge = Instance.new("TextLabel", PlayerTabCurrentPlayerInfo)
PlayerTabCurrentPlayerInfoAge.Name = "id"
PlayerTabCurrentPlayerInfoAge.LayoutOrder = 1
PlayerTabCurrentPlayerInfoAge.AnchorPoint = Vector2.new(1,0)
PlayerTabCurrentPlayerInfoAge.BackgroundTransparency = .95
PlayerTabCurrentPlayerInfoAge.Size = UDim2.new(1,0,0,20)
PlayerTabCurrentPlayerInfoAge.RichText = true
PlayerTabCurrentPlayerInfoAge.TextXAlignment = Enum.TextXAlignment.Left
PlayerTabCurrentPlayerInfoAge.FontFace = semiboldfont
PlayerTabCurrentPlayerInfoAge.Text = "    account age: <font color='#8aff42'>account age (fixing this)</font>"
PlayerTabCurrentPlayerInfoAge.TextColor3 = Color3.new(1,1,1)
PlayerTabCurrentPlayerInfoAge.TextSize = 16
PlayerTabCurrentPlayerInfoAge.TextTransparency = .5

PlayerTabCurrentPlayerHeadshot = Instance.new("ImageLabel", PlayerTabCurrentPlayer)
PlayerTabCurrentPlayerHeadshot.Name = "headshot"
PlayerTabCurrentPlayerHeadshot.BackgroundTransparency = .95
PlayerTabCurrentPlayerHeadshot.Size = UDim2.new(0,80,1,0)
PlayerTabCurrentPlayerHeadshot.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
uic(PlayerTabCurrentPlayerHeadshot, 8)
uip(PlayerTabCurrentPlayerHeadshot, 3,3,3,3)

PlayerTabMiddle = Instance.new('Frame', PlayerTab)
PlayerTabMiddle.Name = 'middle'
PlayerTabMiddle.LayoutOrder = 2
PlayerTabMiddle.AnchorPoint = Vector2.new(.5,0)
PlayerTabMiddle.AutomaticSize = Enum.AutomaticSize.Y
PlayerTabMiddle.BackgroundTransparency = 1


PlayerTabStatus = Instance.new("Frame", PlayerTab)
PlayerTabStatus.Name = "status"
PlayerTabStatus.LayoutOrder = 3
PlayerTabStatus.AnchorPoint = Vector2.new(.5,0)
PlayerTabStatus.AutomaticSize = Enum.AutomaticSize.Y
PlayerTabStatus.BackgroundTransparency = 1
PlayerTabStatus.Position = UDim2.new(.5,0,1,-8)
PlayerTabStatus.Size = UDim2.new(1,-120,0,64)
uigl(PlayerTabStatus, UDim2.new(.02,0,0,5), UDim2.new(.49,0,0,28))
uisc(PlayerTabStatus, Vector2.new(600, 99999), Vector2.new(0,0))

function playertabstatusbutton(name, order, image)
	local button = Instance.new("TextButton", PlayerTabStatus)
	button.Name = name
	button.LayoutOrder = order
	button.BackgroundColor3 = Color3.new(0,0,0)
	button.BackgroundTransparency = .75
	button.Size = UDim2.new(1,0,0,28)
	button.FontFace = semiboldfont
	button.Text = ""
	uic(button, 4)
	uill(button, UDim.new(0,4))
	button.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	button.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	local icon = Instance.new("ImageLabel", button)
	icon.BackgroundTransparency = 1
	icon.Size = UDim2.new(0,20,0,20)
	icon.LayoutOrder = 2
	icon.Image = image
	icon.ImageTransparency = .25
	icon.TileSize = UDim2.new(1,0,1,0)
	local label = Instance.new("TextLabel", button)
	label.AnchorPoint = Vector2.new(.5,.5)
	label.AutomaticSize = Enum.AutomaticSize.X
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(0,0,1,0)
	label.FontFace = semiboldfont
	label.Text = name
	label.TextColor3 = Color3.new(1,1,1)
	label.TextSize = 18
	label.TextTransparency = .25
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.TextYAlignment = Enum.TextYAlignment.Center
end

playertabstatusbutton("kill", 1, "rbxassetid://10432979417")
playertabstatusbutton("respawn", 2, "rbxassetid://16958890020")
PlayerTabStatus.respawn.ImageLabel.ImageRectSize = Vector2.new(20,20)
PlayerTabStatus.respawn.ImageLabel.ImageRectOffset = Vector2.new(0,20)
playertabstatusbutton("delete", 3, "rbxassetid://10432979417")
playertabstatusbutton("depossess", 4, "rbxassetid://16958890020")
playertabstatusbutton("rejoin", 3, "rbxassetid://12319918585")
PlayerTabStatus.rejoin.Parent = PlayerTab
uisc(PlayerTab.rejoin, Vector2.new(600, 99999), Vector2.new(0,0))
PlayerTab.rejoin.Size = UDim2.new(1,-120,0,28)
playertabstatusbutton("delete script", 4, "rbxassetid://16958890020")
PlayerTabStatus["delete script"].Parent = PlayerTab
uisc(PlayerTab["delete script"], Vector2.new(600, 99999), Vector2.new(0,0))
PlayerTab["delete script"].Size = UDim2.new(1,-120,0,28)
PlayerTab["delete script"].ImageLabel.ImageRectSize = Vector2.new(20,20)
PlayerTab["delete script"].ImageLabel.ImageRectOffset = Vector2.new(0,100)



create_tab("game")
GameTab = tabholder.gametab

GameTabEvents = Instance.new("Frame", GameTab)
GameTabEvents.Name = "events"
GameTabEvents.AutomaticSize = Enum.AutomaticSize.Y
GameTabEvents.BackgroundTransparency = 1
GameTabEvents.Size = UDim2.new(1,0,0,0)
uic(GameTabEvents, 4)
uill(GameTabEvents, UDim.new(0,4))
GameTabEvents.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
GameTabEvents.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
uip(GameTabEvents, 8,0,8,8)

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

GameTabMiddle = Instance.new("Frame", GameTab)
GameTabMiddle.LayoutOrder = 2
GameTabMiddle.Name = "middle"

GameTabValues = Instance.new("Frame", GameTab)
GameTabValues.Name = "values"
GameTabValues.LayoutOrder = 4
GameTabValues.AutomaticSize = Enum.AutomaticSize.Y
GameTabValues.BackgroundTransparency = 1
GameTabValues.Size = UDim2.new(1,0,0,0)
uigl(GameTabValues, UDim2.new(0,6,0,8), UDim2.new(.5,-6,0,24))
uisc(GameTabValues, Vector2.new(600,99999), Vector2.new(0,0))
GameTabValuesTitle = Instance.new("Frame", GameTab)
GameTabValuesTitle.Name = "valuestitle"
GameTabValuesTitle.LayoutOrder = 3
GameTabValuesTitle.BackgroundTransparency = 1
GameTabValuesTitle.Size = UDim2.new(1,0,0,24)
GameTabValuesTitleLabel = Instance.new("TextLabel", GameTabValuesTitle)
GameTabValuesTitleLabel.AnchorPoint = Vector2.new(.5,0)
GameTabValuesTitleLabel.BackgroundColor3 = Color3.new(0,0,0)
GameTabValuesTitleLabel.BackgroundTransparency = .75
GameTabValuesTitleLabel.Position = UDim2.new(.5,0,0,0)
GameTabValuesTitleLabel.Size = UDim2.new(.25,0,1,0)
GameTabValuesTitleLabel.FontFace = semiboldfont
GameTabValuesTitleLabel.Text = "specific values"
GameTabValuesTitleLabel.TextSize = 18
GameTabValuesTitleLabel.TextColor3 = Color3.new(1,1,1)
GameTabValuesTitleLabel.TextTransparency = .25
uic(GameTabValuesTitleLabel, 4)

local CoordsFrame = gui.hud.main.Frame.leveling:Clone()
CoordsFrame.Parent = gui.hud.main.Frame
CoordsFrame.LayoutOrder = 10
CoordsFrame.Name = "coords"
CoordsFrame.Visible = false
CoordsFrame.lower:Destroy()
CoordsFrame.levelVisualizer:Destroy()
CoordsFrame.upper.lvl:Destroy()
CoordsFrame.UIListLayout:Destroy()
CoordsFrame.UIPadding:Destroy()
CoordsFrame.upper.Size = UDim2.new(1,0,1,0)
local CoordsLabel = CoordsFrame.upper.xp
CoordsLabel.Name = "label"
CoordsLabel.Size = UDim2.new(1,0,1,-4)
CoordsLabel.TextSize = 16
CoordsLabel.TextColor3 = Color3.new(1,1,1)
CoordsLabel.TextScaled = false
CoordsLabel.TextXAlignment = Enum.TextXAlignment.Center
CoordsLabel.Text = "x:0, y:0, z:0"

char.HumanoidRootPart:GetPropertyChangedSignal("Position"):Connect(function()
	CoordsLabel.Text = "x:" .. math.round(char.HumanoidRootPart.Position.X) .. " y:" .. math.round(char.HumanoidRootPart.Position.Y) .. " z:" .. math.round(char.HumanoidRootPart.Position.Z)
end)

function create_specific_value(name, type, default, callback)
	local value = Instance.new("Frame", GameTabValues)
	value.Name = name
	value.BackgroundColor3 = Color3.new(0,0,0)
	value.BackgroundTransparency = .5
	uic(value, 4)
	uip(value, 4,4,0,0)
	local title = Instance.new("TextLabel", value)
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(.5,0,0,0)
	title.Size = UDim2.new(0,0,1,0)
	title.FontFace = semiboldfont
	title.Text = name
	title.TextSize = 18
	title.TextColor3 = Color3.new(1,1,1)
	title.TextTransparency = .25

	if type == "textbox" then
		local input = Instance.new("ImageLabel", value)
		input.BackgroundTransparency = 1
		input.AnchorPoint = Vector2.new(1,.5)
		input.Position = UDim2.new(1,0,.5,0)
		input.Size = UDim2.new(0,60,0,28)
		input.Image = "rbxassetid://12483103360"
		input.ImageRectOffset = Vector2.new(24,0)
		input.ImageRectSize = Vector2.new(24,24)
		input.ImageTransparency = .25
		input.ScaleType = Enum.ScaleType.Slice
		input.SliceCenter = Rect.new(8,8,18,18)
		input.TileSize = UDim2.new(1,0,1,0)
		local textbox = Instance.new("TextBox", input)
		textbox.BackgroundTransparency = 1
		textbox.CursorPosition = 1
		textbox.Position = UDim2.new(0,5,0,5)
		textbox.ShowNativeInput = true
		textbox.Size = UDim2.new(1,-10,1,-10)
		textbox.ClipsDescendants = true
		textbox.FontFace = semiboldfont
		textbox.PlaceholderColor3 = Color3.new(.5,.5,.5)
		textbox.PlaceholderText = default
		textbox.Text = default
		textbox.TextColor3 = Color3.new(1,1,1)
		textbox.TextSize = 16
		textbox.TextTransparency = .25
		textbox.TextXAlignment = Enum.TextXAlignment.Center
		textbox:GetPropertyChangedSignal("Text"):Connect(callback)
	else
		local input = Instance.new("ImageButton", value)
		input.AnchorPoint = Vector2.new(1,.5)
		input.BackgroundTransparency = 1
		input.Position = UDim2.new(1,0,.5,0)
		input.Size = UDim2.new(0,24,0,24)
		input.Image = "rbxassetid://12483103360"
		input.ImageRectOffset = Vector2.new(24,0)
		input.ImageRectSize = Vector2.new(24,24)
		input.ScaleType = Enum.ScaleType.Stretch
		input.TileSize = UDim2.new(1,0,1,0)
		input:SetAttribute("Active", default)
		input.Active = default
		input.ImageRectOffset = Vector2.new(24,0)
		if input.Active then
			input.ImageRectOffset = Vector2.new(0,0)
		end
		input.MouseButton1Click:Connect(function() 
			input.Active = not input.Active
			input.ImageRectOffset = Vector2.new(24,0)
			if input.Active then
				input.ImageRectOffset = Vector2.new(0,0)
			end
			clicksfx:Play()
			callback()
		end)
		input:GetPropertyChangedSignal("ImageRectOffset"):Connect(callback)
	end
end

create_specific_value("ragdoll multiplier", "textbox", 1, function()
	ReplicatedStorage.module.specificsModule.RagdollCrawlMultiplier.Value = GameTabValues["ragdoll multiplier"].ImageLabel.TextBox.Text
end)
create_specific_value("gravity", "textbox", 100, function()
	Workspace.Gravity = GameTabValues["gravity"].ImageLabel.TextBox.Text
end)
create_specific_value("sprint speed", "textbox", 30, function()
	ReplicatedStorage.module.specificsModule.SprintSpeed.Value = GameTabValues["sprint speed"].ImageLabel.TextBox.Text
end)
create_specific_value("walk speed", "textbox", 10, function()
	ReplicatedStorage.module.specificsModule.WalkSpeed.Value = GameTabValues["walk speed"].ImageLabel.TextBox.Text
end)
create_specific_value("crouch speed", "textbox", 5, function()
	ReplicatedStorage.module.specificsModule.CrouchSpeed.Value = GameTabValues["crouch speed"].ImageLabel.TextBox.Text
end)
create_specific_value("max speed", "textbox", 150, function()
	ReplicatedStorage.module.specificsModule.MaxSpeed.Value = GameTabValues["max speed"].ImageLabel.TextBox.Text
end)
create_specific_value("sliding control", "checkbox", false, function()
	ReplicatedStorage.module.specificsModule.SlidingControl.Value = GameTabValues["sliding control"].ImageButton.Active
end)
create_specific_value("doppler scale", "textbox", 22, function()
	SoundService.DopplerScale = GameTabValues["doppler scale"].ImageLabel.TextBox.Text
end)
create_specific_value("fullbright", "checkbox", false, function()
	if GameTabValues["fullbright"].ImageButton.Active then
		game.Lighting.Ambient = Color3.new(1,1,1)
	end
end)
create_specific_value("inf jump", "checkbox", false, function() return end)
create_specific_value("auto bhop", "checkbox", false, function() return end)
create_specific_value('retro prompts', 'checkbox', false, function()
	if GameTabValues["retro prompts"].ImageButton.Active then
		ReplicatedStorage.values.rounds.roundmap.Value = 'nn_voxel'
	else
		ReplicatedStorage.values.rounds.roundmap.Value = ''
	end
end)
create_specific_value('show coordinates', 'checkbox',false, function()
  print('test')
  CoordsFrame.Visible = GameTabValues['show coordinates'].ImageButton.Active
end)



create_tab("teleport")
TeleportTab = tabholder.teleporttab

function create_tp_section(name, order)
	local title = Instance.new("TextButton", TeleportTab)
	title.Name = name .. "title"
	title.LayoutOrder = order
	title.BackgroundColor3 = Color3.new(0,0,0)
	title.BackgroundTransparency = .75
	title.Size = UDim2.new(0,128,0,24)
	title.FontFace = semiboldfont
	title.TextSize = 18
	title.TextColor3 = Color3.new(1,1,1)
	title.TextTransparency = .25
	title.Text = name
	local button = Instance.new("ImageButton", title)
	button.BackgroundColor3 = Color3.new(0,0,0)
	button.BackgroundTransparency = .75
	button.Position = UDim2.new(1,8,0,0)
	button.Size = UDim2.new(0,24,0,24)
	button.Image = "rbxassetid://0"
	uic(button, 4)
	uic(title, 4)
	local frame = Instance.new("Frame", TeleportTab)
	frame.Name = name
	frame.Visible = false
	frame.LayoutOrder = order + 1
	frame.AutomaticSize = Enum.AutomaticSize.Y
	frame.BackgroundColor3 = Color3.new(0,0,0)
	frame.BackgroundTransparency = .75
	frame.Size = UDim2.new(1,0,0,0)
	uic(frame, 4)
	uigl(frame, UDim2.new(0,8,0,8), UDim2.new(.5,-8,0,96))
	uip(frame, 8,0,8,8)
	button.MouseButton1Click:Connect(function()
		frame.Visible = not frame.Visible
		if frame.Visible then
			button.ImageRectOffset = Vector2.new(0,24)
			button.ImageRectSize = Vector2.new(24,-24)
		else
			button.ImageRectOffset = Vector2.new(0,0)
			button.ImageRectSize = Vector2.new(24,24)
		end
		clicksfx:Play()
	end)
	title.MouseButton1Click:Connect(function()
		--ReplicatedStorage.events.player.char.changezone:FireServer("nn_" .. title.Text)
		player.Team = game.Teams:WaitForChild("nn_" .. title.Text)
	end)
end

tpindex = 1
for map,mtable in ipairs(TPTable) do
	create_tp_section(TPTable[map]['name'], tpindex)
	if tpindex > 17 then
		TeleportTab[TPTable[map]['name']].Visible = false
	end
	local tplindex = 1
	for location,ltable in ipairs(TPTable[map]) do
		local image = Instance.new("ImageButton", TeleportTab[TPTable[map]['name']])
		image.LayoutOrder = tplindex
		image.Name = TPTable[map][location]['name']
		image.BackgroundTransparency = .95
		image.Image = ltable['image']
		image.ImageTransparency = .5
		image.ScaleType = Enum.ScaleType.Crop
		uic(image, 8)
		local label = Instance.new("TextLabel", image)
		label.BackgroundTransparency = 1
		label.Position = UDim2.new(0,0,.5,-12)
		label.Size = UDim2.new(1,0,0,24)
		label.FontFace = boldfont
		label.Text = TPTable[map][location]['name']
		label.TextColor3 = Color3.new(1,1,1)
		label.TextSize = 24
		label.TextTransparency = .25
		image.MouseButton1Click:Connect(function()
			--[[if image.Parent.Name ~= 'oob' or image.Parent.name ~= 'players' then
				ReplicatedStorage.events.player.char.changezone:FireServer("nn_" .. image.Parent.Name)
			end]]
       local thint = hintModule.new("teleported to " .. image.TextLabel.Text)
       hintModule.Appear(thint)
			Teleport(ltable['position'])
       task.wait(1)
       hintModule.Close(thint)
		end)
		tplindex += 1
	end
	tpindex += 2
end
TeleportTab.players.UIGridLayout.CellSize = UDim2.new(0,80,0,80)

if game.ReplicatedStorage.culledMaps:FindFirstChild("nn_hotel") then
	local map = game.ReplicatedStorage.culledMaps.nn_hotel
	map:SetAttribute('NormallyHide', false)
end
if game.ReplicatedStorage.culledMaps:FindFirstChild("nn_poolrooms") then
	local map = game.ReplicatedStorage.culledMaps.nn_poolrooms
	map:SetAttribute('NormallyHide', false)
end

function update_player_teleports()
	local playerstable = Players:GetPlayers()
	for i,v in playerstable do
		if not TeleportTab.players:FindFirstChild(v.Name) and (not (v.Name == player.Name)) then
			local button = Instance.new("ImageButton", TeleportTab.players)
			button.Name = v.Name
			button.Image = game.Players:GetUserThumbnailAsync(v.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
			button.ImageTransparency = .25
			button.BackgroundTransparency = .75
			button.BackgroundColor3 = Color3.new(0,0,0)
			uic(button, 4)
			local label = Instance.new("TextLabel", button)
			label.Position = UDim2.new(.5,0,1,0)
			label.Size = UDim2.new(0,0,0,-16)
			label.BackgroundColor3 = Color3.new(0,0,0)
			label.BackgroundTransparency = .75
			label.FontFace = semiboldfont
			label.Text = v.DisplayName
			label.TextSize = 14
			label.TextColor3 = Color3.new(1,1,1)
			label.TextTransparency = .25
			uic(label, 4)
			button.MouseButton1Click:Connect(function()
         local thint = hintModule.new("teleported to " .. v.DisplayName)
         hintModule.Appear(thint)
				Teleport(game.Workspace[button.Name].HumanoidRootPart.Position)
         task.wait(1)
         hintModule.Close(thint)
			end)
		end
		wait()
	end
	for i,v in TeleportTab.players:GetChildren() do
		if v:IsA("ImageButton") and (not Players:FindFirstChild(v.Name)) then
			v:Destroy()
		end
		wait()
	end
end

create_tab("auto")
AutoTab = tabholder.autotab

AutoTab.UIListLayout:Destroy()
uigl(AutoTab, UDim2.new(0,5,0,5), UDim2.new(.5,-4,0,28))

function create_auto_button(name)
	local label = Instance.new("TextLabel", AutoTab)
	label.Name = name
	label.BackgroundTransparency = .75
	label.BackgroundColor3 = Color3.new(0,0,0)
	label.FontFace = semiboldfont
	label.Text = name
	label.TextSize = 18
	label.TextColor3 = Color3.new(1,1,1)
	label.TextTransparency = .25
	uic(label, 4)
	uip(label, 4,4,0,0)
	local checkbox = Instance.new("ImageButton", label)
	checkbox.BackgroundTransparency = 1
	checkbox.Position = UDim2.new(1,0,.5,0)
	checkbox.Size = UDim2.new(0,24,0,24)
	checkbox.AnchorPoint = Vector2.new(1,.5)
	checkbox.Image = "rbxassetid://12483103360"
	checkbox.ImageRectOffset = Vector2.new(24,0)
	checkbox.ImageRectSize = Vector2.new(24,24)
	checkbox:SetAttribute("Value", false)
	checkbox.MouseButton1Click:Connect(function()
		clicksfx:Play()
	end)
end

create_auto_button("auto farm")
create_auto_button("auto punch")
create_auto_button("equip 20 fireworks yes")
create_auto_button("use tools")

AutoTab["auto farm"].ImageButton.MouseButton1Click:Connect(function()
	local checkbox = AutoTab["auto farm"].ImageButton
	checkbox:SetAttribute("Value", not checkbox:GetAttribute("Value"))
	checkbox.ImageRectOffset = Vector2.new(24,0)
	if checkbox:GetAttribute("Value") then
		checkbox.ImageRectOffset = Vector2.zero
	end

	local radius = 500
	local vertices = 150
	local duration = .5
	local function moveTo(root, hum, pos)
		local TweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		local tween = TweenService:Create(root, TweenInfo, {CFrame = CFrame.new(pos), Velocity = Vector3.new(120, 50, 0)})
		tween:Play()
		task.wait()
		hum:ChangeState(Enum.HumanoidStateType.Landed)
		task.wait()
		hum:ChangeState(Enum.HumanoidStateType.Running)
	end
	local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
	local center = root.Position + Vector3.new(0,100,0)
	while checkbox:GetAttribute("Value") == true do
		local hum = player.Character and player.Character:FindFirstChild("Humanoid")
		if not root or not hum then continue end
		for angle = 0,360, 360/vertices do
			local x = math.cos(math.rad(angle)) * radius
			local z = math.sin(math.rad(angle)) * radius
			local newPosition = center + Vector3.new(x,0,z)
			if checkbox:GetAttribute("Value") == true then
				moveTo(root, hum, newPosition)
			end
		end
		moveTo(root, hum, center)
		wait()
	end
end)

AutoTab["auto punch"].ImageButton.MouseButton1Click:Connect(function()
	local checkbox = AutoTab["auto punch"].ImageButton
	checkbox:SetAttribute("Value", not checkbox:GetAttribute("Value"))
	checkbox.ImageRectOffset = Vector2.new(24,0)
	if checkbox:GetAttribute("Value") then
		checkbox.ImageRectOffset = Vector2.zero
		task.spawn(function()
			while checkbox:GetAttribute("Value") == true do
				game:GetService("ReplicatedStorage").events.player["local"].punch:FireServer()
				task.wait()
			end
		end)
	end
end)

AutoTab["equip 20 fireworks yes"].ImageButton.MouseButton1Click:Connect(function()
	local checkbox = AutoTab["equip 20 fireworks yes"].ImageButton
	checkbox:SetAttribute("Value", not checkbox:GetAttribute("Value"))
	checkbox.ImageRectOffset = Vector2.new(24,0)
	if checkbox:GetAttribute("Value") then
		checkbox.ImageRectOffset = Vector2.zero
	end
	ReplicatedStorage.events.game.global.shoppurchasebux:InvokeServer("Firework", "Gear", 10)
	for i = 1,10 do
		ReplicatedStorage.events.game.global.itemequip:InvokeServer("Firework", "Gear")
		player.Backpack.Firework.Parent = char
		wait()
	end
end)

AutoTab["use tools"].ImageButton.MouseButton1Click:Connect(function()
	local checkbox = AutoTab["use tools"].ImageButton
	checkbox:SetAttribute("Value", not checkbox:GetAttribute("Value"))
	checkbox.ImageRectOffset = Vector2.new(24,0)
	if checkbox:GetAttribute("Value") then
		checkbox.ImageRectOffset = Vector2.zero
	end
	for i,v in player.Backpack:GetChildren() do
		v.Parent = char
		v:Activate()
		v.Parent = player.Backpack
		wait()
	end
end)




PlayerTabCurrentPlayerValue = Instance.new("StringValue", PlayerTabCurrentPlayer)
PlayerTabCurrentPlayerValue.Name = "selected"
PlayerTabCurrentPlayerValue.Value = player.Name

PlayerTabStatus.kill.MouseButton1Click:Connect(function()
  local khint = hintModule.new("killing character...")
  hintModule.Appear(khint)
	ReplicatedStorage.events.player.char.ClientDeath:FireServer()
	clicksfx:Play()
  task.wait(2)
  hintModule.Close(khint)
end)
PlayerTabStatus.respawn.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.respawnchar:FireServer()
	clicksfx:Play()
  local rhint = hintModule.new("respawning...")
  hintModule.Appear(rhint)
end)
PlayerTabStatus.delete.MouseButton1Click:Connect(function()
  local dhint = hintModule.new("this doesnt work anymore")
  hintModule.Appear(dhint)
	ReplicatedStorage.events.player.char.removechar:FireServer()
	clicksfx:Play()
  task.wait(2)
  hintModule.Close(dhint)
end)
PlayerTabStatus.depossess.MouseButton1Click:Connect(function()
  local depossessHint = hintModule.new("depossessing...")
  hintModule.Appear(depossessHint)
	for i=1, 40 do
		game.ReplicatedStorage.events.player.char.botabilityRemote:FireServer("dash")
		wait()
	end
  hintModule.Close(depossessHint)
end)
PlayerTab.rejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
	clicksfx:Play()
end)
PlayerTab["delete script"].MouseButton1Click:Connect(function()
	screengui:Destroy()
	--game.UserInputService.JumpRequest:Disconnect()
	clicksfx:Play()
end)



ReplicatedStorage.values.events.eventCoolDown:GetPropertyChangedSignal("Value"):Connect(function()
	EventCooldownTimer.Text = "cooldown " .. ReplicatedStorage.values.events.eventCoolDown.Value
end)
ReplicatedStorage.values.events.currentevent:GetPropertyChangedSignal("Value"):Connect(function()
	CurrentEventName.Text = ReplicatedStorage.values.events.currentevent.Value
	if CurrentEventName.Text == "" then
		CurrentEventName.Text = "no event"
	end
end)
game.UserInputService.JumpRequest:Connect(function()
	if GameTabValues["inf jump"].ImageButton.Active then
		char.Humanoid:ChangeState("Jumping")
	end
end)





PlayerTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = true
	PlayerTabButton.UIStroke.Transparency = .5
	GameTab.Visible = false
	GameTabButton.UIStroke.Transparency = 1
	TeleportTab.Visible = false
	TeleportTabButton.UIStroke.Transparency = 1
	AutoTab.Visible = false
	AutoTabButton.UIStroke.Transparency = 1
	scriptPanelBgGrad.ImageColor3 = PlayerTabButton.BackgroundColor3
	clicksfx:Play()
end)
GameTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButton.UIStroke.Transparency = 1
	GameTab.Visible = true
	GameTabButton.UIStroke.Transparency = .5
	TeleportTab.Visible = false
	TeleportTabButton.UIStroke.Transparency = 1
	AutoTab.Visible = false
	AutoTabButton.UIStroke.Transparency = 1
	scriptPanelBgGrad.ImageColor3 = GameTabButton.BackgroundColor3
	clicksfx:Play()
end)
TeleportTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButton.UIStroke.Transparency = 1
	GameTab.Visible = false
	GameTabButton.UIStroke.Transparency = 1
	TeleportTab.Visible = true
	TeleportTabButton.UIStroke.Transparency = .5
	AutoTab.Visible = false
	AutoTabButton.UIStroke.Transparency = 1
	scriptPanelBgGrad.ImageColor3 = TeleportTabButton.BackgroundColor3
	clicksfx:Play()
	update_player_teleports()
end)
AutoTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButton.UIStroke.Transparency = 1
	GameTab.Visible = false
	GameTabButton.UIStroke.Transparency = 1
	TeleportTab.Visible = false
	TeleportTabButton.UIStroke.Transparency = 1
	AutoTab.Visible = true
	AutoTabButton.UIStroke.Transparency = .5
	scriptPanelBgGrad.ImageColor3 = AutoTabButton.BackgroundColor3
	clicksfx:Play()
end)

GameTabButton.UIStroke.Transparency = 1
TeleportTabButton.UIStroke.Transparency = 1
AutoTabButton.UIStroke.Transparency = 1


game.UserInputService.InputBegan:Connect(function(input, chatting)
	if (input.KeyCode == Enum.KeyCode.RightShift or input.KeyCode == Enum.KeyCode.Backquote) and (not chatting) then
		screengui.Enabled = not screengui.Enabled
		update_player_teleports()
	end
	if (input.KeyCode == Enum.KeyCode.Tab or input.KeyCode == Enum.KeyCode.G or input.KeyCode == Enum.KeyCode.B) and (not chatting) then
		screengui.Enabled = false
	end
end)
gui.topbar.MenuHolder.MenuIconHolder:WaitForChild("admin").Background.MouseButton1Click:Connect(function()
	screengui.Enabled = not screengui.Enabled
end)

screengui.Enabled = false

--random qol stuff
if gui.menu.main:FindFirstChild("news") then
	gui.menu.main.news:Destroy()
end
--[[if gui:FindFirstChild("hud") then
	gui.hud.safe.bgm.ReverbSoundEffect.DecayTime = 2
	Instance.new("PitchShiftSoundEffect", gui.hud.safe.bgm).Octave = .9 --truly qol
end
if game.StarterGui:FindFirstChild("hud") then
	game.StarterGui.hud.safe.bgm.ReverbSoundEffect.DecayTime = 2
	Instance.new("PitchShiftSoundEffect", game.StarterGui.hud.safe.bgm).Octave = .9 --truly qol
end]]

--[[serverstable = ReplicatedStorage.events.technical.FetchServers:InvokeServer()
serverlist = gui.menu.main.servers.ServerBrowser.Bottom.ServerList

function adminserverupdate() for serverindex, serverinfo in serverlist:GetChildren("TextButton") do
		if serverinfo:IsA("TextButton") then
			local id = serverinfo.Icon.ServerId.Text
			local server = serverstable['servers'][id]
			serverinfo.Gamemode.Info.Text = server['place']['name'] --gamemode
			serverinfo.Gamemode.Size = UDim2.new(.6,-85,1,0)
			serverinfo.Friends.Size = UDim2.new(.1,0,1,0)
			local memory = serverinfo.Players:Clone()
			memory.Parent = serverinfo
			memory.Name = "Memory"
			memory.Title.Text = "memory"
			memory.Info.Text = math.floor(server['stats']['memory']) .. "MB"
			local uptime = serverinfo.Players:Clone()
			uptime.Parent = serverinfo
			uptime.Name = "Uptime"
			uptime.Title.Text = "uptime"
			local hrs = math.floor(server['stats']['uptime'] / 3600)
			local mins = math.floor((server['stats']['uptime'] - hrs * 3600) / 60)
			local secs = math.floor(server['stats']['uptime'] - hrs * 3600 - mins * 60)
			if not (hrs == 0) then
				uptime.Info.Text = hrs .. "h " .. mins .. "m " .. secs .. "s"
			else if not (mins == 0) then
					uptime.Info.Text = mins .. "m " .. secs .. "s"
				else
					uptime.Info.Text = secs .. "s"
				end
			end
		end
		wait()
	end
end

adminserverupdate()

game.Players.LocalPlayer.PlayerGui.menu.main.servers.ServerBrowser.Top.Options.Refresh.MouseButton1Click:Connect(function()
	serverstable = game.ReplicatedStorage.events.technical.FetchServers:InvokeServer()
	wait(4.5)
	adminserverupdate()
end)]]

char.Humanoid.HealthChanged:Connect(function(health)
	if (health < 26) and (health > 0) then
		--ReplicatedStorage.events.player.char.respawnchar:FireServer()
		--Teleport(Vector3.new(-153, 1688, 33))
		--workspace.lobby:WaitForChild('lobbyzone')
		--workspace.lobby.lobbyzone.CanCollide = false
	end
end)

local map = player.Team
ReplicatedStorage.events.player.char.changezone:FireServer("nn_hotel")
task.wait(.5)
ReplicatedStorage.events.player.char.changezone:FireServer("nn_poolrooms")
task.wait(.5)
--player.PlayerScripts.game.environment.zoneLighting.Enabled = false
--player.PlayerScripts.game.environment.roundLighting.Enabled = false
ReplicatedStorage.events.player.char.changezone:FireServer(map.Name)

game:GetService("RunService").RenderStepped:Connect(function()
  if not gui:FindFirstChild("scriptPanel") then return end
  
  if GameTabValues["auto bhop"].ImageButton.Active then
		char.Humanoid.JumpPower = 28.3
	end
  
  if char:FindFirstChild("WavCrown") then
    char.WavCrown:WaitForChild("Handle"):WaitForChild('Crystals'):WaitForChild('Script').Enabled = true
  end

  if char:FindFirstChild("WavCape") then
    for i,v in char.WavCape.Handle:GetChildren() do
      if v:IsA("MeshPart") and v.Name == "Neon" then
        v.Script.Enabled = true
      end
      task.wait()
    end
  end
end)

hintModule.Close(loadingHint)

 while task.wait() do if not game.Players.LocalPlayer.Character:FindFirstChild("WavCrown") then continue end game.Players.LocalPlayer.Character.WavCrown:WaitForChild("Handle"):WaitForChild('Crystals'):WaitForChild('Script').Enabled = true end
