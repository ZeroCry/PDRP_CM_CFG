CRAFTINGMOD.LEVELS = {}

CRAFTINGMOD.LEVELS.LIST = {}

function CRAFTINGMOD.LEVELS:Register(args)
	self.LIST[args.NAME] = args
end

function CRAFTINGMOD.LEVELS:GetItemsList()
	return self.LIST
end
