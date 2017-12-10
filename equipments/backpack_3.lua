local ITEM = {}

ITEM.NAME = "Fresh Backpack"
ITEM.INFORMATION = "A backpack that increases weight (+200)"
ITEM.MODEL = "models/eryk/craftingmod/backpack.mdl"
ITEM.SKIN = 2
ITEM.SELL = 25
ITEM.BUY = 100
ITEM.WEIGHT = 1

ITEM.EQUIPMENT = "backpack"

ITEM.CHARACTER = {
	{ "weight", 200 }
}

CRAFTINGMOD.ITEMS:Register(ITEM)