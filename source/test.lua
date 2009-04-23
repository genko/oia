
dofile("Message.lua")


m = Message:with("increment")
m.arguments = {"a", "b"}
--m:run(Number:with(1), Number:with(0)):println()

m:print()
