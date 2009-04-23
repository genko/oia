
False = Object:clone();

function False:ifTrue(f1, f2)
	if(f2) return f2();
	return nil;
end

function False:ifFalse(f1, f2)
	if(f1) return f1();
	return Nil;
end

function False:isTrue()
	return False;
end

function False:isFalse()
	return True;
end