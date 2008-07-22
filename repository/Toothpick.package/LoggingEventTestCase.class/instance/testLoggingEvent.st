testing
testLoggingEvent
	| policy |
	event := LoggingEvent category: #debug level: #info message: 'Test message '.
	self assert: event messageString = 'Test message ';
		assert: event levelString = 'INFO';
		assert: (event isLevelHigherThan: #debug);
		assert: (event isLevelHigherThan: 2);
		deny: (event isLevelHigherThan: #fatal);
		deny: (event isLevelHigherThan: 5).
	policy := LoggingPolicy debugPolicy.
	self assert: (policy isInteresting: event)
			