local PunkLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/Library.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/Interface.lua"))()
local Window = PunkLib:CreateWindow({
    Title = "Punk Hub",
    SubTitle = "By Npg",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 330),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Delete 
})

if game.CoreGui:FindFirstChild("PunkHubXOpenClose") then
    game.CoreGui:FindFirstChild("PunkHubXOpenClose"):Destroy()
end

local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PunkHubXOpenClose"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.102097899, 0, 0.0742971897, 0)
ImageButton.Size = UDim2.new(0, 59, 0, 49)
ImageButton.Image = "rbxassetid://16520492616"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,127,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,127,false,game)
end)

Home_Main = Window:AddTab({ Title = "Home", Icon = "scan-face" })
Home_Main:AddButton({Title = "Join Discord - PunkTeam",Description = "Invite Discord PunkTeam!",Callback = function()
	setclipboard("https://discord.gg/silentcaliber")
   end
})
Home_Main:AddButton({Title = "Subscribe & Like - PunkTeam",Description = "Click Subscribe & Like YouTube PunkTeam!",Callback = function()
	setclipboard("https://youtube.com/@silentcaliber4335")
   end
})
local Options = PunkLib.Options
if game.PlaceId == 2753915549 then First_Sea = true elseif game.PlaceId == 4442272183 then  Second_Sea = true elseif game.PlaceId == 7449423635 then Third_Sea = true end
function ACB()
   local RobloxScript = game:GetService("Players").LocalPlayer.PlayerScripts
   local CRoblox = game:GetService("Players").LocalPlayer.Character
   for i,R in pairs(CRoblox:GetDescendants()) do
       if R:IsA("LocalScript") then
           if R.Name == "General" or R.Name == "Shiftlock"  or R.Name == "FallDamage" or R.Name == "4444" or R.Name == "CamBob" or R.Name == "JumpCD" or R.Name == "Looking" or R.Name == "Run" then
            R:Destroy()
           end
       end
    end
    for i,R1 in pairs(RobloxScript:GetDescendants()) do
       if R1:IsA("LocalScript") then
           if R1.Name == "RobloxMotor6DBugFix" or R1.Name == "Clans"  or R1.Name == "Codes" or R1.Name == "CustomForceField" or R1.Name == "MenuBloodSp"  or R1.Name == "PlayerList" then
            R1:Destroy()
           end
       end
    end
end
ACB()
local IdledAfk = game:GetService("Players").LocalPlayer.Idled
IdledAfk:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame) wait(1) game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

function CheckLevel()
   local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
   if First_Sea then
   if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
   Ms = "Bandit" NameQuest = "BanditQuest1" QuestLv = 1 NameMon = "Bandit" CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875) CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
   elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
   Ms = "Monkey"
   NameQuest = "JungleQuest" QuestLv = 1 NameMon = "Monkey" CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102) CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
   elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
   Ms = "Gorilla" NameQuest = "JungleQuest" QuestLv = 2 NameMon = "Gorilla" CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102) CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
   elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
   Ms = "Pirate"
   NameQuest = "BuggyQuest1" QuestLv = 1 NameMon = "Pirate" CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188) CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
   elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
   Ms = "Brute"
   NameQuest = "BuggyQuest1" QuestLv = 2 NameMon = "Brute" CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188) CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
   elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
   Ms = "Desert Bandit" NameQuest = "DesertQuest" QuestLv = 1 NameMon = "Desert Bandit" CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625) CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
   elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
   Ms = "Desert Officer" NameQuest = "DesertQuest" QuestLv = 2 NameMon = "Desert Officer" CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625) CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
   elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then -- Snow Bandit
   Ms = "Snow Bandit" NameQuest = "SnowQuest" QuestLv = 1 NameMon = "Snow Bandit" CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156) CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
   elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then -- Snowman
   Ms = "Snowman" NameQuest = "SnowQuest" QuestLv = 2 NameMon = "Snowman" CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156) CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
   elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
   Ms = "Chief Petty Officer" NameQuest = "MarineQuest2" QuestLv = 1 NameMon = "Chief Petty Officer" CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313) CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
   elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
   Ms = "Sky Bandit" NameQuest = "SkyQuest" QuestLv = 1 NameMon = "Sky Bandit" CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438) CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
   elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
   Ms = "Dark Master" NameQuest = "SkyQuest" QuestLv = 2 NameMon = "Dark Master" CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438) CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
   elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
   Ms = "Prisoner" NameQuest = "PrisonerQuest" QuestLv = 1 NameMon = "Prisoner" CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118) CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
   elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
   Ms = "Dangerous Prisoner" NameQuest = "PrisonerQuest" QuestLv = 2 NameMon = "Dangerous Prisoner" CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118) CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
   elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
   Ms = "Toga Warrior" NameQuest = "ColosseumQuest" QuestLv = 1 NameMon = "Toga Warrior" CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188) CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
   elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
   Ms = "Gladiator" NameQuest = "ColosseumQuest" QuestLv = 2 NameMon = "Gladiator" CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188) CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
   elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
   Ms = "Military Soldier" NameQuest = "MagmaQuest" QuestLv = 1 NameMon = "Military Soldier" CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625) CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
   elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
   Ms = "Military Spy" NameQuest = "MagmaQuest" QuestLv = 2 NameMon = "Military Spy" CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625) CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
   elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
   Ms = "Fishman Warrior" NameQuest = "FishmanQuest" QuestLv = 1 NameMon = "Fishman Warrior" CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734) CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
   elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
   Ms = "Fishman Commando" NameQuest = "FishmanQuest" QuestLv = 2 NameMon = "Fishman Commando" CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734) CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
   elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
   Ms = "God's Guard" NameQuest = "SkyExp1Quest" QuestLv = 1 NameMon = "God's Guard" CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234) CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
   elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
   Ms = "Shanda" NameQuest = "SkyExp1Quest" QuestLv = 2 NameMon = "Shanda" CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703) CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
   elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
   Ms = "Royal Squad" NameQuest = "SkyExp2Quest" QuestLv = 1 NameMon = "Royal Squad" CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125) CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
   elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
   Ms = "Royal Soldier" NameQuest = "SkyExp2Quest" QuestLv = 2 NameMon = "Royal Soldier" CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125) CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
   elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
   Ms = "Galley Pirate" NameQuest = "FountainQuest" QuestLv = 1 NameMon = "Galley Pirate" CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875) CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
   elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
   Ms = "Galley Captain" NameQuest = "FountainQuest" QuestLv = 2 NameMon = "Galley Captain" CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875) CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
   end
