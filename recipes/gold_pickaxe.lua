local RECIPE = {}

RECIPE.NAME = "Gold Pickaxe"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/eryk/craftingmod/w_pickaxe.mdl"
RECIPE.SKIN = 3

RECIPE.ITEM = "Gold Pickaxe"
RECIPE.WORKBENCH = "Carpentry"

RECIPE.LEVEL = {
	{ 15, "Mining" }
}

RECIPE.RESOURCES = { 
	{ 20, "Gold Bar"}, 
	{ 5, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)