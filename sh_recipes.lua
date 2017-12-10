CRAFTINGMOD.RECIPES = {}

CRAFTINGMOD.RECIPES.LIST = {}

function CRAFTINGMOD.RECIPES:Register(args)
	self.LIST[args.NAME] = args
end

function CRAFTINGMOD.RECIPES:GetItemsList()
	return self.LIST
end

function CRAFTINGMOD.RECIPES:GetNonWorkbenchItems()
	local tbl = {}

	for k, v in pairs(self.LIST) do
		if (!v.WORKBENCH) then
			tbl[v.NAME] = v
		end
	end

	return tbl
end