end
if Second_Sea then
   if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
   Ms = "Raider" NameQuest = "Area1Quest" QuestLv = 1 NameMon = "Raider" CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531) CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
   elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
   Ms = "Mercenary" NameQuest = "Area1Quest" QuestLv = 2 NameMon = "Mercenary" CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531) CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
   elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
   Ms = "Swan Pirate" NameQuest = "Area2Quest" QuestLv = 1 NameMon = "Swan Pirate" CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125) CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
   elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
   Ms = "Factory Staff" NameQuest = "Area2Quest" QuestLv = 2 NameMon = "Factory Staff" CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125) CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
   elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
   Ms = "Marine Lieutenant" NameQuest = "MarineQuest3" QuestLv = 1 NameMon = "Marine Lieutenant" CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531) CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
   elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
   Ms = "Marine Captain" NameQuest = "MarineQuest3" QuestLv = 2 NameMon = "Marine Captain" CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531) CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
   elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
   Ms = "Zombie" NameQuest = "ZombieQuest" QuestLv = 1 NameMon = "Zombie" CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)mCFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
   elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
   Ms = "Vampire" NameQuest = "ZombieQuest" QuestLv = 2 NameMon = "Vampire" CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281) CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
   elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
   Ms = "Snow Trooper" NameQuest = "SnowMountainQuest" QuestLv = 1 NameMon = "Snow Trooper" CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875) CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
   elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
   Ms = "Winter Warrior" NameQuest = "SnowMountainQuest" QuestLv = 2 NameMon = "Winter Warrior" CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875) CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
   elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
   Ms = "Lab Subordinate" NameQuest = "IceSideQuest" QuestLv = 1 NameMon = "Lab Subordinate" CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188) CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
   elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
   Ms = "Horned Warrior" NameQuest = "IceSideQuest" QuestLv = 2 NameMon = "Horned Warrior" CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188) CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
   elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
   Ms = "Magma Ninja" NameQuest = "FireSideQuest" QuestLv = 1 NameMon = "Magma Ninja" CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813) CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
   elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
   Ms = "Lava Pirate" NameQuest = "FireSideQuest" QuestLv = 2 NameMon = "Lava Pirate" CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813) CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
   elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
   Ms = "Ship Deckhand" NameQuest = "ShipQuest1" QuestLv = 1 NameMon = "Ship Deckhand" CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625) CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
   if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   end
   elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
   Ms = "Ship Engineer" NameQuest = "ShipQuest1" QuestLv = 2 NameMon = "Ship Engineer" CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625) CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
   if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   end
   elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
   Ms = "Ship Steward" NameQuest = "ShipQuest2" QuestLv = 1 NameMon = "Ship Steward" CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875) CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
   elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer 
   Ms = "Ship Officer" NameQuest = "ShipQuest2" QuestLv = 2 NameMon = "Ship Officer" CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875) CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
   elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
   Ms = "Arctic Warrior" NameQuest = "FrostQuest" QuestLv = 1 NameMon = "Arctic Warrior" CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375) CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
end
   elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then -- Snow Lurker
   Ms = "Snow Lurker" NameQuest = "FrostQuest" QuestLv = 2 NameMon = "Snow Lurker" CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375) CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
   elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
   Ms = "Sea Soldier" NameQuest = "ForgottenQuest" QuestLv = 1 NameMon = "Sea Soldier" CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063) CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
   elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
   Ms = "Water Fighter" NameQuest = "ForgottenQuest" QuestLv = 2 NameMon = "Water Fighter" CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063) CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
   end
