local RESOURCE = {}

RESOURCE.NAME = "Iron ore vein"
RESOURCE.MODEL = "models/eryk/craftingmod/rock01.mdl" 
RESOURCE.SKIN = 3

RESOURCE.ITEM = "Iron Ore"
RESOURCE.WEAPON = { "craftingmod_pickaxe_copper", "craftingmod_pickaxe_iron", "craftingmod_pickaxe_gold", "craftingmod_pickaxe_diamond" }
RESOURCE.LEVEL = {300, "Mining"}

RESOURCE.OUTPUT = 3

CRAFTINGMOD.RESOURCES:Register(RESOURCE)