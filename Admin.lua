-- Admin Hub by lzhenweidev
-- Powered by Rayfield UI Library

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "👑 Admin Hub",
    Icon = "crown",
    LoadingTitle = "Admin Hub by lzhenweidev",
    LoadingSubtitle = "Loading features...",
    Theme = "Amethyst",
    
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "AdminHubConfig",
        FileName = "AdminHub"
    },
    
    Discord = {
        Enabled = true,
        Invite = "tFYPZPnCBn",
        RememberJoins = true
    },
    
    KeySystem = false,
})

-- ============ PLAYER TAB ============
local PlayerTab = Window:CreateTab("👤 Player", "user")

local FlingSection = PlayerTab:CreateSection("⚡ Combat")

local flingEnabled = false
local flingThread

local FlingToggle = PlayerTab:CreateToggle({
    Name = "Touch Fling",
    CurrentValue = false,
    Flag = "FlingToggle",
    Callback = function(Value)
        flingEnabled = Value
        if Value then
            local function fling()
                local Players = game:GetService("Players")
                local RunService = game:GetService("RunService")
                local movel = 0.1
                while flingEnabled do
                    RunService.Heartbeat:Wait()
                    local c = Players.LocalPlayer.Character
                    local hrp = c and c:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local vel = hrp.Velocity
                        hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
                        RunService.RenderStepped:Wait()
                        hrp.Velocity = vel
                        RunService.Stepped:Wait()
                        hrp.Velocity = vel + Vector3.new(0, movel, 0)
                        movel = -movel
                    end
                end
            end
            flingThread = coroutine.create(fling)
            coroutine.resume(flingThread)
        end
    end,
})

local antiFlingConn

PlayerTab:CreateToggle({
    Name = "Anti Fling",
    CurrentValue = false,
    Flag = "AntiFlingToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        if Value then
            local lastPos = nil
            antiFlingConn = RunService.Stepped:Connect(function()
                local c = Players.LocalPlayer.Character
                if c then
                    local hrp = c:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        if hrp.Velocity.Magnitude > 500 then
                            hrp.Velocity = Vector3.new(0, 0, 0)
                            pcall(function() hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0) end)
                            if lastPos then
                                hrp.CFrame = CFrame.new(lastPos)
                            end
                        elseif hrp.Velocity.Magnitude < 50 then
                            lastPos = hrp.Position
                        end
                    end
                end
            end)
        else
            if antiFlingConn then antiFlingConn:Disconnect() end
        end
    end,
})

-- ============ MOVEMENT TAB ============
local MovementTab = Window:CreateTab("🏃 Movement", "move")

local MoveSection = MovementTab:CreateSection("Movement Settings")

local noclipConn

MovementTab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "NoclipToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        if Value then
            noclipConn = RunService.Stepped:Connect(function()
                local c = Players.LocalPlayer.Character
                if c then
                    for _, p in ipairs(c:GetDescendants()) do
                        if p:IsA("BasePart") then
                            p.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConn then noclipConn:Disconnect() end
            local c = Players.LocalPlayer.Character
            if c then
                for _, p in ipairs(c:GetDescendants()) do
                    if p:IsA("BasePart") then
                        p.CanCollide = true
                    end
                end
            end
        end
    end,
})

local flyConn
local bodyGyro, bodyVelocity
local flySpeed = 50

MovementTab:CreateToggle({
    Name = "Fly (WASD + E/Q)",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local UserInputService = game:GetService("UserInputService")
        
        local function setupFly()
            local c = Players.LocalPlayer.Character
            if not c then return end
            local hrp = c:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            
            if bodyGyro then bodyGyro:Destroy() end
            if bodyVelocity then bodyVelocity:Destroy() end
            
            bodyGyro = Instance.new("BodyGyro")
            bodyGyro.P = 9e4
            bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            bodyGyro.Parent = hrp
            
            bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            bodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
            bodyVelocity.Parent = hrp
        end
        
        if Value then
            setupFly()
            flyConn = RunService.RenderStepped:Connect(function()
                if not Value then return end
                local c = Players.LocalPlayer.Character
                if not c then return end
                local hrp = c:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                if not bodyGyro or not bodyGyro.Parent then setupFly() end
                if not bodyVelocity or not bodyVelocity.Parent then setupFly() end
                
                local camera = workspace.CurrentCamera
                bodyGyro.CFrame = camera.CFrame
                
                local moveVector = Vector3.new(0, 0, 0)
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveVector += camera.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveVector -= camera.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveVector -= camera.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveVector += camera.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.E) then moveVector += Vector3.new(0, 1, 0) end
                if UserInputService:IsKeyDown(Enum.KeyCode.Q) then moveVector -= Vector3.new(0, 1, 0) end
                
                if moveVector.Magnitude > 0 then
                    bodyVelocity.Velocity = moveVector.Unit * flySpeed
                else
                    bodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
                end
            end)
        else
            if flyConn then flyConn:Disconnect() end
            if bodyGyro then bodyGyro:Destroy() end
            if bodyVelocity then bodyVelocity:Destroy() end
        end
    end,
})

MovementTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 200},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSpeedSlider",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local c = Players.LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                h.WalkSpeed = Value
            end
        end
    end,
})

MovementTab:CreateSlider({
    Name = "Fly Speed",
    Range = {20, 200},
    Increment = 5,
    Suffix = "Speed",
    CurrentValue = 50,
    Flag = "FlySpeedSlider",
    Callback = function(Value)
        flySpeed = Value
    end,
})

MovementTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "InfJumpToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local UserInputService = game:GetService("UserInputService")
        if Value then
            local conn
            conn = UserInputService.JumpRequest:Connect(function()
                local c = Players.LocalPlayer.Character
                if c then
                    local h = c:FindFirstChild("Humanoid")
                    if h then
                        h:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end
            end)
            -- Store connection for cleanup
            getgenv().InfJumpConn = conn
        else
            if getgenv().InfJumpConn then
                getgenv().InfJumpConn:Disconnect()
                getgenv().InfJumpConn = nil
            end
        end
    end,
})

-- ============ VISUALS TAB ============
local VisualsTab = Window:CreateTab("👁 Visuals", "eye")

local EspSection = VisualsTab:CreateSection("ESP Settings")

local espEnabled = false
local tracerEnabled = false
local boxEspEnabled = false
local espHighlights = {}
local espBillboards = {}
local espTracers = {}
local boxEspDrawings = {}
local espConn

local function removeESP(player)
    if espHighlights[player] then pcall(function() espHighlights[player]:Destroy() end) espHighlights[player] = nil end
    if espBillboards[player] then pcall(function() espBillboards[player].billboard:Destroy() end) espBillboards[player] = nil end
    if espTracers[player] then pcall(function() espTracers[player]:Remove() end) espTracers[player] = nil end
    if boxEspDrawings[player] then 
        for i = 1, 4 do pcall(function() boxEspDrawings[player][i]:Remove() end) end 
        boxEspDrawings[player] = nil 
    end
end

local function addESP(player)
    local Players = game:GetService("Players")
    if player == Players.LocalPlayer then return end
    
    local function setup()
        local c = player.Character
        if not c then return end
        local head = c:FindFirstChild("Head")
        if not head then return end
        
        removeESP(player)
        
        if espEnabled then
            local hl = Instance.new("Highlight")
            hl.Parent = c
            hl.Adornee = c
            hl.FillColor = Color3.fromRGB(255, 100, 50)
            hl.FillTransparency = 0.85
            hl.OutlineColor = Color3.fromRGB(255, 100, 50)
            hl.OutlineTransparency = 0.3
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            espHighlights[player] = hl
            
            local bg = Instance.new("BillboardGui")
            bg.Parent = head
            bg.Size = UDim2.new(0, 200, 0, 40)
            bg.StudsOffset = Vector3.new(0, 2.5, 0)
            bg.AlwaysOnTop = true
            bg.MaxDistance = 100000
            
            local fl = Instance.new("Frame")
            fl.Parent = bg
            fl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            fl.BackgroundTransparency = 0.5
            fl.BorderSizePixel = 0
            fl.Size = UDim2.new(1, 0, 0, 30)
            
            local nl = Instance.new("TextLabel")
            nl.Parent = fl
            nl.BackgroundTransparency = 1
            nl.Size = UDim2.new(1, 0, 0.5, 0)
            nl.Font = Enum.Font.GothamBold
            nl.Text = player.Name
            nl.TextColor3 = Color3.fromRGB(255, 255, 255)
            nl.TextSize = 13
            
            local dl = Instance.new("TextLabel")
            dl.Parent = fl
            dl.BackgroundTransparency = 1
            dl.Position = UDim2.new(0, 0, 0.5, 0)
            dl.Size = UDim2.new(1, 0, 0.5, 0)
            dl.Font = Enum.Font.Gotham
            dl.Text = "0m"
            dl.TextColor3 = Color3.fromRGB(255, 100, 50)
            dl.TextSize = 11
            
            espBillboards[player] = {billboard = bg, distanceLabel = dl, head = head}
        end
        
        if tracerEnabled then
            local tr = Drawing.new("Line")
            tr.Thickness = 1
            tr.Color = Color3.fromRGB(255, 100, 50)
            tr.Transparency = 0.5
            tr.Visible = false
            espTracers[player] = tr
        end
        
        player.CharacterAdded:Connect(function()
            removeESP(player)
            task.wait(0.5)
            if espEnabled or tracerEnabled or boxEspEnabled then
                setup()
            end
        end)
    end
    
    setup()
