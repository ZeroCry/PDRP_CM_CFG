if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Fruit or Vegetable"
ITEM.INFORMATION = "An vegetable / fruit"

ITEM.SKIN = 0
ITEM.ENTITY = "farmingmod_item"

ITEM.SELL = 10
ITEM.BUY = 50

ITEM.WEIGHT = 2

ITEM.ADDON = true

ITEM.USE = function( self, ply )

end

ITEM.SaveData = function( self, ent )
	self:SetData( "Inventory", ent.Inventory )
	self:SetData( "Amount", ent:GetAmount() )

	self.NAME = ent:GetName()
	self.MODEL = ent:GetModel()
	self.SKIN = ent:GetSkin()
end

ITEM.LoadData = function( self, ent )
	ent:SetInventory( self:GetData( "Inventory" ), self:GetData("Amount") )

	PrintTable( self:GetData( "Inventory" ))
end

CRAFTINGMOD.ITEMS:Register(ITEM)
