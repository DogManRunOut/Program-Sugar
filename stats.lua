local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()

local Window = MacLib:Window({
    Title = "Stats",
    Subtitle = "Muscle Legends",
    Size = UDim2.fromOffset(600, 400),
    DragStyle = 2,
    DisabledWindowControls = {},
    ShowUserInfo = true,
    Keybind = Enum.KeyCode.RightControl,
    AcrylicBlur = true,
})

local TabGroup = Window:TabGroup()

local Tab = TabGroup:Tab({
  Name = "Main",
  Image = "0"
})

local Section = Tab:Section({
  Side = "Left"
})

local Section2 = Tab:Section({
  Side = "Right"
})

local pet_state = {
    Name = "what";
    Strength = 0;
    Durability = 0;
    Agility = 0;
    Damage = 0;
    EXP = 0;
};

Section2:Label({
  Text = "Made by Wendigo",
}, "TargetInput")

Section:Label({
  Text = "Press ENTER to apply each values.",
}, "TargetInput")

Section:Input({
	Name = "Pet name (required)",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
	    pet_state.Name = "Neon Guardian"
	end,
}, "TargetInput")

Section:Input({
	Name = "Strength of the pet",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
		pet_state.Strength = 100000000000
	end,
}, "TargetInput")

Section:Input({
	Name = "Durability of the pet",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
		pet_state.Durability = 100000000000
	end,
}, "TargetInput")

Section:Input({
	Name = "Agility of the pet",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
		pet_state.Agility = 100000000000
	end,
}, "TargetInput")

Section:Input({
	Name = "Damage of the pet",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
		pet_state.Damage = 100000000000
	end,
}, "TargetInput")

Section:Input({
	Name = "EXP of the pet",
	Placeholder = "Number",
	AcceptedCharacters = "All",
	Callback = function(input)
		pet_state.EXP = 100000000000
	end,
}, "TargetInput")

Section:Button({
  Name = "Apply",
  Callback = function()
		-- check moment, gets all pets btw
        local player = game.Players
        for i, v in ipairs(player:FindFirstChild("petsFolder"):GetDescendants()) do
            if v.Name == pet_state.Name then
                local pet = v
                local perks_folder = pet.perksFolder
                local str = perks_folder:FindFirstChild("strength")
                local dur = perks_folder:FindFirstChild("durability")
                local agi = perks_folder:FindFirstChild("agility")
                local dmg = perks_folder:FindFirstChild("damage")
                local exp = pet:FindFirstChild("exp")

                if str then
                str.Value = pet_state.Strength
                end
                if dur then
                dur.Value = pet_state.Durability
                end
                if agi then
                agi.Value = pet_state.Agility
                end
                if dmg then
                dmg.Value = pet_state.Damage
                end
                if exp then
                exp.Value = pet_state.EXP
                end

                print("Applied stats to the pet.")
            end
        end
	end,
})
