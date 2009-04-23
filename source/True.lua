
True = Object:clone();

function True:ifTrue(f1, f2)
	if(f1) return f1();
	return nil;
end

function True:ifFalse(f1, f2)
	if(f2) return f2();
	return Nil;
end

function True:isTrue()
	return True;
end

function True:isFalse()
	return False;
end