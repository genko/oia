require 'luaspec/luaspec'

dofile("Oia.lua");


describe["Lio - Object"] = function()
	before = function()
		obj = Object:clone()
  end
  
  it["should be cloneable"] = function()
		expect(obj:getType()).should_be("Object")
  end
  
  it["should have slots for values like numbers"] = function()
    obj:newSlot("notANumber", Number:with(2));
		expect(obj:getSlot("notANumber"):getType()).should_be("Number")
  end
  
end

spec:report(true)

Person = Object:clone();
Person:newSlot("name", "Betrand");
Person:updateSlot("name", IString:with("Herbert"));

print(Person:getSlot("name"));
Person:print();


n1 = Number:with(1)
n2 = Number:with(2)
Number:with(2):add(n2):print()
Number:with(2):add(n2):mult(n2):print()
n1:add(n2):print()

Person:newSlot("coolF", 
  function (a,b) 
    return a:add(b) 
  end
)

print((Person:getSlot("coolF")(Number:with(2),Number:with(1))):getType())

Person:newSlot("cool",  IString:with("cooler"));
Person:getSlot("cool"):print()
IString:with("Hello"):concat(IString:with(" World!")):print()

--foo = { a: 123};