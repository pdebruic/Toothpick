printing
formatEvent: anEvent on: aStream from: anObject 
	self tsFormatter formatTimestamp: anEvent timeStamp on: aStream.
	aStream space.
	anEvent printBasicsOn: aStream
			