local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Puurs",
    Style = 1,
    SizeX = 500,
    SizeY = 300,
    Theme = "Dark",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(235,235,235)
    }
})

local Y = X.New({
    Title = "M"
})

local A = Y.Button({
    Text = "FakeBlock",
    Callback = function()
 local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()

    local tool = Instance.new("Tool",plr.Backpack)
    tool.TextureId = "rbxassetid://399886319"
    tool.CanBeDropped = false
    tool.Name = "FakeBlock"
    local handle = Instance.new("Part",tool)
    handle.BrickColor = BrickColor.new("Rust")
    handle.Name = "Handle"
    handle.Size = Vector3.new(2,2,2)
    local sound = Instance.new("Sound",handle)
    sound.SoundId = "rbxassetid://2473398508"
    sound.Volume = 3
    sound.PlaybackSpeed = 0.1
    sound.Name = "SoundAxe"

    tool.Activated:Connect(function()
    sound:play()
       for i = 1,5 do
    tool.GripUp = tool.GripUp + Vector3.new(0,0,1)
    wait (0)
end
tool.GripUp = tool.GripUp + Vector3.new(0,0,-1)
        if game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Top) then
        elseif game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Bottom) then
        elseif game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back) then
        elseif game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front) then
        elseif game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left) then
        elseif game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right) then
        end
    end)

    tool.Equipped:Connect(function()
    local selection = Instance.new("SelectionBox")
    selection.LineThickness = 0.05
    selection.Color3 = Color3.new(0,0,0)
    selection.Parent = plr.PlayerGui
    mouse.Move:Connect(function()
    local target = mouse.Target
    selection.Adornee = mouse.Target
    tool.Unequipped:Connect(function()
    selection:destroy()
    end)
    end)
    end)
    end,
})

local B = Y.Button({
    Text = "FakeAxe",
    Callback = function()
    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()

    local tool = Instance.new("Tool",plr.Backpack)
    tool.TextureId = "rbxassetid://399887168"
    tool.Name = "FakeAxe"
    tool.CanBeDropped = false
    local handle = Instance.new("Part",tool)
    handle.BrickColor = BrickColor.new("Rust")
    handle.Name = "Handle"
    handle.Size = Vector3.new(2,2,2)
    local mesh = Instance.new("SpecialMesh",handle)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "rbxassetid://22147051"
    mesh.Scale = mesh.Scale + Vector3.new(1, 1.5, 1)
    mesh.VertexColor = mesh.VertexColor + Vector3.new(1, 1, 1)
    tool.Grip = CFrame.new(-7.15255737e-07, 0, -0.500000477, 1.69874045e-06, 3.46025111e-08, 1, 1, 4.24721226e-14, -1.69874045e-06, -1.01252821e-13, 1, -3.46025111e-08)
    tool.GripForward = Vector3.new(-1, 0.000001698740447864111, 3.460251107867407e-08)
    tool.GripPos = Vector3.new(-7.152557373046875e-07, 0, -0.5000004768371582)
    tool.GripRight = Vector3.new(0.000001698740447864111, 1, -1.0125282096052832e-13)
    tool.GripUp = Vector3.new(3.460251107867407e-08, 4.247212255286889e-14, 1)
    local sound = Instance.new("Sound",handle)
    sound.SoundId = "rbxassetid://2473370042"
    sound.Volume = 3
    sound.PlaybackSpeed = 0.5
    sound.Name = "SoundAxe"

    tool.Activated:Connect(function()
    sound:play()
       for i = 1,5 do
    tool.GripUp = tool.GripUp + Vector3.new(0,0,1)
    wait (0)
end
tool.GripUp = tool.GripUp + Vector3.new(0,0,-1)
     if game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(mouse.Target) then
        end
    end)

    tool.Equipped:Connect(function()
    local selection = Instance.new("SelectionBox")
    selection.LineThickness = 0.05
    selection.Color3 = Color3.new(0,0,0)
    selection.Parent = plr.PlayerGui
    mouse.Move:Connect(function()
    local target = mouse.Target
    selection.Adornee = mouse.Target
    tool.Unequipped:Connect(function()
    selection:destroy()
    end)
    end)
    end)
    end,
})

