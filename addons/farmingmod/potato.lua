if !CRAFTINGMOD.Config.Farmingmod then return end

local ITEM = {}

ITEM.NAME = "Potato"
ITEM.INFORMATION = "The potato is a starchy, tuberous crop"
ITEM.MODEL = "models/props/eryk/farmingmod/potato.mdl"
ITEM.SKIN = 0

ITEM.SELL = 20
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
