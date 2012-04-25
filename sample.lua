require "list"

list = List:new({1, 2, 3})
list:append(4)

filtered_list = list:filter(function(n)
	return (n > 1)
end)

print(filtered_list:length()) -- should be 3 since we filtered out greater than 1

mapped_list = list:map(function(n)
	return (n * 2)
end)

print(mapped_list:at(4)) -- should be 8

