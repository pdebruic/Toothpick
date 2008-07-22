testing
testLoggingEventPatternCreation
	| pattern |
	pattern := LoggingEventPattern fromString: 'perf.debug'.
	self assert: pattern categories size = 1;
		assert: (pattern categories includes: #perf);
		assert: pattern level = (LoggingEvent allLevels indexOf: #debug);
		assert: pattern comparator isNil.
	pattern := LoggingEventPattern fromString: 'info,perf.=debug'.
	self assert: pattern categories size = 2;
		assert: (pattern categories includes: #perf);
		assert: pattern level = (LoggingEvent allLevels indexOf: #debug);
		assert: pattern comparator = #=.
	pattern := LoggingEventPattern fromString: 'info,perf.!debug'.
	self assert: pattern categories size = 2;
		assert: (pattern categories includes: #info);
		assert: pattern level = (LoggingEvent allLevels indexOf: #debug);
		assert: pattern comparator = #!.