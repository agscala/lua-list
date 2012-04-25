
List = {}
List_metatable = { __index = List }

function List:new(table)
	local init_table = table or {}
	return setmetatable({ list = init_table }, List_metatable)
end

function List:length()
	return table.getn(self.list)
end

function List:append(item)
	table.insert(self.list, item)
end

function List:filter(func)
	local result = List:new()

	for i, object in ipairs(self.list) do
		if func(object) then
			result:append(object)
		end
	end

	return result
end

function List:map(func)
	local result = List:new()

	for i, object in ipairs(self.list) do
		result:append(func(object))
	end

	return result
end

function List:at(index)
	return self.list[index]
end

