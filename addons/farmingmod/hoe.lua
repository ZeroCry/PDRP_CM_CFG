if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local WEAPON = {}

WEAPON.NAME = "Hoe"
WEAPON.INFORMATION = "A hoe that is used to farm"
WEAPON.MODEL = "models/weapons/eryk/farmingmod/w_hoe.mdl"
WEAPON.SKIN = 0
WEAPON.SWEP = "weapon_hoe"

WEAPON.SELL = 500
WEAPON.BUY = 1000

WEAPON.WEIGHT = 5

CRAFTINGMOD.WEAPONS:Register(WEAPON)
