if  !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:SILCOOK() then return end

local ITEM = {}
ITEM.NAME = SILCOOK.Config.Language["IS_BAKINGTRAY_NAME"]
ITEM.INFORMATION = SILCOOK.Config.Language["IS_BAKINGTRAY_DESC"]
ITEM.MODEL = "models/foodnhouseholditems/mcdmealplate.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cook_tray"

ITEM.SELL = 20
ITEM.BUY = 30

ITEM.WEIGHT = 2

ITEM.ADDON = true

ITEM.Pickup = function(self, ent, ply)
	ent:GiveRecipe( ply )
end

CRAFTINGMOD.ITEMS:Register(ITEM)
