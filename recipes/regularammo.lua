local RECIPE = {}

RECIPE.NAME = "Regular ammo crate"
RECIPE.CATEGORY = "Crafting"
RECIPE.MODEL = "models/items/ammocrate_smg1.mdl"
RECIPE.SKIN = 1

RECIPE.ITEM = "Regular ammo crate"
RECIPE.WORKBENCH = "Carpentry"

RECIPE.LEVEL = {
    {5, "Crafting"},
}

RECIPE.RESOURCES = {
    { 50, "Wood"},
}

RECIPE.OnCrafting = function(amount, ply)
    local steamID = ply:SteamID()
    CRAFTINGMOD.User[steamID].Levels:AddExperience("Crafting", math.ceil(math.random(50, 200)) * amount, ply)
end

CRAFTINGMOD.RECIPES:Register(RECIPE)