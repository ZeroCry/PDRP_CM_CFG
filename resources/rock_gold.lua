local RESOURCE = {}

RESOURCE.NAME = "Gold ore vein"
RESOURCE.MODEL = "models/eryk/craftingmod/rock01.mdl" 
RESOURCE.SKIN = 4

RESOURCE.ITEM = "Gold Ore"
RESOURCE.WEAPON = { "craftingmod_pickaxe_iron", "craftingmod_pickaxe_gold", "craftingmod_pickaxe_diamond" }
RESOURCE.LEVEL = {400, "Mining"}

RESOURCE.OUTPUT = 3

CRAFTINGMOD.RESOURCES:Register(RESOURCE)