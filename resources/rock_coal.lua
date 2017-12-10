local RESOURCE = {}

RESOURCE.NAME = "Coal ore vein"
RESOURCE.MODEL = "models/eryk/craftingmod/rock01.mdl" 
RESOURCE.SKIN = 1

RESOURCE.ITEM = "Coal"
RESOURCE.WEAPON = { "craftingmod_pickaxe", "craftingmod_pickaxe_copper", "craftingmod_pickaxe_iron", "craftingmod_pickaxe_gold", "craftingmod_pickaxe_diamond" }
RESOURCE.LEVEL = {100, "Mining"}

RESOURCE.OUTPUT = 3

CRAFTINGMOD.RESOURCES:Register(RESOURCE)