local rolibwaita = loadstring(game:HttpGet("https://codeberg.org/Blukez/rolibwaita/raw/branch/master/Source.lua"))()

local Window = rolibwaita:NewWindow({
    Name = "LUKRAZ Hub  (v1.0)",
    Keybind = "RightShift",
    UseCoreGui = true,
    PrintCredits = true,
})

game.StarterGui:SetCore("SendNotification", {Title="LISHA Hub"; Text="LISHA Hub successfully executed."; Duration=5;})

local HomeTab = Window:NewTab({
    Name = "Home",
    Icon = nil 
})

local HomeSection = HomeTab:NewSection({
    Name = "Home", 
    Description = "LUKRAZ Hub Home",
})

local Slider = HomeSection:NewSlider({
    Name = "Walk Slider", 
    Description = "Adjusts walkspeed",
    MinMax = {"16", "600"}, 
    Increment = 5, 
    CurrentValue = 16,
    Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end,
})

local Slider = HomeSection:NewSlider({
    Name = "Jump Slider",
    Description = "Adjusts jumppower",
    MinMax = {"50", "1000"},
    Increment = 5,
    CurrentValue = 50,
    Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
})

local Toggle = HomeSection:NewToggle({
    Name = "Infinite Jump",
    Description = "Jump infinitely", 
    CurrentState = false,
    Callback = function(value)
		_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	_G.infinJumpStarted = true

	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
    end,
})

local ScriptTab = Window:NewTab({
    Name = "Scripts",
    Icon = nil,
})

local ScriptSection = ScriptTab:NewSection({
    Name = "Scripts",
    Description = "Extra Scripts / GUIs",
})

local Button = ScriptSection:NewButton({
    Name = "Infinite Yield",
    Description = "Executes Infinite Yield Admin Commands",
    Callback = function(value)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

local Button = ScriptSection:NewButton({
    Name = "Nut Hub",
    Description = "Executes script hub with over 150+ games supported",
    Callback = function(value)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/01iq/scripthub/refs/heads/main/solara",true))()
    end,
})