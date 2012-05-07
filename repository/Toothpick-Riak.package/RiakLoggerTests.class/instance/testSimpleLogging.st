as yet unclassified
testSimpleLogging
	self logger
		startLogging;
		addEvent: self infoEvent;
		stopLogging.
	self assert: (self bucket at: self logger key) data equals: self logger jsonDictionary asJson