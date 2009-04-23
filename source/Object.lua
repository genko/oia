
Object = {}

function Object:clone()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Object:print()
	self:print()
	print("\n")
end

function Object:println()
	self:print()
	print("\n")
end

function Object:updateSlot(name, value)
	self[name] = value
end
