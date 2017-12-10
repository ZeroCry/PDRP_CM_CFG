CRAFTINGMOD.WORKBENCHES = {}

CRAFTINGMOD.WORKBENCHES.LIST = {}

function CRAFTINGMOD.WORKBENCHES:Register(args)
	local tbl = table.Copy(args)

	for k, v in pairs(CRAFTINGMOD.RECIPES:GetItemsList()) do
		if (v.WORKBENCH == tbl.NAME) then
			if (!tbl.RECIPES) then
				tbl.RECIPES = {}
			end

			tbl.RECIPES[v.NAME] = v
		end
	end

	self.LIST[tbl.NAME] = tbl
end

function CRAFTINGMOD.WORKBENCHES:GetItemsList()
	return self.LIST
end
