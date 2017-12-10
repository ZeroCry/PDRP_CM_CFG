if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local WEAPON = {}

WEAPON.NAME = "Watercan"
WEAPON.INFORMATION = "A watercan to water farm spots"
WEAPON.MODEL = "models/weapons/eryk/watercan_weapon/w_watercan.mdl"
WEAPON.SKIN = 0
WEAPON.SWEP = "weapon_watercan"

WEAPON.SELL = 500
WEAPON.BUY = 1000

WEAPON.WEIGHT = 5

CRAFTINGMOD.WEAPONS:Register(WEAPON)
