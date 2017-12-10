CRAFTINGMOD.WEAPONS = {}

CRAFTINGMOD.WEAPONS.LIST = {}

function CRAFTINGMOD.WEAPONS:Register(args)
	self.LIST[args.NAME] = args
end

function CRAFTINGMOD.WEAPONS:GetItemsList()
	return self.LIST
end
