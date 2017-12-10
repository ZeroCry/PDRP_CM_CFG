local RECIPE = {}

RECIPE.NAME = "Iron Pickaxe"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/eryk/craftingmod/w_pickaxe.mdl"
RECIPE.SKIN = 2

RECIPE.ITEM = "Iron Pickaxe"
RECIPE.WORKBENCH = "Carpentry"

RECIPE.LEVEL = {
	{ 10, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 15, "Iron Bar"}, 
	{ 5, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)