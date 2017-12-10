if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Garlic"
ITEM.INFORMATION = "Garlic is widely used around the world for its seasoning"
ITEM.MODEL = "models/props/eryk/farmingmod/garlic.mdl"
ITEM.SKIN = 0

ITEM.SELL = 15
ITEM.BUY = 20

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
