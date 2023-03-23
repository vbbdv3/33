function smoothTeleport(part, endPoint, speed)
    speed = speed or 16

    session = session and session + 1 or 1
    local currentSession = session

    local bodyVelocity = Instance.new('BodyVelocity', part)
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)

    local oldPoint = part.CFrame
    while session == currentSession do
        local endPoint = typeof(endPoint) == 'Vector3' and endPoint or endPoint.Position
        local time = task.wait()
        local look = CFrame.new(part.Position, endPoint).LookVector
        local newVector = time*look*speed
        oldPoint += newVector
        part.CFrame = oldPoint
        newVector = newVector+look
        if (part.CFrame.Position-endPoint).Magnitude < newVector.Magnitude then
            part.CFrame = CFrame.new(endPoint)
            bodyVelocity:Destroy()
            break
        end
    end
end

local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("LRW")
local mod = main:Button("Bazooka", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local player = game.Players.LocalPlayer;
local mouse = player:GetMouse();
local A_1 = (mouse.Hit.p)
local Event = game:GetService("Workspace").OWNER.Bazooka.ServerScript.Throw
Event:FireServer(A_1)
    end
end
end)


local mod = main:Button("Yoru", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Players")["OWNER"]
local A_2 = game:GetService("Workspace")["OWNER"]
local Event = game:GetService("Workspace")["OWNER"].MasterBlade.SwordScript.Activate
Event:FireServer(A_1, A_2)
    end
end
end)

local mod = main:Button("Yoru Skill (RIP for STOP)", function()
    	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local Event = game:GetService("Players")["OWNER"].PlayerGui.Parkour.Script.MasterBlade
Event:FireServer()
    end
end
end)

local mod = main:Button("Fast Right Sword", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local Event = game:GetService("Workspace").OWNER.RightSword.SwordScript.Activate
Event:FireServer()
    end
end
end)

local mod = main:Button("Pole", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then
local A_1 = game:GetService("Players")["OWNER"]
local A_2 = game:GetService("Workspace")["OWNER"]
local Event = game:GetService("Workspace")["OWNER"].LightningRod.SwordScript.Activate
Event:FireServer(A_1, A_2)
    end
end
end)

local mod = main:Button("Pole Skill (RIP for STOP)", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then
local Event = game:GetService("Players")["OWNER"].PlayerGui.Parkour.Script.LightningRod
Event:FireServer()
    end
end
end)

local mod = main:Button("Esper ???", function()
    	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then
local player = game.Players.LocalPlayer;
local mouse = player:GetMouse();
local A_1 = (mouse.Hit.p)
local Event = game:GetService("Workspace")["OWNER"].Hundred.ServerScript.Charge
Event:FireServer(A_1)
    end
end
end)

local mod = main:Button("Warudo Time", function()
local Event = game:GetService("ReplicatedStorage").Remotes.WarudoTime
Event:FireServer()
end)

local mod = main:Button("Ultra Bow", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local player = game.Players.LocalPlayer;
local mouse = player:GetMouse();
local args = {
    [1] = (mouse.Hit.p),
    [2] = 21
}
game:GetService("Players").LocalPlayer.Character.Bow.SwordScript.Shoot:FireServer(unpack(args))
    end
end
end)

local mod = main:Button("+5000 Arrows", function()
local A_1 = "BronzeArrows"
local A_2 = "Bows"
local A_3 = 5000
local Event = game:GetService("ReplicatedStorage").Remotes.BuyItem
Event:FireServer(A_1, A_2, A_3)
end)

local mod = main:Button("Auto Def (Equip Shield)", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = "G"
local Event = game:GetService("Players")["OWNER"].PlayerGui.Moves.Tools.Server.Block
Event:FireServer(A_1)
    end
end
end)

local mod = main:Button("Fishing (Click only once)", function()
	getgenv().farmer = true
while wait(3) do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").FishingSpawns.Fishing
local Event = game:GetService("Players")["OWNER"].PlayerGui.Fish.Ado.catch
Event:FireServer(A_1)
    end
end
end)

local mod = main:Button("Auto Speed", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local Event = game:GetService("Players").OWNER.PlayerGui.Parkour.Script.Dash
Event:FireServer()
    end
end
end)

local mod = main:Button("Drop Magnet(Second World)", function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Center' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)


local mod = main:Button("Next Server", function()
    local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end
local Server, Next; repeat
  local Servers = ListServers(Next)
  Server = Servers.data[10]
  Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end)

local mod = main:Button("Anti Afk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnTop/Rice-Anti-Afk/main/Wind", true))()
end)



local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("13.12.2022")
local mod = main:Button("Michkal (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-1248.419189453125, 72.77542877197266, -1926.6697998046875), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.Michkal.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Michkal.HumanoidRootPart, 500)
end)
local mod = main:Button("RuinedKnight (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-3365.021728515625, -339.0802001953125, -843.6755981445312), 500)
getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.RuinedKnight.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.RuinedKnight.HumanoidRootPart, 500)
end)
local mod = main:Button("Broly (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-803.4720458984375, 23.278305053710938, -1744.87939453125), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.Legendary.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Broly.HumanoidRootPart, 500)
end)
local mod = main:Button("Melioofus (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-723.0772705078125, 456.97857666015625, -113.8049087524414), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.Melioofus.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Melioofus.HumanoidRootPart, 500)
end)
local mod = main:Button("Kurito (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-2685.705322265625, -339.6741943359375, -671.946533203125), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.Kurito.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Kurito.HumanoidRootPart, 500)
end)
local mod = main:Button("Master Swordsman (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-2314.801025390625, 365.8520202636719, 4649.46044921875), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.MasterSwordsman.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.MasterSwordsman.HumanoidRootPart, 1000)
end)
local mod = main:Button("Master Swordsman (TP)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-2016.2291259765625, 168.32858276367188, 4811.43896484375), 500)
end)
local mod = main:Button("Law (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(440.7662353515625, 22.66689682006836, -941.6695556640625), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.Law.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Law.HumanoidRootPart, 1000)
end)
local mod = main:Button("Law (TP)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(817.1957397460938, 19.46990966796875, -880.20849609375), 500)
end)
local mod = main:Button("Lightning God (Kill)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-6261.4345703125, 1757.0362548828125, 4055.989501953125), 500)
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").Mobs.LightningGod.HumanoidRootPart.Position
local A_2 = 21
local Event = game.Players.LocalPlayer.Character.Bow.SwordScript.Shoot
Event:FireServer(A_1, A_2)
    end
end
--smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.LightningGod.HumanoidRootPart, 1000)
end)
local mod = main:Button("Lightning God (TP)", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-6491.0166015625, 1640.7696533203125, 4026.444091796875), 500)
end)
local mod = main:Button("+5000 Arrows", function()
local A_1 = "BronzeArrows"
local A_2 = "Bows"
local A_3 = 5000
local Event = game:GetService("ReplicatedStorage").Remotes.BuyItem
Event:FireServer(A_1, A_2, A_3)
end)
local mod = main:Button("Drop Magnet(Artefact = kick)", function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Center' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
