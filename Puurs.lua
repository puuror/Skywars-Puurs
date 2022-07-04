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
    local handle = Instance.new("Part",tool)
    handle.BrickColor = BrickColor.new("Rust")
    handle.Name = "Handle"
    handle.Size = Vector3.new(2,2,2)

    tool.Activated:Connect(function()
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
    Text = "FakeBlock",
    Callback = function()
    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()

    local tool = Instance.new("Tool",plr.Backpack)
    tool.TextureId = "rbxassetid://399887168"
    tool.CanBeDropped = false
    local handle = Instance.new("Part",tool)
    handle.BrickColor = BrickColor.new("Rust")
    handle.Name = "Handle"
    handle.Size = Vector3.new(2,2,2)
    local mesh = Instance.new("SpecialMesh",handle)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "rbxassetid://22147051"
    mesh.Offset = mesh.Offset + Vector3.new(0,0.5,1)
    mesh.Scale = mesh.Scale + Vector3.new(1, 1.5, 1)
    mesh.VertexColor = mesh.VertexColor + Vector3.new(1, 1, 1)

    tool.Activated:Connect(function()
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
