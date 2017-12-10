if  !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:SILCOOK() then return end

local ITEM = {}
ITEM.NAME = SILCOOK.Config.Language["IS_PROPANE_NAME"]
ITEM.INFORMATION = SILCOOK.Config.Language["IS_PROPANE_DESC"]
ITEM.MODEL = "models/props_junk/PropaneCanister001a.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cook_propane"

ITEM.SELL = 80
ITEM.BUY = 90

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

CRAFTINGMOD.ITEMS:Register(ITEM)
