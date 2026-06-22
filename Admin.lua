-- Touch fling gui

-- Gui to Lua (VIP VERSION)
-- Version: 6.9

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ToggleFrame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local ToggleIndicator = Instance.new("Frame")
local StatusLabel = Instance.new("TextLabel")
local CreditLabel = Instance.new("TextLabel")
local ESPToggleFrame = Instance.new("Frame")
local ESPToggleButton = Instance.new("TextButton")
local ESPToggleIndicator = Instance.new("Frame")
local ESPStatusLabel = Instance.new("TextLabel")
local AntiFlingToggleFrame = Instance.new("Frame")
local AntiFlingToggleButton = Instance.new("TextButton")
local AntiFlingToggleIndicator = Instance.new("Frame")
local AntiFlingStatusLabel = Instance.new("TextLabel")
local NoclipToggleFrame = Instance.new("Frame")
local NoclipToggleButton = Instance.new("TextButton")
local NoclipToggleIndicator = Instance.new("Frame")
local NoclipStatusLabel = Instance.new("TextLabel")
local InfiniteYieldButton = Instance.new("TextButton")
local InfiniteYieldStatusLabel = Instance.new("TextLabel")
local AboutButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local UICorner_InfiniteYield = Instance.new("UICorner")
local UICorner_Main = Instance.new("UICorner")
local UICorner_Top = Instance.new("UICorner")
local UICorner_Toggle = Instance.new("UICorner")
local UICorner_Indicator = Instance.new("UICorner")
local UICorner_ESPToggle = Instance.new("UICorner")
local UICorner_ESPIndicator = Instance.new("UICorner")
local UICorner_AntiFlingToggle = Instance.new("UICorner")
local UICorner_AntiFlingIndicator = Instance.new("UICorner")
local UICorner_NoclipToggle = Instance.new("UICorner")
local UICorner_NoclipIndicator = Instance.new("UICorner")
local UICorner_About = Instance.new("UICorner")
local UICorner_Minimize = Instance.new("UICorner")
local UICorner_Close = Instance.new("UICorner")
local Gradient = Instance.new("UIGradient")

-- About Fenster
local AboutFrame = Instance.new("Frame")
local AboutFrame_Top = Instance.new("Frame")
local AboutTitle = Instance.new("TextLabel")
local AboutCloseButton = Instance.new("TextButton")
local AboutContentFrame = Instance.new("Frame")
local AboutCreditLabel = Instance.new("TextLabel")
local AboutCopyrightLabel = Instance.new("TextLabel")
local AboutYoutubeLabel = Instance.new("TextLabel")
local AboutDiscordButton = Instance.new("TextButton")
local AboutCopyDiscordButton = Instance.new("TextButton")
local AboutCopyStatusLabel = Instance.new("TextLabel")
local UICorner_AboutFrame = Instance.new("UICorner")
local UICorner_AboutTop = Instance.new("UICorner")
local UICorner_AboutDiscord = Instance.new("UICorner")
local UICorner_AboutCopy = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
print("sub to DuplexScripts")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.388539821, 0, 0.25, 0)
Frame.Size = UDim2.new(0, 158, 0, 320)

UICorner_Main.CornerRadius = UDim.new(0, 8)
UICorner_Main.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 158, 0, 30)

UICorner_Top.CornerRadius = UDim.new(0, 8)
UICorner_Top.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.05, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 30)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Touch Fling"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 100, 100)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 150, 50)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 100, 100)),
})
Gradient.Rotation = 90
Gradient.Parent = TextLabel

-- Minimize Button
MinimizeButton.Parent = Frame_2
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 50)
MinimizeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.72, 0, 0.15, 0)
MinimizeButton.Size = UDim2.new(0, 18, 0, 18)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.TextSize = 14.000
MinimizeButton.AutoButtonColor = false

UICorner_Minimize.CornerRadius = UDim.new(0, 4)
UICorner_Minimize.Parent = MinimizeButton

-- Close Button
CloseButton.Parent = Frame_2
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.85, 0, 0.15, 0)
CloseButton.Size = UDim2.new(0, 18, 0, 18)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14.000
CloseButton.AutoButtonColor = false

UICorner_Close.CornerRadius = UDim.new(0, 4)
UICorner_Close.Parent = CloseButton

CreditLabel.Parent = Frame
CreditLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.BackgroundTransparency = 1.000
CreditLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CreditLabel.BorderSizePixel = 0
CreditLabel.Position = UDim2.new(0, 0, 0.94, 0)
CreditLabel.Size = UDim2.new(0, 158, 0, 15)
CreditLabel.Font = Enum.Font.Gotham
CreditLabel.Text = "made by lzhenweidev"
CreditLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
CreditLabel.TextSize = 10.000

