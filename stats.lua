local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()

local Window = MacLib:Window({
    Title = "статистика",
    Subtitle = "легенды мышц",
    Size = UDim2.fromOffset(650, 300),
    DragStyle = 2,
    DisabledWindowControls = {},
    ShowUserInfo = true,
    Keybind = Enum.KeyCode.RightControl,
    AcrylicBlur = true,
})

local TabGroup = Window:TabGroup()

local Tab = TabGroup:Tab({
  Name = "главная",
  Image = "0"
})

local Section = Tab:Section({
  Side = "Left"
})

local Section2 = Tab:Section({
  Side = "Right"
})

local pet_state = {
    Name = "Neon Guardian";
    Strength = 100000000000;
    Durability = 100000000000;
    Agility = 100000000000;
    Damage = 100000000000;
    EXP = 1250;
};

Section2:Label({
  Text = "сделано мной",
}, "TargetInput")

Section:Label({
  Text = 'нажми "применить", чтобы применить обновления',
}, "TargetInput")

Section:Button({
  Name = "применить",
  Callback = function()
		-- check moment, gets all pets btw
        local player = game.Players.LocalPlayer
	for v in ipairs(player:FindFirstChild("petsFolder"):GetDescendants()) do
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

                print("статистика обновлена")
            end
        end
	end,
})
