Number = Object:clone()

function Number:with(v)
	local o = self:clone()
	o.value = v
	return o
end
	
function Number:add(v)
	return Number:with(self.value + v.value)
end

function Number:mult(v)
	return Number:with(self.value * v.value)
end

function Number:increment()
	return Number:with(self.value + 1)
end

function Number:decrement()
	return Number:with(self.value - 1)
end

function Number:getType()
	return "Number"
end


function Number:print()
	print(self.value)
end
