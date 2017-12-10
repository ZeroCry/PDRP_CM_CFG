if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Gourd"
ITEM.INFORMATION = "The term refers to a number of species and subspecies, many with hard shells"
ITEM.MODEL = "models/props/eryk/farmingmod/gourd.mdl"
ITEM.SKIN = 0

ITEM.SELL = 100
ITEM.BUY = 110

ITEM.WEIGHT = 1

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
