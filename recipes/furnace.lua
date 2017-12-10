local RECIPE = {}

RECIPE.NAME = "Furnace"
RECIPE.CATEGORY = "Workbenches"
RECIPE.MODEL = "models/props_c17/furnitureStove001a.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Furnace"
RECIPE.WORKBENCH = "Carpentry"

RECIPE.LEVEL = {
	{ 5, "Mining" }
}

RECIPE.RESOURCES = {
	{ 60, "Stone"},
	{ 10, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 300)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)