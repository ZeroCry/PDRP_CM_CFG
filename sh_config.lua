
/*---------------------------------------------------------------------------
							CONFIGURATION
---------------------------------------------------------------------------*/
CRAFTINGMOD.Config = {}

CRAFTINGMOD.Config.Language 						= "English" -- (Default: English. Available: Spanish)

CRAFTINGMOD.Config.DropLimit 						= 6		-- Max drops pr. player
CRAFTINGMOD.Config.PropLimit 						= 6		-- Max placed entities pr. player

CRAFTINGMOD.Config.DropTimeOut					= 300	-- How many seconds before drop dissapears

CRAFTINGMOD.Config.MaxInventoryWeight 	= 200	-- Max weight on inventory
CRAFTINGMOD.Config.MaxStorageWeight 		= 400   -- Max weight on storage

CRAFTINGMOD.Config.StartMaxExperience 	= 250	-- How much start experience levels start with
CRAFTINGMOD.Config.LevelMultiplication	= 1.5   -- How much levels increase by multiplication (startMaxExp * currentLevel * LevelMultiplication)
CRAFTINGMOD.Config.LevelCapacity				= 30 	-- Maximum level someone can reach.

CRAFTINGMOD.Config.MenuKey							= KEY_I -- The key that opens up the menu
CRAFTINGMOD.Config.DisableQMenu					= false	-- Disables QMenu for players that are not admin

CRAFTINGMOD.Config.GatherDelay					= 5		-- How long time it takes a craftingmod weapon to gather resources (input in seconds) (gets faster by levels)

CRAFTINGMOD.Config.InventoryDrop				= false
CRAFTINGMOD.Config.InventoryDropTimer		= 300 	-- Seconds (5 minutes). After this time the inventory drop will be removed

CRAFTINGMOD.Config.Pickup_KeyBinds			= {IN_SPEED, IN_ATTACK2} -- Use IN_KEYS. Look at the garrysmod.wiki for the list of the available ones

CRAFTINGMOD.Config.CraftingDelayDefault	= 5 	-- seconds
CRAFTINGMOD.Config.NotificationsDelay		= 2		-- seconds

/*---------------------------------------------------------------------------
							ULX & ULIB
---------------------------------------------------------------------------*/

CRAFTINGMOD.Config.ULX									= true -- is your server using ULX & ULIB then activate
CRAFTINGMOD.Config.ULX_Spawnmenu 				= { "root", "superadmin" } -- Configure which players can open the Q-menu (CUSTOM SPAWNMENU OPTION)
CRAFTINGMOD.Config.ULX_Adminmenu 				= { "root", "superadmin" }

/*---------------------------------------------------------------------------
							ADDON COMPABILITY
---------------------------------------------------------------------------*/
CRAFTINGMOD.Config.UseAddonConfigurations = true -- Main compability switch.

local function GetAddon(table)
	if !CRAFTINGMOD.Config.UseAddonConfigurations then
		return false
	end

	if istable(table) then
		return true
	end

	return false
end

CRAFTINGMOD.Config.Farmingmod 					= function() return GetAddon(FARMINGMOD) end -- Enables if you have farmingmod otherwise if you dont want compability then set to only false
CRAFTINGMOD.Config.Fishingmod 					= function() return GetAddon(FISHINGMOD) end -- Enables if you have fishingmod otherwise if you dont want compability then set to only false
CRAFTINGMOD.Config.SILCOOK							= function() return GetAddon(SILCOOK) end -- Enables if you have fishingmod otherwise if you dont want compability then set to only false

/*---------------------------------------------------------------------------
							NPC MODELS FOR TOOLGUN
---------------------------------------------------------------------------*/
CRAFTINGMOD.Config.NPCModelList = { -- Models to pick with the NPC creating tools (Storage / Shop)
	"models/Humans/Group01/Female_01.mdl",
	"models/Humans/Group01/Female_02.mdl",
	"models/Humans/Group01/Female_04.mdl",
	"models/Humans/Group03/male_02.mdl",
	"models/Humans/Group02/male_02.mdl",
	"models/Humans/Group03m/Male_04.mdl",
	"models/Kleiner.mdl",
	"models/gman_high.mdl",
	"models/odessa.mdl",
}

/*---------------------------------------------------------------------------
							PICKUP RESTRICTION
---------------------------------------------------------------------------*/
CRAFTINGMOD.PICKUP_RESTRICTION = {
	"", -- Entities that you have configured but want to blacklist for pickup
}
