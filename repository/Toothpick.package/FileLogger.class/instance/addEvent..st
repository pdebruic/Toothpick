adding
addEvent: anEvent 
	self isLogging ifFalse: [^self].
	(self policy isInteresting: anEvent) ifFalse: [^self].
	self format addEvent: anEvent on: buffer from: self.
	self flush