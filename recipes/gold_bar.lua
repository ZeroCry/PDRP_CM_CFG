local RECIPE = {}

RECIPE.NAME = "Gold Bar"
RECIPE.CATEGORY = "Smelted Ore"
RECIPE.MODEL = "models/eryk/craftingmod/bar.mdl"
RECIPE.SKIN = 2

RECIPE.ITEM = "Gold Bar"
RECIPE.WORKBENCH = "Furnace"

RECIPE.LEVEL = {
	{ 15, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 5, "Coal"}, 
	{ 10, "Gold Ore"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 500)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)