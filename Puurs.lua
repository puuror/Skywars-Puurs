local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("puurs", "BloodTheme")
local Main = Window:NewTab("M")
local a2= Main:NewSection("M = Main")
a2:NewButton("FakeBlock", "FakeBlock you know", function()
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
end)
a2:NewButton("FakeAxe", "Is a Axe but Fake", function()
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
end)
a2:NewButton("Scaffolding", "Scaffolds", function()
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
a2:NewButton("Shield Godmode", "you need a shield", function()
		 local plr = game.Players.LocalPlayer
    if plr.Backpack:FindFirstChild("Shield") then
        plr.Backpack:WaitForChild("Shield").Parent = plr.Character
    end
game.Players.LocalPlayer.Character.Shield:Activate()
game.Players.LocalPlayer.Character.Shield:Destroy()
game.Players.LocalPlayer.Character.Shield.ShieldPotion:Destroy()
		end)
a2:NewButton("FakeDestroy", "is fake", function()
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
		end)

		if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
			local plr = game:GetService("Players").LocalPlayer

			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = workspace
			wait(.1)
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("MobileFix"):Destroy()
			workspace:FindFirstChild("XboxFix"):Destroy()
			game.workspace.Borders.InvisibleBorder:remove()
			game.workspace.Lobby.KillPlates:remove()
			plr.CharacterAdded:Connect(function()
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = workspace
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = workspace
			wait(.1)
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("MobileFix"):Destroy()
			workspace:FindFirstChild("XboxFix"):Destroy()
		end)           
	end
