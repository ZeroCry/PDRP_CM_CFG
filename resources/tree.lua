local RESOURCE = {}

RESOURCE.NAME = "Tree"
RESOURCE.MODEL = "models/props_foliage/tree_springers_01a.mdl"
RESOURCE.SKIN = 0

RESOURCE.ITEM = "Wood"
RESOURCE.WEAPON = { "craftingmod_axe" }
RESOURCE.LEVEL = {500, "Lumbering"}

RESOURCE.OUTPUT = 6

CRAFTINGMOD.RESOURCES:Register(RESOURCE)