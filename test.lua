
dofile("Oia.lua");

Person = Object:clone();
Person:newSlot("name", "Betrand");
Person:updateSlot("name", "Herbert");

print(Person:getSlot("name"));
Person:print();


n1 = Number:with(1)
n2 = Number:with(2)
Number:with(2):add(n2):print()
Number:with(2):add(n2):mult(n2):print()
n1:add(n2):print()

Person:newSlot("cool",  IString:with("cooler"));
Person:getSlot("cool"):print()

--foo = { a: 123};