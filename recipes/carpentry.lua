local RECIPE = {}

RECIPE.NAME = "Carpentry"
RECIPE.CATEGORY = "Workbenches"
RECIPE.MODEL = "models/props/cs_militia/wood_table.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Carpentry"
RECIPE.WORKBENCH = nil

RECIPE.LEVEL = {
	{ 5, "Lumbering" },
	{ 5, "Mining" }
}

RECIPE.RESOURCES = {
	{ 10, "Stone"},
	{ 40, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 300)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)