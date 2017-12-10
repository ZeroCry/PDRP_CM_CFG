local RECIPE = {}

RECIPE.NAME = "Diamond Bar"
RECIPE.CATEGORY = "Smelted Ore"
RECIPE.MODEL = "models/eryk/craftingmod/bar.mdl"
RECIPE.SKIN = 3

RECIPE.ITEM = "Diamond Bar"
RECIPE.WORKBENCH = "Furnace"

RECIPE.LEVEL = {
	{ 20, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 5, "Coal"}, 
	{ 10, "Diamond Ore"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 100)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)