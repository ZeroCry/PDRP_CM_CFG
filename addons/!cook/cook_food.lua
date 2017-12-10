if  !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:SILCOOK() then return end

local ITEM = {}
ITEM.NAME = "Cook Food"
ITEM.INFORMATION = SILCOOK.Config.Language["IS_FOOD_DESC"]
--ITEM.MODEL = "models/error.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cook_food"

ITEM.SELL = 20
ITEM.BUY = 50

ITEM.WEIGHT = 2

ITEM.ADDON = true

ITEM.SaveData = function(self, ent)
	self:SetData( "Food", ent:GetFood() )

	self.NAME( ent:GetFood() == "Mush" and SILCOOK.Config.Language["MUSH"] or ent:GetFood() )
	self.MODEL( ent:GetModel() )
end

ITEM.LoadData = function(self, ent )
	ent:SetFood( self:GetData( "Food" ) )
end

ITEM.Use = function(self, ply)
	ply:setSelfDarkRPVar( "Energy", math.Clamp( ( ply:getDarkRPVar( "Energy" ) or 0 ) + ( self:GetData( "Food" ) == "Mush" and -30 or SILCOOK.Config.Recipes[self:GetData( "Food" )].food.hunger ), 0, 100 ) )
	ply:EmitSound( SILCOOK.Config.EatSound )
end

CRAFTINGMOD.ITEMS:Register(ITEM)
