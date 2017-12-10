local ITEM = {}

ITEM.NAME = "Explendid Backpack"
ITEM.INFORMATION = "A backpack that increases weight (+300)"
ITEM.MODEL = "models/eryk/craftingmod/backpack.mdl"
ITEM.SKIN = 3
ITEM.SELL = 25
ITEM.BUY = 100
ITEM.WEIGHT = 1

ITEM.EQUIPMENT = "backpack"

ITEM.CHARACTER = {
	{ "weight", 300 }
}

CRAFTINGMOD.ITEMS:Register(ITEM)