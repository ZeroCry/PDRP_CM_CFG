local RECIPE = {}

RECIPE.NAME = "Ammobench"
RECIPE.CATEGORY = "Workbenches"
RECIPE.MODEL = "models/Items/ammocrate_smg1.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Ammobench"
RECIPE.WORKBENCH = ""

RECIPE.LEVEL = {
	{ 5, "Crafting" }
}

RECIPE.RESOURCES = {
	{ 30, "Iron Bar"},
	{ 20, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 500)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)