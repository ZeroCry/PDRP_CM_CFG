if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Chili"
ITEM.INFORMATION = "The chili has a powerfull taste"
ITEM.MODEL = "models/props/eryk/farmingmod/chili.mdl"
ITEM.SKIN = 0

ITEM.SELL = 75
ITEM.BUY = 80

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
