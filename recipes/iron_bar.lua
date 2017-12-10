local RECIPE = {}

RECIPE.NAME = "Iron Bar"
RECIPE.CATEGORY = "Smelted Ore"
RECIPE.MODEL = "models/eryk/craftingmod/bar.mdl"
RECIPE.SKIN = 1

RECIPE.ITEM = "Iron Bar"
RECIPE.WORKBENCH = "Furnace"

RECIPE.LEVEL = {
	{ 10, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 5, "Coal"}, 
	{ 10, "Iron Ore"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 300)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)