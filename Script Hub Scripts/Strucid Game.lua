local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Duck Hub - Strucid", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Exploits", 5012544693)
local section1 = page:addSection("Weapon Exploits")
local section2 = page:addSection("Player Exploits")

section1:addSlider("Pickaxe Swing Speed", 1, 0.01, 10, function(slider1)
    wait(0.1)
    for i=1, 20 do
        wait(0.001)
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
        local value = slider1
        local elementIndex = "Debounce"


        -- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
        debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
        debug.getupvalue(closure2, upvalueIndex)[elementIndex] = value
    end
end)

section1:addButton("Button", function()
    print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
    print("Input", value)

if focusLost then
    venyx:Notify("Notification", value)
end
end)

section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = venyx:addPage("Settings", 5012544693)
local colors = theme:addSection("Colors")
local Settings = theme:addSection("Settings")
local LocalCheese = theme:addSection("Local Options")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(theme, color, function(color3)
    venyx:setTheme(theme, color3)
end)
end

Settings:addKeybind("Menu Keybind", Enum.KeyCode.Semicolon, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
    end)

LocalCheese:addSlider("Slider", 80, 40, 160, function(slider1)
while true do
    game.Workspace.Camera.FieldOfView = slider1
end
end)
-- load
venyx:SelectPage(venyx.pages[1], true)
