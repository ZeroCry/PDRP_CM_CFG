if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Melon"
ITEM.INFORMATION = "A big plain melon"
ITEM.MODEL = "models/props/eryk/farmingmod/melon.mdl"
ITEM.SKIN = 0

ITEM.SELL = 125
ITEM.BUY = 130

ITEM.WEIGHT = 1

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
