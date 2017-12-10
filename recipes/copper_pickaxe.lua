local RECIPE = {}

RECIPE.NAME = "Copper Pickaxe"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/eryk/craftingmod/w_pickaxe.mdl"
RECIPE.SKIN = 1

RECIPE.ITEM = "Copper Pickaxe"
RECIPE.WORKBENCH = "Carpentry"

RECIPE.LEVEL = {
	{ 5, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 10, "Copper Bar"}, 
	{ 5, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)