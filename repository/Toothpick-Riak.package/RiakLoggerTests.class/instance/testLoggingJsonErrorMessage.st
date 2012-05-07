as yet unclassified
testLoggingJsonErrorMessage
	self logger
		startLogging;
		addEvent: self jsonErrorMessage;
		stopLogging.

	self assert: (self bucket at: self logger key) data equals: self logger jsonDictionary asJson