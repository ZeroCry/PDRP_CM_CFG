if  !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:SILCOOK() then return end

local ITEM = {}
ITEM.NAME = "Ingredient"
ITEM.INFORMATION = "An ingredient"
--ITEM.MODEL = "models/error.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cook_ingredient"

ITEM.SELL = 20
ITEM.BUY = 50

ITEM.WEIGHT = 2

ITEM.ADDON = true

ITEM.USE = function( self, ply )
	if not SILCOOK.Config.Ingredients[self:GetData( "Ingredient" )].hunger then return end

	ply:setSelfDarkRPVar( "Energy", math.Clamp( ( ply:getDarkRPVar( "Energy" ) or 0 ) + ( self:GetData( "Ingredient" ) == "Mush" and -30 or SILCOOK.Config.Recipes[self:GetData( "Ingredient" )].food.hunger ), 0, 100 ) )
	ply:EmitSound( SILCOOK.Config.EatSound )
end

ITEM.SaveData = function( self, ent )
	self:SetData( "Ingredient", ent:GetIngredient() )

	self.NAME = ent:GetIngredient()
	self.MODEL = ent:GetModel()
end

ITEM.LoadData = function( self, ent )
	ent:SetIngredient( self:GetData( "Ingredient" ) )
end

CRAFTINGMOD.ITEMS:Register(ITEM)
