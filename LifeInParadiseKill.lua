local lpplr = game:GetService("Players").LocalPlayer
local root = game.Players.LocalPlayer.Character.HumanoidRootPart
function say(text)
	local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
	Event:FireServer(text, "All")
end
function kill(User, Mode)
    local backpack = game.Players.LocalPlayer.Backpack
    local char = game.Players.LocalPlayer.Character
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
    local RCF = root.CFrame
    local arm = char["Right Arm"]
    for i, v in pairs(backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.Name == "Stroller" then
                v.Parent = char
                root.CFrame = root.CFrame + Vector3.new(0, 1000, 0)
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(0.2)
                for i, x in next, arm:GetChildren() do
                    x:Destroy()
                end
                v.Parent = workspace
                local trigger = v["MainPart"]
                wait(0.2)
                for i = 1, 35 do
                    root.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame
                    trigger.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame
                    wait()
                end
                wait(0.2)
                if Mode == "kill" then
                    wait(0.3)
                    char.Head:Destroy()
                    wait(0.3)
                    char.Parent = game.Lighting
                end
                if Mode == "tpkill" then
                    while wait() do
                        root.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame
                        trigger.CFrame = game.Players[User].Character.HumanoidRootPart.CFrame
                        wait(0.7)
                        root.CFrame = CFrame.new(9999999, -499, 9999999)
                        break
                    end
                    wait(1)
                end
                if Mode == "bring" then
                	game.Players.LocalPlayer.Character.Humanoid:ChangeState(1)
                    wait(0.2)
                    root.CFrame = RCF
                    wait(0.2)
                    v:Destroy()
                end
            end
        end
    end
end

lpplr.Chatted:connect(
    function(message)
        if message:sub(1, 5) == ">kill" or message:sub(1, 5) == ".kill" or message:sub(1, 5) == "/kill" then
            plr = message:sub(7)
            local RCF = root.CFrame
            _G.target = game.Players.LocalPlayer.Name
            local Players = game:GetService("Players")
            local function get_player(name)
                name = name:lower()
                for _, player in pairs(game.Players:GetPlayers()) do
                    if name == player.Name:lower():sub(1, #name) then
                        return player.Name
                    end
                    if name == player.DisplayName:lower():sub(1, #name) then
                        return player.Name
                    end
                end
                return _G.target
            end
            _G.target = get_player(plr)
            kill(_G.target, "kill")
            wait(0.1)
            say("killing ".._G.target)
            wait(7)
            root.CFrame = RCF
        end
    end
)
lpplr.Chatted:connect(
    function(message)
        if message:sub(1, 7) == ">tpkill" or message:sub(1, 5) == ".tpkill" or message:sub(1, 5) == "/tpkill" then
            plr = message:sub(9)
            local RCF = root.CFrame
            _G.target = game.Players.LocalPlayer.Name
            local Players = game:GetService("Players")
            local function get_player(name)
                name = name:lower()
                for _, player in pairs(game.Players:GetPlayers()) do
                    if name == player.Name:lower():sub(1, #name) then
                        return player.Name
                    end
                    if name == player.DisplayName:lower():sub(1, #name) then
                        return player.Name
                    end
                end
                return _G.target
            end
            _G.target = get_player(plr)
            kill(_G.target, "tpkill")
            wait(0.1)
            say("killing " .. _G.target)
            wait(7)
            root.CFrame = RCF
        end
    end
)
lpplr.Chatted:connect(
    function(message)
        if message:sub(1, 6) == ">bring" or message:sub(1, 5) == ".bring" or message:sub(1, 5) == "/bring" then
            plr = message:sub(8)
            _G.target = game.Players.LocalPlayer.Name
            local Players = game:GetService("Players")
            local function get_player(name)
                name = name:lower()
                for _, player in pairs(game.Players:GetPlayers()) do
                    if name == player.Name:lower():sub(1, #name) then
                        return player.Name
                    end
                    if name == player.DisplayName:lower():sub(1, #name) then
                        return player.Name
                    end
                end
                return _G.target
            end
            _G.target = get_player(plr)
            kill(_G.target, "bring")
            wait(0.1)
            say("bringing " .. _G.target)
        end
    end
)
say("[ life in paradise kill,tp kill,bring loaded] by alex")
print([[
    commands:
    >kill (user) kills them, sometimes might not work
    >tpkill (user) kills them by teleporting them to the void, works pretty well
    >bring (user) brings them, sometimes might not work
    
    ok bye ily
    ]])