end
if Third_Sea then
   if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
   Ms = "Pirate Millionaire" NameQuest = "PiratePortQuest" QuestLv = 1 NameMon = "Pirate Millionaire" CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313) CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
   elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
   Ms = "Pistol Billionaire" NameQuest = "PiratePortQuest" QuestLv = 2 NameMon = "Pistol Billionaire" CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313) CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
   elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
   Ms = "Dragon Crew Warrior" NameQuest = "AmazonQuest" QuestLv = 1 NameMon = "Dragon Crew Warrior" CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375) CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
   elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
   Ms = "Dragon Crew Archer" NameQuest = "AmazonQuest" QuestLv = 2 NameMon = "Dragon Crew Archer" CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375) CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
   elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
   Ms = "Female Islander" NameQuest = "AmazonQuest2" QuestLv = 1 NameMon = "Female Islander" CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422) CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
   elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
   Ms = "Giant Islander" NameQuest = "AmazonQuest2" QuestLv = 2 NameMon = "Giant Islander" CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422) CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
   elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
   Ms = "Marine Commodore" NameQuest = "MarineTreeIsland" QuestLv = 1 NameMon = "Marine Commodore" CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813) CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
   elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
   Ms = "Marine Rear Admiral" NameQuest = "MarineTreeIsland" QuestLv = 2 NameMon = "Marine Rear Admiral" CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813) CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
   elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
   Ms = "Fishman Raider" NameQuest = "DeepForestIsland3" QuestLv = 1 NameMon = "Fishman Raider" CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625) CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
   elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
   Ms = "Fishman Captain" NameQuest = "DeepForestIsland3" QuestLv = 2 NameMon = "Fishman Captain" CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875) CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
   elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
   Ms = "Forest Pirate" NameQuest = "DeepForestIsland" QuestLv = 1 NameMon = "Forest Pirate" CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938) CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
   elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate 
   Ms = "Mythological Pirate" NameQuest = "DeepForestIsland" QuestLv = 2 NameMon = "Mythological Pirate" CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938) CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
   elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
   Ms = "Jungle Pirate" NameQuest = "DeepForestIsland2" QuestLv = 1 NameMon = "Jungle Pirate" CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375) CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
   elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate 
   Ms = "Musketeer Pirate" NameQuest = "DeepForestIsland2" QuestLv = 2 NameMon = "Musketeer Pirate" CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375) CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
   elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
   Ms = "Reborn Skeleton" NameQuest = "HauntedQuest1" QuestLv = 1 NameMon = "Reborn Skeleton" CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059) CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
   elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
   Ms = "Living Zombie" NameQuest = "HauntedQuest1" QuestLv = 2 NameMon = "Living Zombie" CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059) CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
   elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
   Ms = "Demonic Soul" NameQuest = "HauntedQuest2" QuestLv = 1 NameMon = "Demonic Soul" CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313) CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
   elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
   Ms = "Posessed Mummy" NameQuest = "HauntedQuest2" QuestLv = 2 NameMon = "Posessed Mummy" CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313) CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
   elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
   Ms = "Peanut Scout" NameQuest = "NutsIslandQuest" QuestLv = 1 NameMon = "Peanut Scout" CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664) CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
   elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
   Ms = "Peanut President" NameQuest = "NutsIslandQuest" QuestLv = 2 NameMon = "Peanut President" CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664) CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
   elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
   Ms = "Ice Cream Chef" NameQuest = "IceCreamIslandQuest" QuestLv = 1 NameMon = "Ice Cream Chef" CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664) CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
   elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
   Ms = "Ice Cream Commander" NameQuest = "IceCreamIslandQuest" QuestLv = 2 NameMon = "Ice Cream Commander" CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664) CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
   elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
   Ms = "Cookie Crafter" NameQuest = "CakeQuest1" QuestLv = 1 NameMon = "Cookie Crafter" CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909) CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
   elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
   Ms = "Cake Guard" NameQuest = "CakeQuest1" QuestLv = 2 NameMon = "Cake Guard" CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909) CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
   elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
   Ms = "Baking Staff" NameQuest = "CakeQuest2" QuestLv = 1 NameMon = "Baking Staff" CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401) CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
   elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
   Ms = "Head Baker" NameQuest = "CakeQuest2" QuestLv = 2 NameMon = "Head Baker" CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401) CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
   elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
   Ms = "Cocoa Warrior" NameQuest = "ChocQuest1" QuestLv = 1 NameMon = "Cocoa Warrior" CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1) CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
   elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
   Ms = "Chocolate Bar Battler" NameQuest = "ChocQuest1" QuestLv = 2 NameMon = "Chocolate Bar Battler" CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1) CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
   elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
   Ms = "Sweet Thief" NameQuest = "ChocQuest2" QuestLv = 1 NameMon = "Sweet Thief" CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998) CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
   elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
   Ms = "Candy Rebel" NameQuest = "ChocQuest2" QuestLv = 2 NameMon = "Candy Rebel" CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998) CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
   elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
   Ms = "Candy Pirate" NameQuest = "CandyQuest1" QuestLv = 1 NameMon = "Candy Pirate" CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099) CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
   elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
   Ms = "Snow Demon" NameQuest = "CandyQuest1" QuestLv = 2 NameMon = "Snow Demon" CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099) CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
   elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
   Ms = "Isle Outlaw" NameQuest = "TikiQuest1" QuestLv = 1 NameMon = "Isle Outlaw" CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812) CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
   elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
   Ms = "Island Boy" NameQuest = "TikiQuest1" QuestLv = 2 NameMon = "Island Boy" CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812) CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
   elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
   Ms = "Isle Champion" NameQuest = "TikiQuest2" QuestLv = 2 NameMon = "Isle Champion" CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625) CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
   end
  end
end

if First_Sea then
   tableMon = {"Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"} elseif Second_Sea then
   tableMon = {"Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"} elseif Third_Sea then
   tableMon = {"Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"}
end
if First_Sea then
   AreaList = {'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'} elseif Second_Sea then
   AreaList = {'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'} elseif Third_Sea then 
   AreaList = {'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'}