-- Fling Toggle Switch
ToggleFrame.Parent = Frame
ToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Position = UDim2.new(0.5, -25, 0.12, 0)
ToggleFrame.Size = UDim2.new(0, 50, 0, 22)

UICorner_Toggle.CornerRadius = UDim.new(1, 0)
UICorner_Toggle.Parent = ToggleFrame

ToggleButton.Parent = ToggleFrame
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Size = UDim2.new(0, 50, 0, 22)
ToggleButton.Text = ""
ToggleButton.AutoButtonColor = false

ToggleIndicator.Parent = ToggleFrame
ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
ToggleIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleIndicator.BorderSizePixel = 0
ToggleIndicator.Position = UDim2.new(0.05, 0, 0.12, 0)
ToggleIndicator.Size = UDim2.new(0, 16, 0, 16)

UICorner_Indicator.CornerRadius = UDim.new(1, 0)
UICorner_Indicator.Parent = ToggleIndicator

StatusLabel.Parent = Frame
StatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.BackgroundTransparency = 1.000
StatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
StatusLabel.BorderSizePixel = 0
StatusLabel.Position = UDim2.new(0, 0, 0.20, 0)
StatusLabel.Size = UDim2.new(0, 158, 0, 20)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Fling: OFF"
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
StatusLabel.TextSize = 12.000

-- ESP Toggle
ESPToggleFrame.Parent = Frame
ESPToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ESPToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPToggleFrame.BorderSizePixel = 0
ESPToggleFrame.Position = UDim2.new(0.5, -25, 0.29, 0)
ESPToggleFrame.Size = UDim2.new(0, 50, 0, 22)

UICorner_ESPToggle.CornerRadius = UDim.new(1, 0)
UICorner_ESPToggle.Parent = ESPToggleFrame

ESPToggleButton.Parent = ESPToggleFrame
ESPToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPToggleButton.BackgroundTransparency = 1.000
ESPToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPToggleButton.BorderSizePixel = 0
ESPToggleButton.Size = UDim2.new(0, 50, 0, 22)
ESPToggleButton.Text = ""
ESPToggleButton.AutoButtonColor = false

ESPToggleIndicator.Parent = ESPToggleFrame
ESPToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
ESPToggleIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPToggleIndicator.BorderSizePixel = 0
ESPToggleIndicator.Position = UDim2.new(0.05, 0, 0.12, 0)
ESPToggleIndicator.Size = UDim2.new(0, 16, 0, 16)

UICorner_ESPIndicator.CornerRadius = UDim.new(1, 0)
UICorner_ESPIndicator.Parent = ESPToggleIndicator

ESPStatusLabel.Parent = Frame
ESPStatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPStatusLabel.BackgroundTransparency = 1.000
ESPStatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPStatusLabel.BorderSizePixel = 0
ESPStatusLabel.Position = UDim2.new(0, 0, 0.37, 0)
ESPStatusLabel.Size = UDim2.new(0, 158, 0, 20)
ESPStatusLabel.Font = Enum.Font.Gotham
ESPStatusLabel.Text = "ESP: OFF"
ESPStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
ESPStatusLabel.TextSize = 12.000

-- Anti-Fling Toggle
AntiFlingToggleFrame.Parent = Frame
AntiFlingToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AntiFlingToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFlingToggleFrame.BorderSizePixel = 0
AntiFlingToggleFrame.Position = UDim2.new(0.5, -25, 0.46, 0)
AntiFlingToggleFrame.Size = UDim2.new(0, 50, 0, 22)

UICorner_AntiFlingToggle.CornerRadius = UDim.new(1, 0)
UICorner_AntiFlingToggle.Parent = AntiFlingToggleFrame

AntiFlingToggleButton.Parent = AntiFlingToggleFrame
AntiFlingToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiFlingToggleButton.BackgroundTransparency = 1.000
AntiFlingToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFlingToggleButton.BorderSizePixel = 0
AntiFlingToggleButton.Size = UDim2.new(0, 50, 0, 22)
AntiFlingToggleButton.Text = ""
AntiFlingToggleButton.AutoButtonColor = false

AntiFlingToggleIndicator.Parent = AntiFlingToggleFrame
AntiFlingToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
AntiFlingToggleIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFlingToggleIndicator.BorderSizePixel = 0
AntiFlingToggleIndicator.Position = UDim2.new(0.05, 0, 0.12, 0)
AntiFlingToggleIndicator.Size = UDim2.new(0, 16, 0, 16)

