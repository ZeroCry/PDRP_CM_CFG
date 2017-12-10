if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Peach"
ITEM.INFORMATION = "Peach and nectarines are the same species"
ITEM.MODEL = "models/props/eryk/farmingmod/peach.mdl"
ITEM.SKIN = 0

ITEM.SELL = 150
ITEM.BUY = 160

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