end
function CheckBossQuest()
if First_Sea then
   if SelectBoss == "The Gorilla King" then
   BossMon = "The Gorilla King" NameBoss = 'The Gorrila King' NameQuestBoss = "JungleQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$2,000\n7,000 Exp." CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102) CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
   elseif SelectBoss == "Bobby" then
   BossMon = "Bobby" NameBoss = 'Bobby' NameQuestBoss = "BuggyQuest1" QuestLvBoss = 3 RewardBoss = "Reward:\n$8,000\n35,000 Exp." CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188) CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
   elseif SelectBoss == "The Saw" then 
   BossMon = "The Saw" NameBoss = 'The Saw' CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
   elseif SelectBoss == "Yeti" then
   BossMon = "Yeti" NameBoss = 'Yeti' NameQuestBoss = "SnowQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$10,000\n180,000 Exp." CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156) CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
   elseif SelectBoss == "Mob Leader" then
   BossMon = "Mob Leader" NameBoss = 'Mob Leader' CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
   elseif SelectBoss == "Vice Admiral" then
   BossMon = "Vice Admiral" NameBoss = 'Vice Admiral' NameQuestBoss = "MarineQuest2" QuestLvBoss = 2 RewardBoss = "Reward:\n$10,000\n180,000 Exp." CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625) CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
   elseif SelectBoss == "Saber Expert" then
   NameBoss = 'Saber Expert' BossMon = "Saber Expert" CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
   elseif SelectBoss == "Warden" then
   BossMon = "Warden" NameBoss = 'Warden' NameQuestBoss = "ImpelQuest" QuestLvBoss = 1 RewardBoss = "Reward:\n$6,000\n850,000 Exp." CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961) CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Chief Warden" then
   BossMon = "Chief Warden" NameBoss = 'Chief Warden' NameQuestBoss = "ImpelQuest" QuestLvBoss = 2 RewardBoss = "Reward:\n$10,000\n1,000,000 Exp." CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939) CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Swan" then
   BossMon = "Swan" NameBoss = 'Swan' NameQuestBoss = "ImpelQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$15,000\n1,600,000 Exp." CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812) CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Magma Admiral" then
   BossMon = "Magma Admiral" NameBoss = 'Magma Admiral' NameQuestBoss = "MagmaQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$15,000\n2,800,000 Exp." CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875) CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
   elseif SelectBoss == "Fishman Lord" then
   BossMon = "Fishman Lord" NameBoss = 'Fishman Lord' NameQuestBoss = "FishmanQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$15,000\n4,000,000 Exp." CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734) CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
   elseif SelectBoss == "Wysper" then
   BossMon = "Wysper" NameBoss = 'Wysper' NameQuestBoss = "SkyExp1Quest" QuestLvBoss = 3 RewardBoss = "Reward:\n$15,000\n4,800,000 Exp." CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094) CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
   elseif SelectBoss == "Thunder God" then
   BossMon = "Thunder God" NameBoss = 'Thunder God' NameQuestBoss = "SkyExp2Quest" QuestLvBoss = 3 RewardBoss = "Reward:\n$20,000\n5,800,000 Exp." CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125) CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
   elseif SelectBoss == "Cyborg" then
   BossMon = "Cyborg" NameBoss = 'Cyborg' NameQuestBoss = "FountainQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$20,000\n7,500,000 Exp." CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875) CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
   elseif SelectBoss == "Ice Admiral" then
   BossMon = "Ice Admiral" NameBoss = 'Ice Admiral' CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
   elseif SelectBoss == "Greybeard" then
   BossMon = "Greybeard" NameBoss = 'Greybeard' CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
   end
end
if Second_Sea then
   if SelectBoss == "Diamond" then
   BossMon = "Diamond" NameBoss = 'Diamond' NameQuestBoss = "Area1Quest" QuestLvBoss = 3 RewardBoss = "Reward:\n$25,000\n9,000,000 Exp." CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375) CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
   elseif SelectBoss == "Jeremy" then
   BossMon = "Jeremy" NameBoss = 'Jeremy' NameQuestBoss = "Area2Quest" QuestLvBoss = 3 RewardBoss = "Reward:\n$25,000\n11,500,000 Exp." CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063) CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
   elseif SelectBoss == "Fajita" then
   BossMon = "Fajita" NameBoss = 'Fajita' NameQuestBoss = "MarineQuest3" QuestLvBoss = 3 RewardBoss = "Reward:\n$25,000\n15,000,000 Exp." CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031) CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
   elseif SelectBoss == "Don Swan" then
   BossMon = "Don Swan" NameBoss = 'Don Swan' CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
   elseif SelectBoss == "Smoke Admiral" then
   BossMon = "Smoke Admiral" NameBoss = 'Smoke Admiral' NameQuestBoss = "IceSideQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$20,000\n25,000,000 Exp." CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813) CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
   elseif SelectBoss == "Awakened Ice Admiral" then
   BossMon = "Awakened Ice Admiral" NameBoss = 'Awakened Ice Admiral' NameQuestBoss = "FrostQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$20,000\n36,000,000 Exp." CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813) CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
   elseif SelectBoss == "Tide Keeper" then
   BossMon = "Tide Keeper" NameBoss = 'Tide Keeper' NameQuestBoss = "ForgottenQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$12,500\n38,000,000 Exp." CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625) CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
   elseif SelectBoss == "Darkbeard" then
   BossMon = "Darkbeard" NameBoss = 'Darkbeard' CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
   elseif SelectBoss == "Cursed Captain" then
   BossMon = "Cursed Captain" NameBoss = 'Cursed Captain' CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
   elseif SelectBoss == "Order" then
   BossMon = "Order" NameBoss = 'Order' CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
   end
