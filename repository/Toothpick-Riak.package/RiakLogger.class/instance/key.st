accessing
key
	^ key ifNil: [ key := 2000 random greaseString ]