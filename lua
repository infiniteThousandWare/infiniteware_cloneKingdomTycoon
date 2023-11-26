local s = Instance.new("ScreenGui")
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local f = Instance.new("Frame")
f.Size = UDim2.new(1, 0, 1, 0)
f.BackgroundColor3 = Color3.new(0, 0, 0)
f.Parent = s

local k = Instance.new("Frame")
k.Size = UDim2.new(0.3, 0, 0.3, 0)
k.Position = UDim2.new(0.35, 0, 0.35, 0)
k.BackgroundColor3 = Color3.fromRGB(128, 0, 128)
k.Parent = s

local l = Instance.new("TextLabel")
l.Size = UDim2.new(1, 0, 0.2, 0)
l.Position = UDim2.new(0, 0, 0, 0)
l.Text = "Key System"
l.Font = Enum.Font.SourceSansBold
l.TextColor3 = Color3.new(1, 1, 1)
l.Parent = k

local t = Instance.new("TextBox")
t.Size = UDim2.new(1, 0, 0.6, 0)
t.Position = UDim2.new(0, 0, 0.2, 0)
t.TextScaled = true
t.TextColor3 = Color3.new(0, 0, 0)
t.Parent = k

local b = Instance.new("TextButton")
b.Size = UDim2.new(1, 0, 0.2, 0)
b.Position = UDim2.new(0, 0, 0.8, 0)
b.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
b.Text = "Get Key"
b.Font = Enum.Font.SourceSansBold
b.TextColor3 = Color3.new(0, 0, 0)
b.Parent = k

b.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/f38t85b3Bm")
end)

t.FocusLost:Connect(function(enterPressed)
    if enterPressed and t.Text == "K2000q" then
        k:Destroy()
        f:Destroy()
        s:Destroy()
if game:GetService("CoreGui"):FindFirstChild("Library") then
  game:GetService("CoreGui"):FindFirstChild("Library"):Destroy()
end
local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/kickTh/New-Ui/main/VLib.txt"))()
MAINTTL = "Infinite Ware" 
local win = VLib:Window("", Color3.fromRGB(196, 40, 28))
local Main = win:Tab("⚙️Main")
Main:Button("Close Script",function()
game.CoreGui["Library"]:Destroy()
end)
Main:Button("🧙‍♂️Ally Glitcher",function()
while wait (0) do
local args = {
    [1] = "Northern"
}

game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("attemptJoinAlliance"):FireServer(unpack(args))
local args = {
    [1] = "Southern"
}

game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("attemptJoinAlliance"):FireServer(unpack(args)) 
end
end)
Main:Button("🎈Battle Balloon Auto Fire",function()
local s = {
    [1] = "Fire"
}

game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("balloonCommand"):FireServer(unpack(s))

end)
Main:Button("🤖Copy Discord Link",function()
setclipboard("https://discord.gg/CFPfhqFxja")


end)






local Combat = win:Tab("⚔️Combat")
Combat:Button("👋Lead Clones",function()
game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("mainCloneCommand"):FireServer("FollowMe")
end)
Combat:Button("⏰Hold Clone Position",function()
game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("mainCloneCommand"):FireServer("HoldPosition")
end)
Combat:Button("🔥Charge Clones",function()
game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("mainCloneCommand"):FireServer("Charge")
end)
Combat:Button("🔙Retreat Clones",function()
game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("mainCloneCommand"):FireServer("RetreatToBase")
end)
local Crates = win:Tab("📦Boxes")

local isRunning = false

Crates:Toggle("📦Crate Drop Aura", function(Start)
    isRunning = Start
    while isRunning do
        game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("CrateDrop"):FireServer()
        wait(0.1)
    end
end)
local i = false

Crates:Toggle("📦Crate Auto Sell", function(Start)
    i = Start
    while i do
   local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

h.CFrame = CFrame.new(-56.2762642, 24.5585995, 688.504028, 0.996931195, -3.00990655e-09, -0.0782830119, 4.63397765e-09, 1, 2.05644923e-08, 0.0782830119, -2.0864146e-08, 0.996931195)

        wait(0.1)
    end
end)
Crates:Slider("📦Crate Form Swiftness",0,10,0,function(t)
end)

local ply = win:Tab("👤Player")

local xz = false

ply:Toggle("⚔️Combat Lag", function(Start)
    xz = Start
    while xz do
   game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("toggleCombat"):FireServer(true)
game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("toggleCombat"):FireServer(false)
        wait(0.1)
    end
end)
local gg = false
ply:Toggle("⚔️Combat Swiftness", function(Start)
    gg = Start
    while gg do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        wait(0.1)
    end
    if not gg then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
    end
end)
local p = game.Players.LocalPlayer
local t = ply:Toggle("⚔️Combat God Mode", function(s)
    m = s
    while m do
        game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("toggleCombat"):FireServer(false)
        wait()
    end
end)

local d = false
t:Set(true) 
p.Character.Humanoid.HealthChanged:Connect(function(h)
    if h < p.Character.Humanoid.MaxHealth then
        d = true
        wait(5)
        if d then
            t:Set(false)
        end
    else
        d = false
        t:Set(true)
    end
end)





    end
end)
