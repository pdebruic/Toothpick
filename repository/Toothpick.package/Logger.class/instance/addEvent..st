adding
addEvent: anEvent 
	self isLogging ifFalse: [^self].
	(self policy isInteresting: anEvent) ifFalse: [^self].
	[self format 
		addEvent: anEvent
		on: self stream
		from: self] 
			ensure: [self closeStream]
			