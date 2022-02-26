local char = game.Players.LocalPlayer.Character
local root = game.Players.LocalPlayer.Character.HumanoidRootPart
local backpack = game.Players.LocalPlayer.Backpack
local lp = game.Players.LocalPlayer
function align(part, x, y, z, xx, yy, zz)
    local bg = Instance.new("BodyGyro", part)
    local bp = Instance.new("BodyPosition", part)
    bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bg.D = 100
    bp.D = 550
    while true do
        bp.Position = root.Position + Vector3.new(x, y, z)
        bg.CFrame = CFrame.Angles(xx, yy, zz) -- math.rad(90)
        game:GetService("RunService").RenderStepped:Wait()
    end
end

function netless(UseOld)
    if UseOld == true then
        for i, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                game:GetService("RunService").Stepped:connect(
                    function()
                        v.Velocity = Vector3.new(-30, 0, 0)
                    end
                )
                game:GetService("RunService").Stepped:connect(
                    function()
                        v.Velocity = Vector3.new(45, 0, 0)
                    end
                )
                game:GetService("RunService").RenderStepped:connect(
                    function()
                        v.Velocity = Vector3.new(-30, 0, 0)
                    end
                )
                game:GetService("RunService").RenderStepped:connect(
                    function()
                        v.Velocity = Vector3.new(45, 0, 0)
                    end
                )
                game:GetService("RunService").Heartbeat:connect(
                    function()
                        v.Velocity = Vector3.new(-30, 0, 0)
                    end
                )
                game:GetService("RunService").Heartbeat:connect(
                    function()
                        v.Velocity = Vector3.new(45, 0, 0)
                    end
                )
            end
        end
    else
        local origpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local pos =
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
            Vector3.new(math.random(-1500, 1500), 0, math.random(-1500, 1500))
        local check = true
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                if (v.Character.HumanoidRootPart.Position - pos).magnitude <= gethiddenproperty(v, "SimulationRadius") then
                    check = false
                end
            end
        end
        if check then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            wait(1)
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(1),
                {CFrame = origpos}
            ):Play()
        end
    end
end
--netless()
function Grip(x, y, z, xx, yy, zz)
    for i, v in pairs(backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = char
            for i, x in next, v:GetChildren() do
                if x:FindFirstChildOfClass("BodyPosition") and x:FindFirstChildOfClass("BodyGyro") then
                    x:FindFirstChildOfClass("BodyPosition"):Destroy()
                    x:FindFirstChildOfClass("BodyGyro"):Destroy()
                end
            end
            --wait(0.3)
            for i, x in next, char["Right Arm"]:GetDescendants() do
                x:Destroy()
            end
            char["Animate"]["toolnone"]["ToolNoneAnim"]["AnimationId"] = 0
            local part = v:FindFirstChildOfClass("Part")
            v.Parent = backpack
            align(part, x, y, z, xx, yy, zz)
        end
    end
end
local cmd = ">grip "
lp.Chatted:connect(
    function(message)
        if message:sub(1, #cmd + 9) == cmd .. "visualize" then
            for i, v in next, backpack:GetChildren() do
                if v:IsA("Tool") then
                    v.Parent = char
                end
            end
            for i, v in next, char["Right Arm"]:GetDescendants() do
                v:Destroy()
            end
        end
    end
)
lp.Chatted:Connect(
    function(message)
        if message:sub(1, #cmd + 6) == cmd .. "demesh" then
            for i, v in pairs(backpack:GetChildren()) do
                if v:IsA("Tool") then
                    for i, x in pairs(v:GetDescendants()) do
                        if x:IsA("DataModelMesh") or x:IsA("Mesh") or x:IsA("SpecialMesh") then
                            x:Destroy()
                        end
                    end
                end
            end
        end
    end
)
print([[
  _____         _    ___     _                    
 |_   _|__  ___| |  / __|_ _(_)_ __ _ __  ___ _ _ 
   | |/ _ \/ _ \ | | (_ | '_| | '_ \ '_ \/ -_) '_|
   |_|\___/\___/_|  \___|_| |_| .__/ .__/\___|_|  
                              |_|  |_|            
    >grip visualize: visualizes your tools that was visualized with tool gripper
    >grip demesh: demeshes your tools (doenst work xd)
    ok bye ily
]])
