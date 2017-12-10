if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Carrot"
ITEM.INFORMATION = "The carrot is a root vegetable, usually orange in colour"
ITEM.MODEL = "models/props/eryk/farmingmod/carrot.mdl"
ITEM.SKIN = 0

ITEM.SELL = 25
ITEM.BUY = 30

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