end
if Third_Sea then
   if SelectBoss == "Stone" then
   BossMon = "Stone" NameBoss = 'Stone' NameQuestBoss = "PiratePortQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$25,000\n40,000,000 Exp." CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625) CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
   elseif SelectBoss == "Island Empress" then
   BossMon = "Island Empress" NameBoss = 'Island Empress' NameQuestBoss = "AmazonQuest2" QuestLvBoss = 3 RewardBoss = "Reward:\n$30,000\n52,000,000 Exp." CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609) CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
   elseif SelectBoss == "Kilo Admiral" then
   BossMon = "Kilo Admiral" NameBoss = 'Kilo Admiral' NameQuestBoss = "MarineTreeIsland" QuestLvBoss = 3 RewardBoss = "Reward:\n$35,000\n56,000,000 Exp." CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938) CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
   elseif SelectBoss == "Captain Elephant" then
   BossMon = "Captain Elephant" NameBoss = 'Captain Elephant' NameQuestBoss = "DeepForestIsland" QuestLvBoss = 3 RewardBoss = "Reward:\n$40,000\n67,000,000 Exp." CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875) CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
   elseif SelectBoss == "Beautiful Pirate" then
   BossMon = "Beautiful Pirate" NameBoss = 'Beautiful Pirate' NameQuestBoss = "DeepForestIsland2" QuestLvBoss = 3 RewardBoss = "Reward:\n$50,000\n70,000,000 Exp." CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375) CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
   elseif SelectBoss == "Cake Queen" then
   BossMon = "Cake Queen" NameBoss = 'Cake Queen' NameQuestBoss = "IceCreamIslandQuest" QuestLvBoss = 3 RewardBoss = "Reward:\n$30,000\n112,500,000 Exp." CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664) CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
   elseif SelectBoss == "Longma" then
   BossMon = "Longma" NameBoss = 'Longma' CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
   elseif SelectBoss == "Soul Reaper" then
   BossMon = "Soul Reaper" NameBoss = 'Soul Reaper' CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
   elseif SelectBoss == "rip_indra True Form" then
   BossMon = "rip_indra True Form" NameBoss = 'rip_indra True Form' CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
   end
   end
end
function MaterialMon()
   if SelectMaterial == "Radioactive Material" then
   MMon = "Factory Staff" MPos = CFrame.new(295,73,-56) SP = "Default"
   elseif SelectMaterial == "Mystic Droplet" then
   MMon = "Water Fighter" MPos = CFrame.new(-3385,239,-10542) SP = "Default"
   elseif SelectMaterial == "Magma Ore" then
   if First_Sea then
   MMon = "Military Spy" MPos = CFrame.new(-5815,84,8820) SP = "Default"
   elseif Second_Sea then
   MMon = "Magma Ninja" MPos = CFrame.new(-5428,78,-5959) SP = "Default"
   end
   elseif SelectMaterial == "Angel Wings" then
   MMon = "God's Guard" MPos = CFrame.new(-4698,845,-1912) SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
end
   elseif SelectMaterial == "Leather" then
   if First_Sea then
   MMon = "Brute" MPos = CFrame.new(-1145,15,4350) SP = "Default"
   elseif Second_Sea then
   MMon = "Marine Captain" MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375) SP = "Default"
   elseif Third_Sea then
   MMon = "Jungle Pirate" MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375) SP = "Default"
   end
   elseif SelectMaterial == "Scrap Metal" then
   if First_Sea then
   MMon = "Brute" MPos = CFrame.new(-1145,15,4350) SP = "Default"
   elseif Second_Sea then
   MMon = "Swan Pirate" MPos = CFrame.new(878,122,1235) SP = "Default"
   elseif Third_Sea then
   MMon = "Jungle Pirate" MPos = CFrame.new(-12107,332,-10549) SP = "Default"
end
   elseif SelectMaterial == "Fish Tail" then
if Third_Sea then
   MMon = "Fishman Raider" MPos = CFrame.new(-10993,332,-8940) SP = "Default"
   elseif First_Sea then
   MMon = "Fishman Warrior" MPos = CFrame.new(61123,19,1569) SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
   end
end
   elseif SelectMaterial == "Demonic Wisp" then
   MMon = "Demonic Soul" MPos = CFrame.new(-9507,172,6158) SP = "Default"
   elseif SelectMaterial == "Vampire Fang" then
   MMon = "Vampire" MPos = CFrame.new(-6033,7,-1317) SP = "Default"
   elseif SelectMaterial == "Conjured Cocoa" then
   MMon = "Chocolate Bar Battler" MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625) SP = "Default"
   elseif SelectMaterial == "Dragon Scale" then
   MMon = "Dragon Crew Archer" MPos = CFrame.new(6594,383,139) SP = "Default"
   elseif SelectMaterial == "Gunpowder" then
   MMon = "Pistol Billionaire" MPos = CFrame.new(-469,74,5904) SP = "Default"
   elseif SelectMaterial == "Mini Tusk" then
   MMon = "Mythological Pirate" MPos = CFrame.new(-13545,470,-6917) SP = "Default"
   end
end
function Tween2(P1)
   local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   if Distance >= 1 then
   Speed = 300
   end
   game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {CFrame = P1}):Play()
if _G.CancelTween2 then
   game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {CFrame = P1}):Cancel()
