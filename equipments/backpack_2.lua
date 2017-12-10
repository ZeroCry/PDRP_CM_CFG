local ITEM = {}

ITEM.NAME = "Good Backpack"
ITEM.INFORMATION = "A backpack that increases weight (+150)"
ITEM.MODEL = "models/eryk/craftingmod/backpack.mdl"
ITEM.SKIN = 1
ITEM.SELL = 25
ITEM.BUY = 100
ITEM.WEIGHT = 1

ITEM.EQUIPMENT = "backpack"

ITEM.CHARACTER = {
	{ "weight", 150 }
}

CRAFTINGMOD.ITEMS:Register(ITEM)