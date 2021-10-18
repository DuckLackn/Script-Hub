--local Strucid = 2377868063
local SuperDarts = 4914988106


if game.PlaceId == Strucid then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/DuckLackn/Script-Hub/main/Script%20Hub%20Scripts/Strucid%20Game.lua")()
 elseif game.PlaceId == SuperDarts then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/DuckLackn/Script-Hub/main/Script%20Hub%20Scripts/Super%20Darts%20Game")()
 elseif game.PlaceId ~= Strucid or SuperDarts then
    game:GetService("Players").LocalPlayer:Kick("This Isn't A Valid Game")
 end


-- This is the edited code
