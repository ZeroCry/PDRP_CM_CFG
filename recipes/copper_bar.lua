local RECIPE = {}

RECIPE.NAME = "Copper Bar"
RECIPE.CATEGORY = "Smelted Ore"
RECIPE.MODEL = "models/eryk/craftingmod/bar.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Copper Bar"
RECIPE.WORKBENCH = "Furnace"

RECIPE.LEVEL = {
	{ 5, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 5, "Coal"}, 
	{ 10, "Copper Ore"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)