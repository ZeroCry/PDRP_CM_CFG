if  !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:SILCOOK() then return end

local ITEM = {}
ITEM.NAME = SILCOOK.Config.Language["IS_STOVE_NAME"]
ITEM.INFORMATION = SILCOOK.Config.Language["IS_STOVE_DESC"]
ITEM.MODEL = "models/props_wasteland/kitchen_stove001a.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cook_stove"

ITEM.SELL = 200
ITEM.BUY = 250

ITEM.WEIGHT = 2

ITEM.ADDON = true

ITEM.SaveData = function(self, ent)
	self:SetData( "Fuel", ent:CalcFuel() )
	print( ent:CalcFuel() )
end

ITEM.LoadData = function(self, ent)
	ent:UpdateFuel( self:GetData( "Fuel" ) )
	print( self:GetData( "Fuel" ) )
end

CRAFTINGMOD.ITEMS:Register(ITEM)
