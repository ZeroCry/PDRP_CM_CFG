local ITEM = {}

ITEM.NAME = "Old Backpack"
ITEM.INFORMATION = "A backpack that increases weight (+100)"
ITEM.MODEL = "models/eryk/craftingmod/backpack.mdl"
ITEM.SKIN = 0
ITEM.SELL = 25
ITEM.BUY = 100
ITEM.WEIGHT = 1

ITEM.EQUIPMENT = "backpack"

ITEM.CHARACTER = {
	{ "weight", 100 }
}

CRAFTINGMOD.ITEMS:Register(ITEM)