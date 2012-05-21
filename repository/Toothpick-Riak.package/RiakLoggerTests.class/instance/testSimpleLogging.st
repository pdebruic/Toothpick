as yet unclassified
testSimpleLogging
	| event key |
	event := self infoEvent.
	key := self randomKey.
	event key: key.
	self logger
		startLogging;
		addEvent: event;
		stopLogging.
	self assert: (self bucket at: key) data equals: self logger jsonDictionary asJson