UICorner_AntiFlingIndicator.CornerRadius = UDim.new(1, 0)
UICorner_AntiFlingIndicator.Parent = AntiFlingToggleIndicator

AntiFlingStatusLabel.Parent = Frame
AntiFlingStatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiFlingStatusLabel.BackgroundTransparency = 1.000
AntiFlingStatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFlingStatusLabel.BorderSizePixel = 0
AntiFlingStatusLabel.Position = UDim2.new(0, 0, 0.54, 0)
AntiFlingStatusLabel.Size = UDim2.new(0, 158, 0, 20)
AntiFlingStatusLabel.Font = Enum.Font.Gotham
AntiFlingStatusLabel.Text = "Anti-Fling: OFF"
AntiFlingStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
AntiFlingStatusLabel.TextSize = 12.000

-- Noclip Toggle
NoclipToggleFrame.Parent = Frame
NoclipToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
NoclipToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipToggleFrame.BorderSizePixel = 0
NoclipToggleFrame.Position = UDim2.new(0.5, -25, 0.63, 0)
NoclipToggleFrame.Size = UDim2.new(0, 50, 0, 22)

UICorner_NoclipToggle.CornerRadius = UDim.new(1, 0)
UICorner_NoclipToggle.Parent = NoclipToggleFrame

NoclipToggleButton.Parent = NoclipToggleFrame
NoclipToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoclipToggleButton.BackgroundTransparency = 1.000
NoclipToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipToggleButton.BorderSizePixel = 0
NoclipToggleButton.Size = UDim2.new(0, 50, 0, 22)
NoclipToggleButton.Text = ""
NoclipToggleButton.AutoButtonColor = false

NoclipToggleIndicator.Parent = NoclipToggleFrame
NoclipToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
NoclipToggleIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipToggleIndicator.BorderSizePixel = 0
NoclipToggleIndicator.Position = UDim2.new(0.05, 0, 0.12, 0)
NoclipToggleIndicator.Size = UDim2.new(0, 16, 0, 16)

UICorner_NoclipIndicator.CornerRadius = UDim.new(1, 0)
UICorner_NoclipIndicator.Parent = NoclipToggleIndicator

NoclipStatusLabel.Parent = Frame
NoclipStatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoclipStatusLabel.BackgroundTransparency = 1.000
NoclipStatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipStatusLabel.BorderSizePixel = 0
NoclipStatusLabel.Position = UDim2.new(0, 0, 0.71, 0)
NoclipStatusLabel.Size = UDim2.new(0, 158, 0, 20)
NoclipStatusLabel.Font = Enum.Font.Gotham
NoclipStatusLabel.Text = "Noclip: OFF"
NoclipStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
NoclipStatusLabel.TextSize = 12.000

-- Infinite Yield Button
InfiniteYieldButton.Parent = Frame
InfiniteYieldButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
InfiniteYieldButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYieldButton.BorderSizePixel = 0
InfiniteYieldButton.Position = UDim2.new(0.1, 0, 0.80, 0)
InfiniteYieldButton.Size = UDim2.new(0, 80, 0, 25)
InfiniteYieldButton.Font = Enum.Font.GothamBold
InfiniteYieldButton.Text = "Inf Yield"
InfiniteYieldButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYieldButton.TextSize = 10.000
InfiniteYieldButton.AutoButtonColor = true

UICorner_InfiniteYield.CornerRadius = UDim.new(0, 4)
UICorner_InfiniteYield.Parent = InfiniteYieldButton

-- About Button
AboutButton.Parent = Frame
AboutButton.BackgroundColor3 = Color3.fromRGB(100, 100, 150)
AboutButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutButton.BorderSizePixel = 0
AboutButton.Position = UDim2.new(0.63, 0, 0.80, 0)
AboutButton.Size = UDim2.new(0, 45, 0, 25)
AboutButton.Font = Enum.Font.GothamBold
AboutButton.Text = "About"
AboutButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutButton.TextSize = 10.000
AboutButton.AutoButtonColor = true

UICorner_About.CornerRadius = UDim.new(0, 4)
UICorner_About.Parent = AboutButton

