local LEVEL = {}

LEVEL.NAME = "Gunsmithing"
LEVEL.INFORMATION = "Determines the speed of weapons"
LEVEL.COLOR = Color(0,255,0,255)

LEVEL.OnLevelUp = function(ply)
    --Empty function for anything special when the player levels up
end

CRAFTINGMOD.LEVELS:Register(LEVEL)