local C = Y.Button({
    Text = "Scaffolding",
    Callback = function()
local Lazy = Instance.new("ScreenGui")
local A = Instance.new("TextLabel")

Lazy.Name = "Lazy"
Lazy.Parent = game.Players.LocalPlayer.PlayerGui
Lazy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

A.Name = "A"
A.Parent = Lazy
A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
A.BackgroundTransparency = 1.000
A.Position = UDim2.new(0.031315241, 0, 0.031315241, 0)
A.Size = UDim2.new(0, 114, 0, 36)
A.Font = Enum.Font.Arcade
A.Text = "Press LeftControl"
A.TextColor3 = Color3.fromRGB(255, 255, 255)
A.TextScaled = true
A.TextSize = 14.000
A.TextStrokeTransparency = 0.000
A.TextWrapped = true

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local root = chr:WaitForChild("HumanoidRootPart")
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
    local rayparams = RaycastParams.new()
    local ray = workspace:Raycast(root.Position, root.CFrame.UpVector * -10, rayparams)
    if ray then 
    local Block = game.ReplicatedStorage.Special.Block:Clone()
    Block.Parent = Workspace:FindFirstChild("WinterMap")
    Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
    end
    end
end)
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local root = chr:WaitForChild("HumanoidRootPart")
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
    local rayparams = RaycastParams.new()
    local ray = workspace:Raycast(root.Position, root.CFrame.UpVector * -10, rayparams)
    if ray then 
    local Block = game.ReplicatedStorage.Special.Block:Clone()
    Block.Parent = Workspace:FindFirstChild("SpringMap")
    Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
    end
    end
end)
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local root = chr:WaitForChild("HumanoidRootPart")
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
    local rayparams = RaycastParams.new()
    local ray = workspace:Raycast(root.Position, root.CFrame.UpVector * -10, rayparams)
    if ray then 
    local Block = game.ReplicatedStorage.Special.Block:Clone()
    Block.Parent = Workspace:FindFirstChild("SummerMap")
    Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
    end
    end
end)
    end,
})

local D = Y.Button({
    Text = "FakeDestroy",
    Callback = function()
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local tool = Instance.new("Tool",plr.Backpack)
tool.Name = "."
tool.CanBeDropped = false
local handle = Instance.new("Part",tool)
handle.BrickColor = BrickColor.new("Black")
handle.Name = "Handle"
handle.Size = Vector3.new(0.5,0.5,0.5)
tool.Activated:Connect(function()
game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(mouse.Target:Destroy())
end)
    tool.Equipped:Connect(function()
    local selection = Instance.new("SelectionBox")
    selection.LineThickness = 0.05
    selection.Color3 = Color3.new(0,0,0)
    selection.Parent = plr.PlayerGui
    mouse.Move:Connect(function()
    local target = mouse.Target
    selection.Adornee = mouse.Target
    tool.Unequipped:Connect(function()
    selection:destroy()
    end)
    end)
    end)
end,
})

local E = Y.Button({
    Text = "Shield Godmode",
    Callback = function()
      local plr = game.Players.LocalPlayer
    if plr.Backpack:FindFirstChild("Shield") then
        plr.Backpack:WaitForChild("Shield").Parent = plr.Character
    end
game.Players.LocalPlayer.Character.Shield:Activate()
game.Players.LocalPlayer.Character.Shield:Destroy()
game.Players.LocalPlayer.Character.Shield.ShieldPotion:Destroy()
    end,
})

game.Players.LocalPlayer.PlayerGui.Extra:remove()
game.Workspace.Borders.InvisibleBorder:remove()
game.Workspace.Lobby.KillPlates:remove()
