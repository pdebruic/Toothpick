testing
testLoggingEventPatternValidation
	| pattern event |
	event := LoggingEvent logMessage: 'foo'.
	pattern := LoggingEventPattern fromString: 'debug.debug'.
	self assert: (pattern isInteresting: event).
	pattern := LoggingEventPattern fromString: 'debug.=debug'.
	self assert: (pattern isInteresting: event).
	pattern := LoggingEventPattern fromString: 'perf,debug.=debug'.
	self assert: (pattern isInteresting: event).
	pattern := LoggingEventPattern fromString: 'perf,debug.!debug'.
	self deny: (pattern isInteresting: event).
	pattern := LoggingEventPattern fromString: 'perf,debug.!error'.
	self assert: (pattern isInteresting: event).