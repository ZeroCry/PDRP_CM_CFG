if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Cucumber"
ITEM.INFORMATION = "Cucumber is a widely cultivated plant in the gourd family"
ITEM.MODEL = "models/props/eryk/farmingmod/cucumber.mdl"
ITEM.SKIN = 0

ITEM.SELL = 30
ITEM.BUY = 40

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
