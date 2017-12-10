local RECIPE = {}

RECIPE.NAME = "Coal"
RECIPE.CATEGORY = "Fuel"
RECIPE.MODEL = "models/eryk/craftingmod/small_rock.mdl"
RECIPE.SKIN = 1

RECIPE.ITEM = "Coal"
RECIPE.WORKBENCH = "Furnace"

RECIPE.LEVEL = nil

RECIPE.RESOURCES = {
	{ 10, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
	local steamID = ply:SteamID()
	
	CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)