end
 _G.Clip2 = true
   wait(Distance/Speed)
_G.Clip2 = false
end
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
function BTPZ(Point)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
   task.wait()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
function GetIsLand(...)
	local RealtargetPos = {...} local targetPos = RealtargetPos[1] local RealTarget
	if type(targetPos) == "vector" then RealTarget = targetPos
	elseif type(targetPos) == "userdata" then RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then RealTarget = CFrame.new(unpack(RealtargetPos)) RealTarget = RealTarget.p
end
local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do  local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then CheckInOut = ReMagnitude; ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
    end
end
function toTarget(...)
   local RealtargetPos = { ... }
   local targetPos = RealtargetPos[1]
   local RealTarget
   if type(targetPos) == "vector" then
       RealTarget = CFrame.new(targetPos)
   elseif type(targetPos) == "userdata" then
       RealTarget = targetPos
   elseif type(targetPos) == "number" then
       RealTarget = CFrame.new(unpack(RealtargetPos))
   end
   if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
       if tween then tween:Cancel() end
       repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
   end
   local tweenfunc = {}
   local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
       .Magnitude
   if Distance < 1000 then
       Speed = 315
   elseif Distance >= 1000 then
       Speed = 300
   end
   if BypassTP then
       if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
           pcall(function()
               tween:Cancel() fkwarp = false
               if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                   wait(.1) Com("F_", "TeleportToSpawn")
               elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                   wait(0.1) repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
               else
                   if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                       if fkwarp == false then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                       end
                       fkwarp = true
                   end
                   wait(.08)
                   game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15) repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                   wait(.1) Com("F_", "SetSpawnPoint")
               end
               wait(0.2)
               return
           end)
       end
   end
   local tween_s = game:service "TweenService"
   local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / Speed, Enum.EasingStyle.Linear)
   local tweenw, err = pcall(function() tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })tween:Play() end)
   function tweenfunc:Stop()
       tween:Cancel()
   end
   function tweenfunc:Wait()
       tween.Completed:Wait()
   end
   return tweenfunc
end
function Tween(Pos)
   Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
   pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end) tween:Play()
   if Distance <= 300 then tween:Cancel() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
   end
   if _G.StopTween == true then tween:Cancel() _G.Clip = false
   end
end
function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()
			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()
	local tweenfunc = {}
	function tweenfunc:Stop()
		tween:Cancel()
	end
	return tweenfunc
end
function TweenShip(CFgo)
   local tween_s = game:service"TweenService"
   local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
   tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
   tween:Play()
   local tweenfunc = {}
   function tweenfunc:Stop()
       tween:Cancel()
   end
   return tweenfunc
end
function TweenBoat(CFgo)
   if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
   local tween_s = game:service"TweenService"
   local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
   tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
   tween:Play()
   local tweenfunc = {}
   function tweenfunc:Stop()
       tween:Cancel()
   end
   return tweenfunc
end
function EquipTool(ToolSe)
   if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
      wait(0.5)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end
spawn(function() local gg = getrawmetatable(game) local old = gg.__namecall
   setreadonly(gg,false) gg.__namecall = newcclosure(function(...) local method = getnamecallmethod()
      local args = {...}
      if tostring(method) == "FireServer" then if tostring(args[1]) == "RemoteEvent" then if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
         if _G.UseSkill then
            if type(args[2]) == "vector" then
               args[2] = PositionSkillMasteryDevilFruit
            else
               args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
            end
            return old(unpack(args))
            end
         end
      end
   end
return old(...)
end)
end)
spawn(function()
   pcall(function()
      while task.wait() do
         for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
               if v:FindFirstChild("RemoteFunctionShoot") then
                  CurrentEquipGun = v.Name
               end
            end
         end
      end
   end)
end)
spawn(function()
   while task.wait() do
      pcall(function()
         if _G.TeleportIsland or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
               local Noclip = Instance.new("BodyVelocity")
               Noclip.Name = "BodyClip"
               Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
               Noclip.MaxForce = Vector3.new(100000,100000,100000)
               Noclip.Velocity = Vector3.new(0,0,0)
            end
         else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
         end
      end)
   end
end)
spawn(function()
   pcall(function()
     game:GetService("RunService").Stepped:Connect(function()
      if _G.TeleportIsland or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
         for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
               v.CanCollide = false
            end
         end
      end
   end)
end)
end)
function CheckMaterial(matname)
   for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
      if type(v) == "table" then
         if v.Type == "Material" then
            if v.Name == matname then
               return v.Count
            end
         end
      end
   end
return 0
end
 function GetCurrentBlade() 
     if not getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1] then return end
     while getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1].Parent~=game.Players.LocalPlayer.Character do getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1]=getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1].Parent end
     return getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1]
 end
 function AttackNoCD()
     if not AutoFarmMasDevilFruit or AutoFarmMasGun then
         if not Auto_Raid then
             for i = 1, 1 do 
               local bshit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60)
                 local cac = {} local hash = {}
                 for k, v in pairs(require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60)) do
                     if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                         table.insert(cac, v.Parent.HumanoidRootPart) hash[v.Parent] = true
                     end
                 end
                 bshit = cac
                 if #require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60) > 0 then
                     local u8 = debug.getupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 5)
                     local u9 = debug.getupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 6)
                     local u7 = debug.getupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 4)
                     local u10 = debug.getupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 7) local u12 = (u8 * 798405 + u7 * 727595) % u9 local u13 = u7 * 798405
                     (function() u12 = (u12 * u9 + u13) % 1099511627776 u8 = math.floor(u12 / u9) u7 = u12 - u8 * u9 end)()
                     u10 = u10 + 1
                     debug.setupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 5, u8)
                     debug.setupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 6, u9)
                     debug.setupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 4, u7)
                     debug.setupvalue(getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.attack, 7, u10)
                     pcall(function()
                         if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades and getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1] then
                           getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                             game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                             game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                             game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60), i, "")
                         end
                     end)
                 end
             end
         end
     end
 end
 function NormalAttack()
   if not _G.NormalAttack then
       local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
       local CombatFramework = debug.getupvalues(Module)[2]
       local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
       CamShake:Stop()
       CombatFramework.activeController.attacking = false
       CombatFramework.activeController.timeToNextAttack = 0
       CombatFramework.activeController.hitboxMagnitude = 180
       game:GetService'VirtualUser':CaptureController()
       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
   end
