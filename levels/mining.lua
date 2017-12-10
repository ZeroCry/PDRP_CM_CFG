local LEVEL = {}

LEVEL.NAME = "Mining"
LEVEL.INFORMATION = "Determines the speed of the pickaxe"
LEVEL.COLOR = Color(50,100,150,255)

LEVEL.OnLevelUp = function(ply)

end

CRAFTINGMOD.LEVELS:Register(LEVEL)