-- Infinite Yield Status Label
InfiniteYieldStatusLabel.Parent = Frame
InfiniteYieldStatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYieldStatusLabel.BackgroundTransparency = 1.000
InfiniteYieldStatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYieldStatusLabel.BorderSizePixel = 0
InfiniteYieldStatusLabel.Position = UDim2.new(0, 0, 0.89, 0)
InfiniteYieldStatusLabel.Size = UDim2.new(0, 158, 0, 15)
InfiniteYieldStatusLabel.Font = Enum.Font.Gotham
InfiniteYieldStatusLabel.Text = ""
InfiniteYieldStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
InfiniteYieldStatusLabel.TextSize = 9.000

-- ============= ABOUT FENSTER =============

AboutFrame.Parent = ScreenGui
AboutFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AboutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutFrame.BorderSizePixel = 0
AboutFrame.Position = UDim2.new(0.42, 0, 0.35, 0)
AboutFrame.Size = UDim2.new(0, 200, 0, 170)
AboutFrame.Visible = false
AboutFrame.Active = true
AboutFrame.Draggable = true

UICorner_AboutFrame.CornerRadius = UDim.new(0, 8)
UICorner_AboutFrame.Parent = AboutFrame

AboutFrame_Top.Parent = AboutFrame
AboutFrame_Top.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AboutFrame_Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutFrame_Top.BorderSizePixel = 0
AboutFrame_Top.Size = UDim2.new(0, 200, 0, 30)

UICorner_AboutTop.CornerRadius = UDim.new(0, 8)
UICorner_AboutTop.Parent = AboutFrame_Top

AboutTitle.Parent = AboutFrame_Top
AboutTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutTitle.BackgroundTransparency = 1.000
AboutTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutTitle.BorderSizePixel = 0
AboutTitle.Position = UDim2.new(0.05, 0, 0, 0)
AboutTitle.Size = UDim2.new(0, 150, 0, 30)
AboutTitle.Font = Enum.Font.GothamBold
AboutTitle.Text = "About"
AboutTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutTitle.TextSize = 16.000
AboutTitle.TextXAlignment = Enum.TextXAlignment.Left

AboutCloseButton.Parent = AboutFrame_Top
AboutCloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
AboutCloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutCloseButton.BorderSizePixel = 0
AboutCloseButton.Position = UDim2.new(0.88, 0, 0.15, 0)
AboutCloseButton.Size = UDim2.new(0, 18, 0, 18)
AboutCloseButton.Font = Enum.Font.GothamBold
AboutCloseButton.Text = "×"
AboutCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutCloseButton.TextSize = 14.000
AboutCloseButton.AutoButtonColor = false

local UICorner_AboutClose = Instance.new("UICorner")
UICorner_AboutClose.CornerRadius = UDim.new(0, 4)
UICorner_AboutClose.Parent = AboutCloseButton

AboutContentFrame.Parent = AboutFrame
AboutContentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutContentFrame.BackgroundTransparency = 1.000
AboutContentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutContentFrame.BorderSizePixel = 0
AboutContentFrame.Position = UDim2.new(0, 0, 0.18, 0)
AboutContentFrame.Size = UDim2.new(0, 200, 0, 140)

AboutCreditLabel.Parent = AboutContentFrame
AboutCreditLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutCreditLabel.BackgroundTransparency = 1.000
AboutCreditLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutCreditLabel.BorderSizePixel = 0
AboutCreditLabel.Position = UDim2.new(0, 0, 0.05, 0)
AboutCreditLabel.Size = UDim2.new(0, 200, 0, 20)
AboutCreditLabel.Font = Enum.Font.GothamBold
AboutCreditLabel.Text = "by lzhenweidev"
AboutCreditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutCreditLabel.TextSize = 14.000

AboutCopyrightLabel.Parent = AboutContentFrame
AboutCopyrightLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutCopyrightLabel.BackgroundTransparency = 1.000
AboutCopyrightLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutCopyrightLabel.BorderSizePixel = 0
AboutCopyrightLabel.Position = UDim2.new(0, 0, 0.22, 0)
AboutCopyrightLabel.Size = UDim2.new(0, 200, 0, 15)
AboutCopyrightLabel.Font = Enum.Font.Gotham
AboutCopyrightLabel.Text = "Copyright © 2026"
AboutCopyrightLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
AboutCopyrightLabel.TextSize = 10.000

AboutYoutubeLabel.Parent = AboutContentFrame
AboutYoutubeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutYoutubeLabel.BackgroundTransparency = 1.000
AboutYoutubeLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutYoutubeLabel.BorderSizePixel = 0
AboutYoutubeLabel.Position = UDim2.new(0, 0, 0.36, 0)
AboutYoutubeLabel.Size = UDim2.new(0, 200, 0, 15)
AboutYoutubeLabel.Font = Enum.Font.Gotham
AboutYoutubeLabel.Text = "YouTube: lzw"
AboutYoutubeLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
AboutYoutubeLabel.TextSize = 11.000

