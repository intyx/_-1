-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local crash = Instance.new("TextButton")
local breakk = Instance.new("TextButton")
local textee = Instance.new("TextBox")
local breakm = Instance.new("TextButton")
local repeate = Instance.new("TextBox")
local breakc = Instance.new("TextButton")
local tip = Instance.new("TextLabel")
local lol = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0144927539, 0, 0.604651153, 0)
Frame.Size = UDim2.new(0, 227, 0, 171)

crash.Name = "crash"
crash.Parent = Frame
crash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
crash.Position = UDim2.new(0.0396475792, 0, 0.0350877196, 0)
crash.Size = UDim2.new(0, 100, 0, 18)
crash.Font = Enum.Font.SourceSans
crash.Text = "crash server"
crash.TextColor3 = Color3.fromRGB(0, 0, 0)
crash.TextSize = 14.000

breakk.Name = "break"
breakk.Parent = Frame
breakk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
breakk.Position = UDim2.new(0.0396475792, 0, 0.187134519, 0)
breakk.Size = UDim2.new(0, 100, 0, 18)
breakk.Font = Enum.Font.SourceSans
breakk.Text = "break server"
breakkTextColor3 = Color3.fromRGB(0, 0, 0)
breakk.TextSize = 14.000

textee.Name = "textee"
textee.Parent = Frame
textee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textee.Position = UDim2.new(0.0440528616, 0, 0.350877196, 0)
textee.Size = UDim2.new(0, 99, 0, 95)
textee.Font = Enum.Font.SourceSans
textee.PlaceholderText = "text to use for crash and break server"
textee.Text = ""
textee.TextColor3 = Color3.fromRGB(0, 0, 0)
textee.TextSize = 14.000
textee.TextWrapped = true
textee.TextXAlignment = Enum.TextXAlignment.Left
textee.TextYAlignment = Enum.TextYAlignment.Top

breakm.Name = "breakm"
breakm.Parent = Frame
breakm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
breakm.Position = UDim2.new(0.51982379, 0, 0.0350877345, 0)
breakm.Size = UDim2.new(0, 100, 0, 18)
breakm.Font = Enum.Font.SourceSans
breakm.Text = "break music"
breakm.TextColor3 = Color3.fromRGB(0, 0, 0)
breakm.TextSize = 14.000

repeate.Name = "repeate"
repeate.Parent = Frame
repeate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
repeate.Position = UDim2.new(0.51982379, 0, 0.350877166, 0)
repeate.Size = UDim2.new(0, 99, 0, 20)
repeate.Font = Enum.Font.SourceSans
repeate.PlaceholderText = "repeat break server"
repeate.Text = ""
repeate.TextColor3 = Color3.fromRGB(0, 0, 0)
repeate.TextScaled = true
repeate.TextSize = 14.000
repeate.TextWrapped = true

breakc.Name = "breakc"
breakc.Parent = Frame
breakc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
breakc.Position = UDim2.new(0.51982379, 0, 0.187134519, 0)
breakc.Size = UDim2.new(0, 100, 0, 18)
breakc.Font = Enum.Font.SourceSans
breakc.Text = "break chat"
breakc.TextColor3 = Color3.fromRGB(0, 0, 0)
breakc.TextSize = 14.000

tip.Name = "tip"
tip.Parent = Frame
tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tip.BackgroundTransparency = 1.000
tip.Position = UDim2.new(0.51982379, 0, 0.467327595, 0)
tip.Size = UDim2.new(0, 99, 0, 34)
tip.Font = Enum.Font.SourceSans
tip.Text = "tip: type inf if you wanna make it repeat forever"
tip.TextColor3 = Color3.fromRGB(0, 0, 0)
tip.TextSize = 10.000
tip.TextWrapped = true

lol.Name = "lol"
lol.Parent = Frame
lol.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lol.BackgroundTransparency = 1.000
lol.Position = UDim2.new(0.24229075, 0, 0.906432748, 0)
lol.Size = UDim2.new(0, 116, 0, 16)
lol.Font = Enum.Font.SourceSans
lol.Text = "ace attorney fucker v1, made by maybeeealexsander/alekk#7096"
lol.TextColor3 = Color3.fromRGB(0, 0, 0)
lol.TextSize = 9.000
