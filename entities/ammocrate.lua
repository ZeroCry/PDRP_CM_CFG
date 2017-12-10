local ITEM = {}

ITEM.NAME = "Regular ammo crate"
ITEM.INFORMATION = "A regular ammo crate"
ITEM.MODEL = "models/items/ammocrate_smg1.mdl"
ITEM.SKIN = 0
ITEM.ENTITY = "cw_ammo_crate_regular"

ITEM.SELL = 1000
ITEM.BUY = 10000

ITEM.WEIGHT = 5

ITEM.USE = nil

CRAFTINGMOD.ITEMS:Register(ITEM)