end
function GetWeaponInventory(Weaponname)
   for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
      if type(v) == "table" then
         if v.Type == "Sword" then
            if v.Name == Weaponname then
               return true
            end
         end
      end
   end
   return false
end
Type1 = 2
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(10,40,10)
        elseif Type == 2 then
            Pos = CFrame.new(-30,10,-30)
        elseif Type == 3 then
            Pos = CFrame.new(10,10,-40)
        elseif Type == 4 then
            Pos = CFrame.new(-40,10,10)	
        end
     end
end)
function AutoHaki()
   if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
   end
end
function BTP(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameMon == "FishmanQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Mon == "God's Guard"  then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif NameMon == "SkyExp1Quest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif NameMon == "ShipQuest1" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "ShipQuest2" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "FrostQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				else
               repeat wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p wait(.05) game.Players.LocalPlayer.Character.Head:Destroy() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
				end
			end
      end)
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
---= ///// Main \\\\\ =---
Main = Window:AddTab({ Title = "Main", Icon = "home" })
    local DropdownDelayAttack = Main:AddDropdown("DropdownDelayAttack", {
        Title = "Select Attack",
        Values = {'Slow Attack','Fast Attack','Super Fast Attack'},
        Multi = false,
        Default = 1,
    })
    DropdownDelayAttack:SetValue("Fast Attack")
    DropdownDelayAttack:OnChanged(function(Value)
    _G.FastAttackFaiFao_Mode = Value
	if _G.FastAttackFaiFao_Mode == "Fast Attack" then
		_G.Fast_Delay = 0.17
	elseif _G.FastAttackFaiFao_Mode == "Slow Attack" then
		_G.Fast_Delay = 0.25
	elseif _G.FastAttackFaiFao_Mode == "Super Fast Attack" then
		_G.Fast_Delay = 0.05
	end
end)

    local DropdownSelectWeapon = Main:AddDropdown("DropdownSelectWeapon", {
        Title = "Weapon",
        Values = {'Melee','Sword','Blox Fruit'},
        Multi = false,
        Default = 1,
    })
    DropdownSelectWeapon:SetValue('Melee')
    DropdownSelectWeapon:OnChanged(function(Value)
        ChooseWeapon = Value
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == " Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)
    local ChooseFarm = Main:AddDropdown("ChooseFarm", {
      Title = "Choose Farm",
      Values = {'Level','Bone','Cake Prince', 'Neareast Mob'},
      Multi = false,
      Default = 1,
  })
  ChooseFarm:SetValue('Melee')
  ChooseFarm:OnChanged(function(Value)
      ChooseFarm = Value
  end)
  local StartFarm = Main:AddToggle("StartFarm", {Title = "Auto Start Farm", Default = false })
  StartFarm:OnChanged(function(Value)
      _G.StartFarm = Value
  end)
  Options.StartFarm:SetValue(false)
  spawn(function()
   while task.wait() do
     if _G.StartFarm and ChooseFarm == "Level" then
       pcall(function()
         CheckLevel()
         if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
           if BypassTP then
             if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
               BTP(CFrameQ)
             elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
               Tween(CFrameQ)
             end
           else
         Tween(CFrameQ)
         end
         if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
         end
       elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
             if v.Name == Ms then
               repeat wait(_G.Fast_Delay)
                 AttackNoCD()
                 bringmob = true
                 AutoHaki()
                 EquipTool(SelectWeapon)
                 Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                 v.HumanoidRootPart.Transparency = 1
                 v.Humanoid.JumpPower = 0
                 v.Humanoid.WalkSpeed = 0
                 v.HumanoidRootPart.CanCollide = false
                 FarmPos = v.HumanoidRootPart.CFrame
                 MonFarm = v.Name
               until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
               bringmob = false
             end   
           end
         end
         for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
           if string.find(v.Name,NameMon) then
             if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
               Tween(v.CFrame * CFrame.new(posX,posY,posZ))
             end
           end
         end
       end
     end)
     elseif _G.StartFarm and ChooseFarm == "Bone" then
       local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
       local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
       local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
       if not string.find(QuestTitle, "Demonic Soul") then
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
       end
       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
         if BypassTP then
           if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame2.Position).Magnitude > 2500 then
             BTP(BoneCFrame2)
           elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame.Position).Magnitude < 2500 then
             Tween(BoneCFrame)
           end
         else
           Tween(BoneCFrame)
         end
         if (BoneCFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
         end
       elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
         if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
             if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
               if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                 if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                   repeat wait(_G.Fast_Delay)
                     AttackNoCD()
                     AutoHaki()
                     bringmob = true
                     EquipTool(SelectWeapon)
                     Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                     v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                     v.HumanoidRootPart.Transparency = 1
                     v.Humanoid.JumpPower = 0
                     v.Humanoid.WalkSpeed = 0
                     v.HumanoidRootPart.CanCollide = false
                     FarmPos = v.HumanoidRootPart.CFrame
                     MonFarm = v.Name
                   until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                 else
                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                   bringmob = false
                 end
               end
             end
           end
           else
           end
       end
     elseif _G.StartFarm and ChooseFarm == "Cake Prince" then
       local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
       if BypassTP then
         if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude > 2000 then
           BTP(CakeCFrame)
           wait(3)
         elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude < 2000 then
           Tween(CakeCFrame)
         end
       end
       if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then   
         if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
             if v.Name == "Cake Prince" then
               repeat wait(_G.Fast_Delay)
                 AttackNoCD()
                 AutoHaki()
                 EquipTool(SelectWeapon)
                 v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                 v.HumanoidRootPart.CanCollide = false
                 Tween(v.HumanoidRootPart.CFrame * Pos)
               until _G.CakePrince == false or not v.Parent or v.Humanoid.Health <= 0
               bringmob = false
             end    
           end    
         else
           Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
         end
       else
           if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
             for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
               if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                 repeat wait(_G.Fast_Delay)
                   AttackNoCD()
                   AutoHaki()
                   bringmob = true
                   EquipTool(SelectWeapon)
                   v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)  
                   FarmPos = v.HumanoidRootPart.CFrame
                   MonFarm = v.Name
                   Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                 until _G.CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                 bringmob = false
               end
             end
           else            
             Tween(CakeCFrame)
           end
         end
       elseif _G.StartFarm and ChooseFarm == "Neareast Mob" then
         for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
             if v.Name then
               if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                 repeat wait(_G.Fast_Delay)
                   AttackNoCD()
                   bringmob = true
                   AutoHaki()
                   EquipTool(SelectWeapon)
                   Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                   v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                   v.HumanoidRootPart.Transparency = 1
                   v.Humanoid.JumpPower = 0
                   v.Humanoid.WalkSpeed = 0
                   v.HumanoidRootPart.CanCollide = false
                   FarmPos = v.HumanoidRootPart.CFrame
                   MonFarm = v.Name
                 until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                 bringmob = false
               end
             end
           end
         end 
     end
   end
 end)

