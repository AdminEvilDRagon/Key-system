local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KeySystem", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Evi-hub ",
	Content = "Evil-Hub Key System",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "o=:/jQ-ycO<HaqJf&YN;|xSa!5]t-%8*%FX68_gT0284+D_X*VNy^BAd~Uu1t;$" -- You Put Your Key Here
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AdminEvilDRagon/Evil-Hub-updatet-/main/Evil-Hub%20updatet%2027.8.lua", true))() -- You Put Your Script Here

end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "Welcome To Evil-Hub, you can close the Key System now!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = "Maybe you are not whitelisted",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

