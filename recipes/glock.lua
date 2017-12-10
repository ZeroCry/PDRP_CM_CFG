local RECIPE = {}

RECIPE.NAME = "Glock"
RECIPE.CATEGORY = "Weapons"
RECIPE.MODEL = "models/weapons/w_pist_glock18.mdl"
RECIPE.SKIN = 0

RECIPE.ITEM = "Glock"
RECIPE.WORKBENCH = "Weaponsbench"

RECIPE.LEVEL = {
	{ 5, "Crafting" }
}

RECIPE.RESOURCES = {
	{ 5, "Iron Bar"},
	{ 5, "Copper Bar"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 300)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)