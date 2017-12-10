CRAFTINGMOD.ITEMS = {}

CRAFTINGMOD.ITEMS.LIST = {}

function CRAFTINGMOD.ITEMS:Register(item)

	if item.ADDON then
		if !CRAFTINGMOD.Config.UseAddonConfigurations then return end
	end

	item.SetData = function(self, key, value)
		if !self.DATA then
			self.DATA = {}
		end

		self.DATA[key] = value
	end

	item.GetData = function(self, key)
		if !self.DATA then return end

			return self.DATA[key]
	end

	self.LIST[item.NAME] = item
end

function CRAFTINGMOD.ITEMS:GetItemsList()
	return  table.Copy(self.LIST)
end

function CRAFTINGMOD:GetDataFromName(name)
	if self.ITEMS.LIST[name] then
		return table.Copy(self.ITEMS.LIST[name])
	elseif self.WEAPONS.LIST[name] then
		return  table.Copy(self.WEAPONS.LIST[name])
	elseif self.LEVELS.LIST[name] then
		return table.Copy(self.LEVELS.LIST[name])
	else
		return false
	end
end

function CRAFTINGMOD:GetDataFromEntity(name)
	for k, v in pairs(self.ITEMS.LIST) do
		if v.ENTITY == name then
			return  table.Copy(v)
		end
	end
	return false
end
