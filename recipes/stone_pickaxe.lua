local RECIPE = {}

RECIPE.NAME = "Stone Pickaxe"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/eryk/craftingmod/w_pickaxe.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Stone Pickaxe"
RECIPE.WORKBENCH = nil

RECIPE.LEVEL = nil

RECIPE.RESOURCES = { 
	{ 10, "Stone"}, 
	{ 5, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply) -- This is runned after the item is crafted
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)