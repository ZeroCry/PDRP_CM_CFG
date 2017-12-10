local RECIPE = {}

RECIPE.NAME = "Axe"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/eryk/craftingmod/w_axe.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Axe"
RECIPE.WORKBENCH = nil

RECIPE.LEVEL = nil

RECIPE.RESOURCES = {
	{ 5, "Stone"},
	{ 10, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)