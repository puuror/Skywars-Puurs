local DiscordLib = loadstring(game:HttpGet"https://pastebin.com/raw/2Bdh9k6D")()

local Win1 = DiscordLib:Window("")

local Tab1 = Win1:Server("Puurs", "")

local Chann1 = Tab1:Channel("General")
local Chann2 = Tab1:Channel("Credits")

Chann1:Button("Shield GodMode", function()
   local plr = game.Players.LocalPlayer
   if plr.Backpack:FindFirstChild("Shield") then
   plr.Backpack:WaitForChild("Shield").Parent = plr.Character
end
game.Players.LocalPlayer.Character.Shield:Activate()
game.Players.LocalPlayer.Character.Shield:Destroy()
game.Players.LocalPlayer.Character.Shield.ShieldPotion:Destroy()
end)
Chann1:Button("FakeBlock", function()
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
    sound.PlaybackSpeed = 1
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
end)
Chann1:Button("FakeAxe", function()
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
     if game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(mouse.Target) then
        end
    sound:play()
       for i = 1,5 do
    tool.GripUp = tool.GripUp + Vector3.new(0,0,1)
    wait (0)
end
tool.GripUp = tool.GripUp + Vector3.new(0,0,-1)
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
end)
Chann1:Button("Scaffolding", function()
    -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.810090482, 0, 0.384484172, 0)
ImageLabel.Size = UDim2.new(0, 98, 0, 51)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6906809185"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

TextButton.Parent = ImageLabel
TextButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0932187438, 0, 0.159254491, 0)
TextButton.Size = UDim2.new(0.827035069, 0, 0.703491032, 0)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Scaffold"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

-- Scripts:

local function PSPDX_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.Visible = false

uis = game:GetService("UserInputService")
ismobile = uis.TouchEnabled

script.Parent.Visible = ismobile
	
end
coroutine.wrap(PSPDX_fake_script)()
local function BHMTL_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	script.Parent.Visible = false

uis = game:GetService("UserInputService")
ismobile = uis.TouchEnabled

script.Parent.Visible = ismobile
	
end
coroutine.wrap(BHMTL_fake_script)()

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

TextButton.MouseButton1Down:Connect(function()
local Block = game.ReplicatedStorage.Special.Block:Clone()
Block.Parent = Workspace:FindFirstChild("SummerMap")
Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)

local Block = game.ReplicatedStorage.Special.Block:Clone()
Block.Parent = Workspace:FindFirstChild("SpringMap")
Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
local Block = game.ReplicatedStorage.Special.Block:Clone()

Block.Parent = Workspace:FindFirstChild("WinterMap")
Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
end)
end)
Chann1:Seperator()
Chann1:Toggle("Mine Aura",false, function(value)
if value == true then
_G.s = true
    while _G.s == true do
        wait(0)
        local function Break(Harsh)
            local mouse = Harsh
            if mouse.Name == "Block" then
                game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(mouse)
                game:GetService("Players").LocalPlayer.Character.Axe.RemoteEvent:FireServer(mouse)
            end
        end
        local Block = Instance.new("Part",workspace)
        Block.CanCollide = false
        Block.Transparency = 1
        Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
        Block.Size = Vector3.new(15,20,15)
        local selection = Instance.new("SelectionBox",Block)
        selection.Adornee = Block
        local Dis = Block.Touched:connect(Break)
        wait(0)
        Dis:Disconnect()
        Block:Destroy()
        wait(0)
    end
end
if value == false then
_G.s = false
end
end)
Chann1:Toggle("Ore Aura",false, function(value)
if value == true then
  _G.s1 = true
    while _G.s1 == true do
        wait(0)
        local function Break(Harsh)
            local mouse = Harsh
            if mouse.Parent.Name == "Ores" then
                if mouse.Name == "Block" then
                    game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(mouse)
                    game:GetService("Players").LocalPlayer.Character.Axe.RemoteEvent:FireServer(mouse)
                end
            end
        end
        local Block = Instance.new("Part",workspace)
        Block.CanCollide = false
        Block.Transparency = 1
        Block.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-1,0)
        Block.Size = Vector3.new(15,30,15)
        local selection = Instance.new("SelectionBox",Block)
        selection.Adornee = Block
        local Dis = Block.Touched:connect(Break)
        wait(0)
        Dis:Disconnect()
        Block:Destroy()
        wait(0)
    end
end
if value == false then
_G.s1 = false
end
end)
Chann1:Toggle("Infinite Jump",false,function(state)
if state == true then
getgenv().Jump = true
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:Connect(function(state)
			if getgenv().Jump then
			if state:byte() == 32 then
			local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
			humanoid:ChangeState("Jumping")
		end
	end
end)
end
if state == false then
getgenv().Jump = false
end
end)
Chann1:Toggle("Reach",false,function(value)
		if value == true then
			getgenv().Reach = true
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
	game.Players.LocalPlayer.Backpack.Sword.Handle.Size = Vector3.new(1,1,30)
end)
if value == false then
			getgenv().Reach = false
				end)



Chann2:Label("Credits To The UI Library Maker")
Chann2:Seperator()
Chann2:Label("Scripts Made By Me")
Chann2:Button("Puurs Discord", function()
DiscordLib:Notification("Notification", "Puurs Discord Link Copied", "Okay!")
setclipboard("https://discord.gg/9h6VNXZ99G")
end) 
Chann2:Seperator()
Chann2:Label("Discord Tags Puuror#0680, VitaminBitter#2801")