---= ///// Item \\\\\ =---

Item = Window:AddTab({ Title = "Item/Quest", Icon = "swords" })



---= ///// Stats \\\\\ =---

Stats = Window:AddTab({ Title = "Stats", Icon = "plus-circle" })

SelectPoint = 1
Stats:AddSlider("GetSliderPoint", {
   Title = "Point",
   Description = "",
   Default = 1,
   Min = 0,
   Max = 100,
   Rounding = 1,
   Callback = function(Value)
      SelectPoint = Value
   end
})
local MeleeS = Stats:AddToggle("MyToggleMelee", {Title = "Melee", Default = false })
MeleeS.MyToggleMelee:SetValue(false)
Options:OnChanged(function(v)
   while task.wait() and v do
      RS.Remotes.CommF_:InvokeServer("AddPoint", "Melee", SelectPoint)
  end
end)
local DefenseS = Stats:AddToggle("MyToggleDefense", {Title = "Defense", Default = false })
DefenseS.MyToggleDefense:SetValue(false)
Options:OnChanged(function(v)
   while task.wait() and v do
      RS.Remotes.CommF_:InvokeServer("AddPoint", "Defense", SelectPoint)
  end
end)
local SwordS = Stats:AddToggle("MyToggleSword", {Title = "Sword", Default = false })
SwordS.MyToggleSword:SetValue(false)
Options:OnChanged(function(v)
   while task.wait() and v do
      RS.Remotes.CommF_:InvokeServer("AddPoint", "Sword", SelectPoint)
  end
end)
local GunS = Stats:AddToggle("MyToggleGun", {Title = "Gun", Default = false })
GunS.MyToggleGun:SetValue(false)
Options:OnChanged(function(v)
   while task.wait() and v do
      RS.Remotes.CommF_:InvokeServer("AddPoint", "Gun", SelectPoint)
  end
end)
local DevilFruitS = Stats:AddToggle("MyToggleDevilFruit", {Title = "Devil Fruit", Default = false })
DevilFruitS.MyToggleDevilFruit:SetValue(false)
Options:OnChanged(function(v)
   while task.wait() and v do
      RS.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", SelectPoint)
  end
end)

---= ///// Shop \\\\\ =---

Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" })



---= ///// Island \\\\\ =---

Island = Window:AddTab({ Title = "Island", Icon = "palmtree" })



---= ///// Dungeon/ESP \\\\\ =---

Raid = Window:AddTab({ Title = "Dungeon/ESP", Icon = "sword" })



---= ///// Race V4 \\\\\ =---

RaceV4 = Window:AddTab({ Title = "Race V4", Icon = "chevrons-right" })



---= ///// Fruit \\\\\ =---

Fruit = Window:AddTab({ Title = "Fruit", Icon = "apple" })



---= ///// Misc \\\\\ =---

Misc = Window:AddTab({ Title = "Misc", Icon = "list-plus" })



---= ///// Setting \\\\\ =---

Settings = Window:AddTab({ Title = "Setting", Icon = "settings" })

