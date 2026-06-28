if not game:IsLoaded() then
    game.Loaded:Wait()
end
if game.PlaceId == 3260590327 then
local args = {
	"Multiplayer",
	"v2:start",
	{
		difficulty = "Easy",
		mode = "hardcore",
		count = 1
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/DuxiiT/auto-strat/refs/heads/main/Library.lua"))()
TDS:GameInfo("Wretched Front", {})
TDS:Loadout("Pyromancer")
TDS:Place("Pyromancer", -2.973928928375244, 1.0045982599258423, -34.698089599609375)
TDS:Loadout("Gatling Gun", "Engineer", "Mercenary Base", "Hacker", "Trapper")
TDS:Ready()
TDS:VoteSkip(1,27)
for i = 1,3 do TDS:Upgrade(1) end
TDS:Place("Gatling Gun", -13.371607780456543, 2.2115964889526367, 1.4429768323898315, true)
for i = 1,2 do TDS:Upgrade(2) end
for i = 1,7 do TDS:Place("Trapper", -13.371607780456543, 2.2115964889526367, 1.4429768323898315, true) end
for index = 3, 8 do
    for up = 1, 3 do
        TDS:Upgrade(index)
    end
    TDS:SetOption(index, "Trap", "Landmine")
end
for i = 1,2 do TDS:Upgrade(2) end
for i = 1,3 do TDS:Upgrade(9) end
TDS:SetOption(9, "Trap", "Landmine")
for i = 3, 6 do TDS:Upgrade(i) end
for i = 1,2 do TDS:Upgrade(2) end
for i = 7,9  do TDS:Upgrade(i) end
TDS:Place("Mercenary Base",-13.371607780456543, 2.2115964889526367, 1.4429768323898315, true)
for i = 1,4 do TDS:Upgrade(10) end
TDS:SetOption(10, "Unit 1", "Riot Guard") 
TDS:SetOption(10, "Unit 2", "Riot Guard") 
TDS:SetOption(10, "Unit 3", "Riot Guard") 
for i = 1,2 do TDS:Upgrade(10) end
TDS:Place("Hacker", -0.5224907398223877, 3.39048171043396, -22.848535537719727, true)
for i = 1,4 do TDS:Upgrade(11) end
TDS:Upgrade(11, 2)
TDS:Place("Mercenary Base", -13.371607780456543, 2.2115964889526367, 1.4429768323898315, true)
for i = 1,4 do TDS:Upgrade(12) end
TDS:SetOption(12, "Unit 1", "Riot Guard") 
TDS:SetOption(12, "Unit 2", "Riot Guard") 
TDS:SetOption(12, "Unit 3", "Riot Guard") 
for i = 1,2 do TDS:Upgrade(12) end
TDS:Place("Mercenary Base", -13.371607780456543, 2.2115964889526367, 1.4429768323898315, true)
for i = 1,4 do TDS:Upgrade(13) end
TDS:SetOption(13, "Unit 1", "Riot Guard") 
TDS:SetOption(13, "Unit 2", "Riot Guard") 
TDS:SetOption(13, "Unit 3", "Riot Guard") 
for i = 1,2 do TDS:Upgrade(13) end
for i = 1, 6 do
    TDS:Place("Engineer", -3.745070219039917, 3.1197564601898193, -18.154348373413086, true)
end
for index = 14, 19 do
    for up = 1, 6 do
        TDS:Upgrade(index)
    end
end
TDS:Place("Hacker", -4.328042507171631, 2.92695951461792, -10.09583854675293, true)
for i = 1,4 do TDS:Upgrade(20) end
TDS:Upgrade(20, 2)
TDS:Ability(20, "Hologram Tower", {
    towerToClone = 2,
    towerPosition = Vector3.new(-17.65178680419922, 2.2656168937683105, 6.878558158874512)
}, true)
