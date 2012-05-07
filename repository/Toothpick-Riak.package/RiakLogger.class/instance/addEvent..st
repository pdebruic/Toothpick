accessing
addEvent: anEvent
	self isLogging
		ifFalse: [ ^ self ].
	(self policy isInteresting: anEvent)
		ifFalse: [ ^ self ].
	self format addEvent: anEvent to: self jsonDictionary from: self.
	self putJsonDictionary