end

VisualsTab:CreateToggle({
    Name = "ESP (Highlight + Name)",
    CurrentValue = false,
    Flag = "ESPToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        espEnabled = Value
        if Value then
            for _, p in ipairs(Players:GetPlayers()) do addESP(p) end
            Players.PlayerAdded:Connect(function(p) task.wait(0.5) addESP(p) end)
            Players.PlayerRemoving:Connect(removeESP)
            
            espConn = RunService.RenderStepped:Connect(function()
                if not espEnabled and not tracerEnabled and not boxEspEnabled then return end
                local cam = workspace.CurrentCamera
                if not cam then return end
                local lc = Players.LocalPlayer.Character
                if not lc then return end
                local lh = lc:FindFirstChild("Head")
                if not lh then return end
                
                for player, data in pairs(espBillboards) do
                    pcall(function()
                        if data.head and data.head.Parent then
                            local dist = (lh.Position - data.head.Position).Magnitude
                            if data.distanceLabel and data.distanceLabel.Parent then
                                data.distanceLabel.Text = string.format("%.0fm", dist)
                            end
                            if espTracers[player] then
                                local sp, onScreen = cam:WorldToViewportPoint(data.head.Position)
                                local lsp = cam:WorldToViewportPoint(lh.Position)
                                if onScreen then
                                    espTracers[player].From = Vector2.new(lsp.X, lsp.Y)
                                    espTracers[player].To = Vector2.new(sp.X, sp.Y)
                                    espTracers[player].Visible = true
                                else
                                    espTracers[player].Visible = false
                                end
                            end
                        end
                    end)
                end
                
                if boxEspEnabled then
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= Players.LocalPlayer then
                            local c = player.Character
                            if c then
                                local head = c:FindFirstChild("Head")
                                local torso = c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso")
                                if head and torso then
                                    local headPos, headVisible = cam:WorldToViewportPoint(head.Position)
                                    local torsoPos = cam:WorldToViewportPoint(torso.Position)
                                    
                                    if headVisible then
                                        if not boxEspDrawings[player] then
                                            local lines = {}
                                            for i = 1, 4 do
                                                local line = Drawing.new("Line")
                                                line.Thickness = 1.5
                                                line.Color = Color3.fromRGB(255, 100, 50)
                                                line.Transparency = 0.7
                                                lines[i] = line
                                            end
                                            boxEspDrawings[player] = lines
                                        end
                                        
                                        local h = math.abs(headPos.Y - torsoPos.Y) * 0.8
                                        local w = h * 0.65
                                        local x = headPos.X - w/2
                                        local y = headPos.Y - h
                                        
                                        local lines = boxEspDrawings[player]
                                        lines[1].From = Vector2.new(x, y)
                                        lines[1].To = Vector2.new(x + w, y)
                                        lines[2].From = Vector2.new(x, y + h)
                                        lines[2].To = Vector2.new(x + w, y + h)
                                        lines[3].From = Vector2.new(x, y)
                                        lines[3].To = Vector2.new(x, y + h)
                                        lines[4].From = Vector2.new(x + w, y)
                                        lines[4].To = Vector2.new(x + w, y + h)
                                        
                                        for i = 1, 4 do lines[i].Visible = true end
                                    else
                                        if boxEspDrawings[player] then
                                            for i = 1, 4 do pcall(function() boxEspDrawings[player][i].Visible = false end) end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            for player, _ in pairs(espHighlights) do removeESP(player) end
        end
    end,
})

VisualsTab:CreateToggle({
    Name = "Tracers",
    CurrentValue = false,
    Flag = "TracersToggle",
    Callback = function(Value)
        tracerEnabled = Value
        if not Value then
            for player, _ in pairs(espTracers) do
                pcall(function() espTracers[player]:Remove() end)
                espTracers[player] = nil
            end
        end
    end,
})

VisualsTab:CreateToggle({
    Name = "Box ESP",
    CurrentValue = false,
    Flag = "BoxESPToggle",
    Callback = function(Value)
        boxEspEnabled = Value
        if not Value then
            for player, lines in pairs(boxEspDrawings) do
                for i = 1, 4 do pcall(function() lines[i]:Remove() end) end
                boxEspDrawings[player] = nil
            end
        end
    end,
})

-- ============ TELEPORT TAB ============
local TeleportTab = Window:CreateTab("📍 Teleport", "map-pin")

local TeleSection = TeleportTab:CreateSection("Teleport Settings")

local selectedPlayer = nil

local PlayerDropdown = TeleportTab:CreateDropdown({
    Name = "Select Player",
    Options = {},
    CurrentOption = "",
    Flag = "PlayerDropdown",
    Callback = function(Option)
        local Players = game:GetService("Players")
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Name == Option then
                selectedPlayer = p
                break
            end
        end
    end,
})

-- Update dropdown periodically
task.spawn(function()
    local Players = game:GetService("Players")
    while task.wait(2) do
        local names = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= Players.LocalPlayer then
                table.insert(names, p.Name)
            end
        end
        PlayerDropdown:Refresh(names)
    end
end)

TeleportTab:CreateButton({
    Name = "Teleport to Player",
    Callback = function()
        local Players = game:GetService("Players")
        if not selectedPlayer then return end
        local targetChar = selectedPlayer.Character
        if not targetChar then return end
        local targetHRP = targetChar:FindFirstChild("HumanoidRootPart")
        if not targetHRP then return end
        
        local myChar = Players.LocalPlayer.Character
        if not myChar then return end
        local myHRP = myChar:FindFirstChild("HumanoidRootPart")
        if not myHRP then return end
        
        myHRP.CFrame = targetHRP.CFrame + Vector3.new(3, 0, 0)
    end,
})

-- ============ FUN TAB ============
local FunTab = Window:CreateTab("🎮 Fun", "smile")

local FunSection = FunTab:CreateSection("Fun Actions")

local spinConn

FunTab:CreateToggle({
    Name = "Spin",
    CurrentValue = false,
    Flag = "SpinToggle",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        if Value then
            local speed = 15
            spinConn = RunService.RenderStepped:Connect(function()
                local c = Players.LocalPlayer.Character
                if c then
                    local hrp = c:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(speed), 0)
                    end
                end
            end)
        else
            if spinConn then spinConn:Disconnect() end
        end
    end,
})