AboutDiscordButton.Parent = AboutContentFrame
AboutDiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
AboutDiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutDiscordButton.BorderSizePixel = 0
AboutDiscordButton.Position = UDim2.new(0.15, 0, 0.55, 0)
AboutDiscordButton.Size = UDim2.new(0, 140, 0, 28)
AboutDiscordButton.Font = Enum.Font.GothamBold
AboutDiscordButton.Text = "Join Discord"
AboutDiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutDiscordButton.TextSize = 12.000
AboutDiscordButton.AutoButtonColor = true

UICorner_AboutDiscord.CornerRadius = UDim.new(0, 4)
UICorner_AboutDiscord.Parent = AboutDiscordButton

AboutCopyDiscordButton.Parent = AboutContentFrame
AboutCopyDiscordButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AboutCopyDiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutCopyDiscordButton.BorderSizePixel = 0
AboutCopyDiscordButton.Position = UDim2.new(0.15, 0, 0.78, 0)
AboutCopyDiscordButton.Size = UDim2.new(0, 140, 0, 22)
AboutCopyDiscordButton.Font = Enum.Font.Gotham
AboutCopyDiscordButton.Text = "Copy Discord Link"
AboutCopyDiscordButton.TextColor3 = Color3.fromRGB(200, 200, 200)
AboutCopyDiscordButton.TextSize = 10.000
AboutCopyDiscordButton.AutoButtonColor = true

UICorner_AboutCopy.CornerRadius = UDim.new(0, 4)
UICorner_AboutCopy.Parent = AboutCopyDiscordButton

AboutCopyStatusLabel.Parent = AboutContentFrame
AboutCopyStatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutCopyStatusLabel.BackgroundTransparency = 1.000
AboutCopyStatusLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutCopyStatusLabel.BorderSizePixel = 0
AboutCopyStatusLabel.Position = UDim2.new(0, 0, 0.95, 0)
AboutCopyStatusLabel.Size = UDim2.new(0, 200, 0, 12)
AboutCopyStatusLabel.Font = Enum.Font.Gotham
AboutCopyStatusLabel.Text = ""
AboutCopyStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
AboutCopyStatusLabel.TextSize = 9.000

-- ============= SCRIPTS =============

-- Main Frame Draggable
local function makeDraggable()
    local script = Instance.new('LocalScript', Frame)
    script.Parent.Active = true
    script.Parent.Draggable = true
end
coroutine.wrap(makeDraggable)()

-- Minimize/Close Funktionen
local function TitlebarScript()
    local script = Instance.new('LocalScript', Frame_2)
    local frame = script.Parent.Parent
    local contentVisible = true
    
    -- Liste aller Content-Elemente (alles außer Titlebar)
    local contentElements = {
        CreditLabel,
        ToggleFrame, StatusLabel,
        ESPToggleFrame, ESPStatusLabel,
        AntiFlingToggleFrame, AntiFlingStatusLabel,
        NoclipToggleFrame, NoclipStatusLabel,
        InfiniteYieldButton, InfiniteYieldStatusLabel,
        AboutButton
    }
    
    MinimizeButton.MouseButton1Click:Connect(function()
        contentVisible = not contentVisible
        
        if contentVisible then
            -- Maximieren
            frame.Size = UDim2.new(0, 158, 0, 320)
            MinimizeButton.Text = "-"
            for _, element in ipairs(contentElements) do
                element.Visible = true
            end
        else
            -- Minimieren
            frame.Size = UDim2.new(0, 158, 0, 30)
            MinimizeButton.Text = "+"
            for _, element in ipairs(contentElements) do
                element.Visible = false
            end
        end
    end)
    
    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
end
coroutine.wrap(TitlebarScript)()

-- About Fenster Funktionen
local function AboutScript()
    AboutButton.MouseButton1Click:Connect(function()
        AboutFrame.Visible = true
    end)
    
    AboutCloseButton.MouseButton1Click:Connect(function()
        AboutFrame.Visible = false
    end)
    
    AboutDiscordButton.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/tFYPZPnCBn")
        AboutCopyStatusLabel.Text = "✓ Link copied!"
        AboutCopyStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        task.wait(2)
        AboutCopyStatusLabel.Text = ""
    end)
    
    AboutCopyDiscordButton.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/tFYPZPnCBn")
        AboutCopyStatusLabel.Text = "✓ Link copied!"
        AboutCopyStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        task.wait(2)
        AboutCopyStatusLabel.Text = ""
    end)
