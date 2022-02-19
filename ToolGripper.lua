local char = game.Players.LocalPlayer.Character
local root = game.Players.LocalPlayer.Character.HumanoidRootPart
local backpack = game.Players.LocalPlayer.Backpack
function align(part,x,y,z,xx,yy,zz)
    local bg = Instance.new("BodyGyro", part)
    local bp = Instance.new("BodyPosition", part)
    bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bg.D = 100
    bp.D = 550
    while true do
        bp.Position = root.Position + Vector3.new(x,y,z)
        bg.CFrame = CFrame.Angles(xx,yy,zz) -- math.rad(90)
        game:GetService("RunService").RenderStepped:Wait()
    end
end

function netless()
    for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
        if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
            game:GetService("RunService").Stepped:connect(function()
                v.Velocity = Vector3.new(-30,0,0)
            end)
            game:GetService("RunService").Stepped:connect(function()
                v.Velocity = Vector3.new(45,0,0)
            end)
            game:GetService("RunService").RenderStepped:connect(function()
                v.Velocity = Vector3.new(-30,0,0)
            end)
            game:GetService("RunService").RenderStepped:connect(function()
                v.Velocity = Vector3.new(45,0,0)
            end)
            game:GetService("RunService").Heartbeat:connect(function()
                v.Velocity = Vector3.new(-30,0,0)
            end)
            game:GetService("RunService").Heartbeat:connect(function()
                v.Velocity = Vector3.new(45,0,0)
            end)
        end
    end
end
--netless()
function Grip(x,y,z,xx,yy,zz)
    for i,v in pairs(backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = char
            for i, x in next, v:GetChildren() do
                if x:FindFirstChildOfClass("BodyPosition") and x:FindFirstChildOfClass("BodyGyro") then
                    x:FindFirstChildOfClass("BodyPosition"):Destroy()
                    x:FindFirstChildOfClass("BodyGyro"):Destroy()
                end
            end
            wait(0.3)
            for i, v in next, char['Right Arm']:GetDescendants() do
                v:Destroy()
            end
            char['Animate']['toolnone']['ToolNoneAnim']['AnimationId'] = 0
            local part = v:FindFirstChildOfClass("Part")
            align(part,x,y,z,xx,yy,zz)
	    wait(0.2)
	    v.Parent = backpack
        end
    end
end
