IString = Object:clone()

function IString:with(v)
	local o = self:clone()
	o.value = v
	return o
end
	
function IString:concat(v)
	return IString:with(self.value .. v.value)
end

function IString:print()
	print(self.value)
end
