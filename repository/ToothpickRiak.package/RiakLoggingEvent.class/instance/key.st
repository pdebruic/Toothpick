accessing
key
	^ key ifNil: [ key := 100000000 random greaseString ]