local num = math.random(1,#game.Players:GetChildren())
local function say(text) 
    local niger = text
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest 
    Event:FireServer(niger, "All") 
end
function kill(UseUser,UseMessage,User)
    local backpack = game.Players.LocalPlayer.Backpack
    local char = game.Players.LocalPlayer.Character
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
    local arm = char['Right Arm']
    local RCF = root.CFrame
    local function say(text) 
        local niger = text
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest 
        Event:FireServer(niger, "All") 
    end
    for i, v in next, backpack:GetChildren() do
        if v:IsA("Tool") then
            if v.Name == "Stroller" then
                v.Parent = char
                root.CFrame = root.CFrame + Vector3.new(0,1000,0)
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(0.2)
                for i, x in next, arm:GetChildren() do
                    x:Destroy()
                end
                v.Parent = workspace
                local trigger = v['MainPart']
                wait(0.2)
                for i=1, 20 do
                    if UseUser == true then
                        root.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame 
                           trigger.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame 
                    else
                        root.CFrame = game.Players:GetChildren()[num].Character.HumanoidRootPart.CFrame 
                        trigger.CFrame = game.Players:GetChildren()[num].Character.HumanoidRootPart.CFrame 
                    end
                    wait()
                end
                wait(0.2)
                char.Head:Destroy()
                wait(0.2)
                char.Parent = game.Lighting
            end
        end
    end
end