end
coroutine.wrap(AboutScript)()

-- ORIGINAL FLING SCRIPT (UNVERÄNDERT)
local function IIMAWH_fake_script()
    local script = Instance.new('LocalScript', ToggleButton)

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    
    local toggleButton = script.Parent
    local hiddenfling = false
    local flingThread 
    if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
        local detection = Instance.new("Decal")
        detection.Name = "juisdfj0i32i0eidsuf0iok"
        detection.Parent = ReplicatedStorage
    end
    
    local function fling()
        local lp = Players.LocalPlayer
        local c, hrp, vel, movel = nil, nil, nil, 0.1
    
        while hiddenfling do
            RunService.Heartbeat:Wait()
            c = lp.Character
            hrp = c and c:FindFirstChild("HumanoidRootPart")
    
            if hrp then
                vel = hrp.Velocity
                hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
                RunService.RenderStepped:Wait()
                hrp.Velocity = vel
                RunService.Stepped:Wait()
                hrp.Velocity = vel + Vector3.new(0, movel, 0)
                movel = -movel
            end
        end
    end
    
    local function updateToggleVisual()
        if hiddenfling then
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(80, 180, 80)
            ToggleIndicator:TweenPosition(
                UDim2.new(1, -20, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            StatusLabel.Text = "Fling: ON"
            StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            ToggleIndicator:TweenPosition(
                UDim2.new(0.05, 0, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            StatusLabel.Text = "Fling: OFF"
            StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        end
    end
    
    toggleButton.MouseButton1Click:Connect(function()
        hiddenfling = not hiddenfling
        updateToggleVisual()
    
        if hiddenfling then
            flingThread = coroutine.create(fling)
            coroutine.resume(flingThread)
        else
            hiddenfling = false
        end
    end)
    
    updateToggleVisual()
end
coroutine.wrap(IIMAWH_fake_script)()

-- STABILER ESP - ERKENNT ALLE SPIELER
local function ESPScript()
    local script = Instance.new('LocalScript', ESPToggleButton)
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local espEnabled = false
    local playerHighlights = {}
    local playerBillboards = {}
    local tracers = {}
    local updateConnection = nil
    
    local function removeESP(player)
        if playerHighlights[player] then
            pcall(function() playerHighlights[player]:Destroy() end)
            playerHighlights[player] = nil
        end
        
        if playerBillboards[player] then
            pcall(function() playerBillboards[player]:Destroy() end)
            playerBillboards[player] = nil
        end
        
        if tracers[player] then
            pcall(function() tracers[player]:Remove() end)
            tracers[player] = nil
        end
    end
    
    local function addESP(player)
        if player == Players.LocalPlayer then return end
        
        local function setup()
            local character = player.Character
            if not character then
                task.wait(0.5)
                character = player.Character
                if not character then return end
            end
            
            local head = character:FindFirstChild("Head")
            if not head then
                task.wait(0.5)
                head = character:FindFirstChild("Head")
                if not head then return end
            end
            
            removeESP(player)
            
            local highlight = Instance.new("Highlight")
            highlight.Parent = character
            highlight.Adornee = character
            highlight.FillColor = Color3.fromRGB(255, 100, 50)
            highlight.FillTransparency = 0.85
            highlight.OutlineColor = Color3.fromRGB(255, 100, 50)
            highlight.OutlineTransparency = 0.3
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            playerHighlights[player] = highlight
            
            local billboard = Instance.new("BillboardGui")
            billboard.Parent = head
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 200, 0, 40)
            billboard.StudsOffset = Vector3.new(0, 2.5, 0)
            billboard.AlwaysOnTop = true
            billboard.MaxDistance = 100000
            billboard.ClipsDescendants = false
            
            local frame = Instance.new("Frame")
            frame.Parent = billboard
            frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            frame.BackgroundTransparency = 0.5
            frame.BorderSizePixel = 0
            frame.Size = UDim2.new(1, 0, 0, 30)
            
            local nameLabel = Instance.new("TextLabel")
            nameLabel.Parent = frame
            nameLabel.BackgroundTransparency = 1
            nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
            nameLabel.Font = Enum.Font.GothamBold
            nameLabel.Text = player.Name
            nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            nameLabel.TextSize = 13
            nameLabel.TextStrokeTransparency = 0.5
            
            local distanceLabel = Instance.new("TextLabel")
            distanceLabel.Parent = frame
            distanceLabel.BackgroundTransparency = 1
            distanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
            distanceLabel.Size = UDim2.new(1, 0, 0.5, 0)
            distanceLabel.Font = Enum.Font.Gotham
            distanceLabel.Text = "0m"
            distanceLabel.TextColor3 = Color3.fromRGB(255, 100, 50)
            distanceLabel.TextSize = 11
            distanceLabel.TextStrokeTransparency = 0.5
            
            playerBillboards[player] = {
                billboard = billboard,
                distanceLabel = distanceLabel,
                head = head
            }
            
            local tracer = Drawing.new("Line")
            tracer.Thickness = 1
            tracer.Color = Color3.fromRGB(255, 100, 50)
            tracer.Transparency = 0.5
            tracer.Visible = false
            tracers[player] = tracer
            
            player.CharacterAdded:Connect(function(newChar)
                removeESP(player)
                task.wait(0.5)
                if espEnabled then
                    setup()
                end
            end)
        end
        
        setup()
    end
    
    local function updateESP()
        updateConnection = RunService.RenderStepped:Connect(function()
            if not espEnabled then return end
            
            local localPlayer = Players.LocalPlayer
            local camera = workspace.CurrentCamera
            if not camera then return end
            
            local localChar = localPlayer.Character
            if not localChar then return end
            
            local localHead = localChar:FindFirstChild("Head")
            if not localHead then return end
            
            for player, data in pairs(playerBillboards) do
                pcall(function()
                    if data.head and data.head.Parent then
                        local distance = (localHead.Position - data.head.Position).Magnitude
                        
                        if data.distanceLabel and data.distanceLabel.Parent then
                            data.distanceLabel.Text = string.format("%.0fm", distance)
                        end
                        
                        if tracers[player] then
                            local screenPos, onScreen = camera:WorldToViewportPoint(data.head.Position)
                            local localScreenPos = camera:WorldToViewportPoint(localHead.Position)
                            
                            if onScreen then
                                tracers[player].From = Vector2.new(localScreenPos.X, localScreenPos.Y)
                                tracers[player].To = Vector2.new(screenPos.X, screenPos.Y)
                                tracers[player].Visible = true
                            else
                                tracers[player].Visible = false
                            end
                        end
                    else
                        removeESP(player)
                    end
                end)
            end
            
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= localPlayer then
                    if not playerHighlights[player] and player.Character then
                        addESP(player)
                    end
                end
            end
        end)
    end
    
    script.Parent.MouseButton1Click:Connect(function()
        espEnabled = not espEnabled
        
        if espEnabled then
            ESPToggleFrame.BackgroundColor3 = Color3.fromRGB(80, 180, 80)
            ESPToggleIndicator:TweenPosition(
                UDim2.new(1, -20, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            ESPToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ESPStatusLabel.Text = "ESP: ON"
            ESPStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
            
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= Players.LocalPlayer then
                    addESP(player)
                end
            end
            
            Players.PlayerAdded:Connect(function(player)
                if espEnabled then
                    task.wait(0.5)
                    addESP(player)
                end
            end)
            
            Players.PlayerRemoving:Connect(function(player)
                removeESP(player)
            end)
            
            updateESP()
            
        else
            ESPToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            ESPToggleIndicator:TweenPosition(
                UDim2.new(0.05, 0, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            ESPToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            ESPStatusLabel.Text = "ESP: OFF"
            ESPStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            
            if updateConnection then
                updateConnection:Disconnect()
                updateConnection = nil
            end
            
            for player, _ in pairs(playerHighlights) do
                removeESP(player)
            end
        end
    end)
end
coroutine.wrap(ESPScript)()

-- VERBESSERTES ANTI-FLING SCRIPT
local function AntiFlingScript()
    local script = Instance.new('LocalScript', AntiFlingToggleButton)
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local antiFlingEnabled = false
    local antiFlingConnection = nil
    local lastSafePosition = nil
    local lastVelocity = Vector3.new(0, 0, 0)
    
    local function updateAntiFlingVisual()
        if antiFlingEnabled then
            AntiFlingToggleFrame.BackgroundColor3 = Color3.fromRGB(80, 180, 80)
            AntiFlingToggleIndicator:TweenPosition(
                UDim2.new(1, -20, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            AntiFlingToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AntiFlingStatusLabel.Text = "Anti-Fling: ON"
            AntiFlingStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
            AntiFlingToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            AntiFlingToggleIndicator:TweenPosition(
                UDim2.new(0.05, 0, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            AntiFlingToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            AntiFlingStatusLabel.Text = "Anti-Fling: OFF"
            AntiFlingStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        end
    end
    
    local function antiFling()
        local lp = Players.LocalPlayer
        
        antiFlingConnection = RunService.Stepped:Connect(function()
            if not antiFlingEnabled then return end
            
            local character = lp.Character
            if not character then 
                lastSafePosition = nil
                return 
            end
            
            local hrp = character:FindFirstChild("HumanoidRootPart")
            if not hrp then 
                lastSafePosition = nil
                return 
            end
            
            local currentVelocity = hrp.Velocity
            local speed = currentVelocity.Magnitude
            
            if speed > 500 then
                hrp.Velocity = Vector3.new(0, 0, 0)
                
                pcall(function()
                    hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                end)
                
                if lastSafePosition then
                    pcall(function()
                        hrp.CFrame = CFrame.new(lastSafePosition)
                    end)
                end
                
                task.wait(0.1)
            end
            
            if speed < 100 then
                lastSafePosition = hrp.Position
            end
            
            lastVelocity = currentVelocity
        end)
    end
    
    script.Parent.MouseButton1Click:Connect(function()
        antiFlingEnabled = not antiFlingEnabled
        updateAntiFlingVisual()
        
        if antiFlingEnabled then
            antiFling()
        else
            if antiFlingConnection then
                antiFlingConnection:Disconnect()
                antiFlingConnection = nil
            end
            lastSafePosition = nil
        end
    end)
    
    updateAntiFlingVisual()
end
coroutine.wrap(AntiFlingScript)()

-- NOCLIP SCRIPT
local function NoclipScript()
    local script = Instance.new('LocalScript', NoclipToggleButton)
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local noclipEnabled = false
    local noclipConnection = nil
    
    local function updateNoclipVisual()
        if noclipEnabled then
            NoclipToggleFrame.BackgroundColor3 = Color3.fromRGB(80, 180, 80)
            NoclipToggleIndicator:TweenPosition(
                UDim2.new(1, -20, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            NoclipToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NoclipStatusLabel.Text = "Noclip: ON"
            NoclipStatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
            NoclipToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            NoclipToggleIndicator:TweenPosition(
                UDim2.new(0.05, 0, 0.12, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2
            )
            NoclipToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            NoclipStatusLabel.Text = "Noclip: OFF"
            NoclipStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        end
    end
    
    local function noclip()
        local lp = Players.LocalPlayer
        
        noclipConnection = RunService.Stepped:Connect(function()
            if not noclipEnabled then return end
            
            local character = lp.Character
            if not character then return end
            
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    end
    
    Players.LocalPlayer.CharacterAdded:Connect(function(character)
        if noclipEnabled then
            task.wait(0.1)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
    
    script.Parent.MouseButton1Click:Connect(function()
        noclipEnabled = not noclipEnabled
        updateNoclipVisual()
        
        if noclipEnabled then
            noclip()
            
            local character = Players.LocalPlayer.Character
            if character then
                for _, part in ipairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
            
            local character = Players.LocalPlayer.Character
            if character then
                for _, part in ipairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end)
    
    updateNoclipVisual()
end
coroutine.wrap(NoclipScript)()

-- INFINITE YIELD LOADER MIT STATUS
local function InfiniteYieldLoader()
    local script = Instance.new('LocalScript', InfiniteYieldButton)
    local button = script.Parent
    local statusLabel = InfiniteYieldStatusLabel
    local isLoading = false
    
    button.MouseButton1Click:Connect(function()
        if isLoading then return end
        isLoading = true
        
        statusLabel.Text = "Loading..."
        statusLabel.TextColor3 = Color3.fromRGB(255, 200, 50)
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 50)
        button.Text = "Loading..."
        
        local success, result = pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)
        
        if success then
            statusLabel.Text = "✓ Loaded Successfully"
            statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
            button.BackgroundColor3 = Color3.fromRGB(60, 120, 60)
            button.Text = "Inf Yield"
            
            task.wait(3)
            statusLabel.Text = ""
            button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        else
            statusLabel.Text = "✗ Failed to Load"
            statusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
            button.BackgroundColor3 = Color3.fromRGB(120, 40, 40)
            button.Text = "Retry?"
            
            task.wait(3)
            statusLabel.Text = ""
            button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
            button.Text = "Inf Yield"
        end
        
        isLoading = false
    end)
end
coroutine.wrap(InfiniteYieldLoader)()
