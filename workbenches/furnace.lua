
local WORKBENCH = {}

WORKBENCH.NAME = "Furnace"
WORKBENCH.INFORMATION = "A furnace station to smelt ores"
WORKBENCH.MODEL = "models/props_c17/furnitureStove001a.mdl"
WORKBENCH.SKIN = 0

WORKBENCH.ENTITY = "craftingmod_workbench" -- DONT CHANGE THIS!

WORKBENCH.SELL = 500
WORKBENCH.BUY = 1000

WORKBENCH.WEIGHT = 20

CRAFTINGMOD.WORKBENCHES:Register(WORKBENCH)
CRAFTINGMOD.ITEMS:Register(WORKBENCH)
