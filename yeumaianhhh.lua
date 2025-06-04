local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-Loader",
    SubTitle = "by queeni",
    TabWidth = 120,
    Size = UDim2.fromOffset(500, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Loader", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Stuff Hub",
        Content = "Loaded",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    Tabs.Main:AddParagraph({
        Title = "Input: manh",
        Content = ""
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "Rope Battles",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/ropebattles.lua"))()
            end
    end
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "TSB",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/tsb.lua"))()
            end
    end
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "All in One",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50,
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/script.lua"))()
            end
    end
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "Only Hop",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/onlyhop.lua"))()
            end
    end
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "Aimbot",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/kit"))()
            end
    end
    })
    local Input = Tabs.Main:AddInput("Input", {
        Title = "Target Strafe",
        Default = "",
        Placeholder = "",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Placeholder == manh then
                repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/saygex"))()
            end
    end
    }) 
end

   

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
