local RESOURCE = {}

RESOURCE.NAME = "Rock"
RESOURCE.MODEL = "models/eryk/craftingmod/rock01.mdl" 
RESOURCE.SKIN = 0

RESOURCE.ITEM = "Stone"
RESOURCE.WEAPON = { "craftingmod_pickaxe", "craftingmod_pickaxe_copper", "craftingmod_pickaxe_iron", "craftingmod_pickaxe_gold", "craftingmod_pickaxe_diamond" }
RESOURCE.LEVEL = {100, "Mining"}

RESOURCE.OUTPUT = 3

CRAFTINGMOD.RESOURCES:Register(RESOURCE)