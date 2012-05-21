as yet unclassified
testLoggingJsonErrorMessage
	| event key |
	event := self jsonErrorMessage.
	key := self randomKey.
	event key: key.
	self logger
		startLogging;
		addEvent: event;
		stopLogging.
	self assert: (self bucket at: key) data equals: self logger jsonDictionary asJson