FunTab:CreateButton({
    Name = "Toggle Sit",
    Callback = function()
        local Players = game:GetService("Players")
        local c = Players.LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                h.Sit = not h.Sit
            end
        end
    end,
})

local danceIds = {
    "rbxassetid://507766388",
    "rbxassetid://507770239",
    "rbxassetid://507768375",
    "rbxassetid://507771019",
}
local currentDance = 1

FunTab:CreateButton({
    Name = "Dance 💃",
    Callback = function()
        local Players = game:GetService("Players")
        local c = Players.LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                local anim = Instance.new("Animation")
                anim.AnimationId = danceIds[currentDance]
                local track = h:LoadAnimation(anim)
                track:Play()
                currentDance = currentDance % #danceIds + 1
            end
        end
    end,
})

FunTab:CreateButton({
    Name = "Laugh 😂",
    Callback = function()
        local Players = game:GetService("Players")
        local c = Players.LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://507770818"
                local track = h:LoadAnimation(anim)
                track:Play()
            end
        end
    end,
})

FunTab:CreateButton({
    Name = "Wave 👋",
    Callback = function()
        local Players = game:GetService("Players")
        local c = Players.LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://507770239"
                local track = h:LoadAnimation(anim)
                track:Play()
            end
        end
    end,
})

-- ============ CREDITS TAB ============
local CreditsTab = Window:CreateTab("ℹ Credits", "info")

CreditsTab:CreateSection("About")

CreditsTab:CreateLabel("👑 Admin Hub by lzhenweidev")
CreditsTab:CreateLabel("© 2026 All Rights Reserved")
CreditsTab:CreateLabel("📺 YouTube: @lzw")

CreditsTab:CreateButton({
    Name = "Join Discord Server",
    Callback = function()
        setclipboard("https://discord.gg/tFYPZPnCBn")
        Rayfield:Notify({
            Title = "Discord",
            Content = "Invite link copied to clipboard!",
            Duration = 3,
            Image = "check",
        })
    end,
})

CreditsTab:CreateButton({
    Name = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/tFYPZPnCBn")
        Rayfield:Notify({
            Title = "Copied!",
            Content = "Discord link copied!",
            Duration = 2,
            Image = "clipboard",
        })
    end,
})

-- ============ INITIALIZATION ============
Rayfield:Notify({
    Title = "Admin Hub Loaded!",
    Content = "by lzhenweidev | YouTube: @lzw",
    Duration = 5,
    Image = "crown",
})

print("✅ Admin Hub by lzhenweidev loaded!")
print("📺 YouTube: @lzw")
print("🎮 Discord: https://discord.gg/tFYPZPnCBn")
