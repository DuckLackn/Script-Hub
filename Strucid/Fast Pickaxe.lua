local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

local scriptPath = game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Animations.SeqModules.Equip
local scriptPath2 = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Controller.ToolController
local closureName = "Unnamed function"
local upvalueIndex = 3
local closureConstants = {
    [1] = "Character",
    [2] = "HumanoidRootPart",
    [3] = "FindFirstChild",
    [4] = "Velocity",
    [5] = "magnitude",
    [6] = 0.2
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local closure2 = aux.searchClosure(scriptPath2, closureName, upvalueIndex, closureConstants)
local value = 0.001
local elementIndex = "Debounce"


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
debug.getupvalue(closure2, upvalueIndex)[elementIndex] = value
