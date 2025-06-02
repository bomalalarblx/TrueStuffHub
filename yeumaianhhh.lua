local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub True Version",
    SubTitle = "by queeni",
    TabWidth = 120,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    ScriptHub = Window:AddTab({ Title = "Tab ScriptHub", Icon = "home" }),
    Teleport = Window:AddTab({ Title = "Tab Teleport", Icon = "map" }),
    Combat = Window:AddTab({ Title = "Tab Combat", Icon = "sword" }),
    FPS = Window:AddTab({ Title = "Boost FPS and Set FPS Cap", Icon = "settings" }),
    Studio = Window:AddTab({ Title = "Tab Studio", Icon = "code" }),
    ScriptHub = Window:AddTab({ Title = "Script Hub", Icon = "cloud" }),
    CoolStuff = Window:AddTab({ Title = "Tab Cool Stuff", Icon = "box" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Stuff Hub",
        Content = "Loaded",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    local Slider = Tabs.ScriptHub:AddSlider("Slider", {
        Title = "Walkspeed",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    local Slider = Tabs.ScriptHub:AddSlider("Slider", {
        Title = "Jumppower",
        Description = "",
        Default = 50,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })
    local Slider = Tabs.ScriptHub:AddSlider("Slider", {
        Title = "Gravity",
        Description = "",
        Default = 196,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Workspace.Gravity = Value
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Infinite Jump",
        Description = "",
        Callback = function()
          local player = game.Players.LocalPlayer
local userInput = game:GetService("UserInputService")
local humanoid = nil

local function onJumpRequest()
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end

local function onCharacterAdded(char)
    humanoid = char:WaitForChild("Humanoid")
end

if player.Character then
    onCharacterAdded(player.Character)
end
player.CharacterAdded:Connect(onCharacterAdded)

userInput.JumpRequest:Connect(onJumpRequest)
    end
    })
    local MainSection = Tabs.ScriptHub:AddSection("Tool")
    Tabs.ScriptHub:AddParagraph({
        Title = "Version: " .. game.PlaceVersion,
        Content = ""
    })
    Tabs.ScriptHub:AddButton({
        Title = "Old Server Finder(GAG)",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Old%20Server%20Finder%20Grow%20a%20Garden", true))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Hop Server",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Morples/Server-hop/refs/heads/main/Script"))()
        end
    })
    Tabs.Teleport:AddSection("TSB")
    Tabs.Teleport:AddButton({
         Title = "Middle Map",
         Description = "",
         Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(152.372971, 429.544525, 26.2189884, 0.382687271, -0, -0.923877954, 0, 1, -0, 0.923877954, 0, 0.382687271)
        end
    })
    Tabs.Teleport:AddSection("Grow A Garden")
        Tabs.ScriptHub:AddParagraph({
        Title = "Teleport",
        Content = "Teleport Section"
    })
    Tabs.ScriptHub:AddButton({
        Title = "Teleport Pet Shop",
        Description = "",
        Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.41452, 2.76619363, -9.37789536, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Teleport Gear Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.41452, 2.76619363, -31.3778954, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Teleport Seed Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.5854721, 2.76619363, -27.0039806, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Teleport Sell Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.5854721, 2.76619363, 0.426784277, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Teleport Queen Bee",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-99.5022507, 1.10001338, -11.7994785, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
    end
    })
    Tabs.Combat:AddSection("PVP")
    Tabs.Combat:AddButton({
        Title = "Target Strafe",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/saygex"))()
        end
    })
    Tabs.Combat:AddSection("ESP + Chams")
    Tabs.Combat:AddButton({
        Title = "ESP Player Name",
        Description = "",
        Callback = function()
         local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

function createESP(player)
    if player == localPlayer then return end

    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP"
    billboardGui.Adornee = head
    billboardGui.Size = UDim2.new(0, 100, 0, 40)
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
    billboardGui.AlwaysOnTop = true

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.new(1, 0, 0)
    nameLabel.TextStrokeTransparency = 0.5
    nameLabel.TextScaled = true
    nameLabel.Parent = billboardGui

    billboardGui.Parent = head
end

-- Add ESP to all current players
for _, player in ipairs(Players:GetPlayers()) do
    createESP(player)
end

-- Add ESP to new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESP(player)
    end)
end)
  end
    })
    Tabs.Combat:AddButton({
        Title = "Chams",
        Description = "",
        Callback = function()
         -- LocalScript (place it in StarterPlayer > StarterPlayerScripts)
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Function to apply Chams to a character
local function applyChams(player)
    if player == localPlayer then return end

    local function onCharacterAdded(character)
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                local chamsPart = Instance.new("BoxHandleAdornment")
                chamsPart.Name = "Chams"
                chamsPart.Adornee = part
                chamsPart.AlwaysOnTop = true
                chamsPart.ZIndex = 10
                chamsPart.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
                chamsPart.Transparency = 0.4
                chamsPart.Color3 = Color3.fromRGB(0, 255, 255) -- Cyan glow
                chamsPart.Parent = part
            end
        end
    end

    -- Apply to already loaded character
    if player.Character then
        onCharacterAdded(player.Character)
    end

    -- Apply to future characters
    player.CharacterAdded:Connect(onCharacterAdded)
end

-- Apply chams to all existing players
for _, player in ipairs(Players:GetPlayers()) do
    applyChams(player)
end

-- Apply chams to new players
Players.PlayerAdded:Connect(applyChams)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "Mountain 1",
        Description = "Teleport 2 Times to work",
        Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.8649902, 647.484375, -388.229523, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
       end
    })
    Tabs.Teleport:AddButton({
        Title = "Mountain 2",
        Description = "Teleport 2 Times to work",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(240.477737, 694.066589, 465.30484, -0.997555494, 0, -0.0698780864, 0, 1, 0, 0.0698780864, 0, -0.997555494)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "Void",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161.476639, 328.498627, 16.6304874, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
    })
    local TeleportSection = Tabs.Teleport:AddSection("Trashcan")
    Tabs.Teleport:AddButton({
        Title = "1",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127.467331, 439.194946, -103.56292, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "2",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.21521, 439.487885, -81.3819504, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "3",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.36309814, 439.544098, 55.0225143, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "4",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43.2542877, 439.631592, 166.788589, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "5",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(126.398529, 439.437866, 182.861176, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "6",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.69931, 439.438782, 158.918015, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Teleport:AddSection("MM2")
    Tabs.Teleport:AddButton({
         Title = "Lobby",
         Description = "",
         Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-107.800034, 135.550064, 9.39997005, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    })
    Tabs.FPS:AddButton({
        Title = "Low Graphics",
        Description = "",
        Callback = function()
           local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Disable textures and visual effects
local function optimizeDescendants(obj)
	for _, item in pairs(obj:GetDescendants()) do
		-- Remove textures and decals
		if item:IsA("Decal") or item:IsA("Texture") then
			item:Destroy()
		end

		-- Disable particles and trails
		if item:IsA("ParticleEmitter") or item:IsA("Trail") or item:IsA("Smoke") or item:IsA("Fire") then
			item.Enabled = false
		end

		-- Simplify materials
		if item:IsA("BasePart") then
			item.Material = Enum.Material.SmoothPlastic
			item.Reflectance = 0
		end
	end
end

-- Apply to entire workspace
optimizeDescendants(workspace)


-- Lower lighting effects
Lighting.GlobalShadows = false
Lighting.FogEnd = 1e10
Lighting.Brightness = 1
Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)

-- Reduce terrain decoration
if Terrain then
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 1
end

-- Optionally reduce player details
local function optimizeCharacter(character)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("Accessory") or part:IsA("ShirtGraphic") or part:IsA("Clothing") then
			part:Destroy()
		end
	end
end

-- Apply to your character
if player.Character then
	optimizeCharacter(player.Character)
end

-- Apply to future characters
player.CharacterAdded:Connect(optimizeCharacter)       
        end
    })
    Tabs.FPS:AddButton({
        Title = "60 FPS Cap",
        Description = "",
        Callback = function()
          setfpscap(60)
    end
    })
    Tabs.FPS:AddButton({
        Title = "120 FPS Cap",
        Description = "",
        Callback = function()
           setfpscap(120)
    end
    })
    Tabs.FPS:AddButton({
        Title = "144 FPS Cap",
        Description = "",
        Callback = function()
          setfpscap(144)
    end
    })
    Tabs.FPS:AddSection("Whitescren + Rejoin")
    Tabs.FPS:AddButton({
        Title = "Script",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/whitescreen"))()
        end
    })
        Tabs.ScriptHub:AddButton({
        Title = "W-azure True V2(Premium)",
        Description = "",
        Callback = function()
          script_key = "nforlZPARKXHuWFMPQQqkwctQkjMvgzP"
getgenv().Team = "Marines"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
       end
    })
    Tabs.ScriptHub:AddButton({
        Title = "W-azure True V2(Free)",
        Description = "",
        Callback = function()
          getgenv().Team = "Marines"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        end
    })

    Tabs.ScriptHub:AddButton({
        Title = "Banana Cat-Hub",
        Description = "",
        Callback = function()
         repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "10d136f561ea7b6dd6ec7831"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
        end
    })
    
    Tabs.ScriptHub:AddButton({
        Title = "Maru Hub(PE)",
        Description = "",
        Callback = function()
         getgenv().Key = "MARU-29LDH-41X5-YOK6M-EY5A-RCEG2"
getgenv().id = "1002555069805383680"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
        end
    })

    Tabs.ScriptHub:AddButton({
        Title = "Join Script",
        Description = "",
        Callback = function()
          --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Create the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Grey background
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Add rounded corners to the frame
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8) -- Adjust corner radius as needed
uiCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Text = "Join Server by Job ID"
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Darker grey
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
title.Parent = frame

-- Add rounded corners to the title
local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = title

local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter Job ID"
textBox.Size = UDim2.new(0.8, 0, 0, 30)
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
textBox.Parent = frame

-- Add rounded corners to the text box
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = textBox

local joinButton = Instance.new("TextButton")
joinButton.Text = "Join Server"
joinButton.Size = UDim2.new(0.8, 0, 0, 30)
joinButton.Position = UDim2.new(0.1, 0, 0.7, 0)
joinButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
joinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
joinButton.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
joinButton.Parent = frame

-- Add rounded corners to the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = joinButton

-- Function to join the server by Job ID
joinButton.MouseButton1Click:Connect(function()
    local jobId = textBox.Text
    if jobId and jobId ~= "" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jobId)
    else
        print("Please enter a valid Job ID.")
    end
end)
        end
    })


   
  Tabs.ScriptHub:AddButton({
        Title = "Skull Hub",
        Description = "",
        Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
        end
    })
  Tabs.ScriptHub:AddButton({
        Title = "Native Hub",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
        end
    })
  Tabs.ScriptHub:AddButton({
     Title = "Teleport Train",
     Description = "",
     Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59.6720085, 10.2199755, 29817.6973, 1, 0, 0, 0, 1, 0, 0, 0, 1)
     end
  })
  Tabs.ScriptHub:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/refs/heads/master/source"))()
        end
  })
  Tabs.ScriptHub:AddButton({
       Title = "Nameless Admin",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/refs/heads/main/Source.lua"))()
       end
  })
  Tabs.ScriptHub:AddButton({
       Title = "Silent Aim",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/blox/refs/heads/main/silentaimuniversal"))()
       end
  })
  Tabs.ScriptHub:AddButton({
       Title = "Universe Viewer",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/Universe%20Viewer"))();
       end
  })
  Tabs.ScriptHub:AddButton({
       Title = "Yeet Gui(Fling)",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Flacherflache/FE-Yeet-Gui/refs/heads/main/Script"))()
    end
  })
  Tabs.ScriptHub:AddButton({
       Title = "Fly Gui V3",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
       end
  })
    Tabs.ScriptHub:AddSection("Kaitun BF")
    Tabs.ScriptHub:AddButton({
        Title = "Banana-Cat Hub",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/blox/refs/heads/main/kaitunbanananocap"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Kaitun-Leviathan",
        Description = "",
        Callback = function()
          repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "10d136f561ea7b6dd6ec7831"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Maru Hub(PE)",
        Description = "",
        Callback = function()
          getgenv().Key = "MARU-29LDH-41X5-YOK6M-EY5A-RCEG2"
getgenv().id = "1002555069805383680"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Quartyz Hub",
        Description = "",
        Callback = function()
         getgenv().Mode = "OneClick"
getgenv().Setting = {
    ["Team"] = "Pirates", -- Options "Pirates", "Marines"
    ["FucusOnLevel"] = true,
    ["Fruits"] = {  -- setting for fruits u want
        ["Primary"] = { -- if current fruit is not in this list, eat/buy
            "Dough-Dough",
            "Dragon-Dragon",
            "Buddha-Buddha",
            -- u can configs add mores/remove and must end with , (comma symbol)
        },
        ["Normal"] = { -- it just a normal fruit list
            "Flame-Flame",
            "Light-Light",
            "Magma-Magma",
            -- u can configs add mores/remove and must end with , (comma symbol)
        }
        -- run this for get all fruit name `local t={};for _,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetFruits"))do table.insert(t,`"{v.Name}"`)end;setclipboard(table.concat(t, "\n"))`
    },
    ["IdleCheck"] = 150, -- every (x) seconds if not moving rejoin
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
      end
    })
    Tabs.ScriptHub:AddSection("PVP BF")
    Tabs.ScriptHub:AddButton({
        Title = "Quartyz Hub",
        Description = "",
        Callback = function()
         getgenv().Mode = "PVP"
getgenv().Team = "Pirates" -- Options "Marines", "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
        end
    })
    Tabs.ScriptHub:AddButton({
         Title = "Quartyz Hub",
         Description = "",
         Callback = function()
              loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/BABFT")()
        end
    })
    Tabs.ScriptHub:AddButton({
         Title = "Auto Bond",
         Description = "",
         Callback = function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Auto Bounty",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/autobounty"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Anti AFK",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "FPS Booster",
        Description = "",
        Callback = function()
         _G.Ignore = {}
_G.Settings = {
    Players = {
        ["Ignore Me"] = true,
        ["Ignore Others"] = true,
        ["Ignore Tools"] = true
    },
    Meshes = {
        NoMesh = false,
        NoTexture = false,
        Destroy = false
    },
    Images = {
        Invisible = true,
        Destroy = false
    },
    Explosions = {
        Smaller = true,
        Invisible = false, -- Not for PVP games
        Destroy = false -- Not for PVP games
    },
    Particles = {
        Invisible = true,
        Destroy = false
    },
    TextLabels = {
        LowerQuality = true,
        Invisible = false,
        Destroy = false
    },
    MeshParts = {
        LowerQuality = true,
        Invisible = true,
        NoTexture = true,
        NoMesh = true,
        Destroy = true
    },
    Other = {
        ["FPS Cap"] = 240, -- true to uncap
        ["No Camera Effects"] = true,
        ["No Clothes"] = true,
        ["Low Water Graphics"] = true,
        ["No Shadows"] = true,
        ["Low Rendering"] = true,    
        ["Low Quality Parts"] = true,
        ["Low Quality Models"] = true,
        ["Reset Materials"] = true,
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Keyboard",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "White Screen + Boost FPS",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/whitescreen"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Stuff Hub-Skid",
        Description = "random skid",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/kit"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Blox Fruit Kit",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/bloxfruitkit"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Rinns Hub",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Kiciahook",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b7d180acad508c48c140afe43d01ea0c.lua"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Best Script(Not Working)",
        Description = "",
        Callback = function()
           --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa1/Grow-a-Garden/main/Grow_A_Garden.lua"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Native Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "New Script",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kosowa/asd/refs/heads/main/GaG.lua"))()
	end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Yarhm",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Custom Hub",
        Description = "",
        Callback = function()
          print("Coming Soon!")
        end
    })
    Tabs.ScriptHub:AddButton({
        Title = "Kill Roblox",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://youtube.com"))()
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
