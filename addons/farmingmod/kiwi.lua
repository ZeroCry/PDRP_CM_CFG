if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Kiwi"
ITEM.INFORMATION = "The kiwi vine can grow really long"
ITEM.MODEL = "models/props/eryk/farmingmod/kiwi.mdl"
ITEM.SKIN = 0

ITEM.SELL = 80
ITEM.BUY = 90

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
