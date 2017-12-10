
CRAFTINGMOD.RESOURCES = {}

CRAFTINGMOD.RESOURCES.LIST = {}

function CRAFTINGMOD.RESOURCES:Register(args)
	self.LIST[args.NAME] = args
end

function CRAFTINGMOD.RESOURCES:GetItemsList()
	return self.LIST
end
