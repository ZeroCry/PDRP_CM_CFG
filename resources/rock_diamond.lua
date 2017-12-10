local RESOURCE = {}

RESOURCE.NAME = "Diamond ore vein"
RESOURCE.MODEL = "models/eryk/craftingmod/rock01.mdl" 
RESOURCE.SKIN = 5

RESOURCE.ITEM = "Diamond Ore"
RESOURCE.WEAPON = { "craftingmod_pickaxe_gold", "craftingmod_pickaxe_diamond" }
RESOURCE.LEVEL = {500, "Mining"}

RESOURCE.OUTPUT = 2

CRAFTINGMOD.RESOURCES:Register(RESOURCE)