testing
testLoggingEventPatterns
	| pattern |
	pattern := LoggingEventPattern fromString: 'ui.!error'.
	
	self assert:( pattern categories includes: #ui);
		assert: ( pattern level = 6);
		assert: ( pattern comparator = #!);
		deny:( pattern isInteresting: LoggingEvent debugDebug);
		assert:( pattern isInteresting: LoggingEvent uiWarning);
		deny: ( pattern isInteresting: LoggingEvent uiFatal);
		yourself.
		
	pattern := LoggingEventPattern fromString: 'ui.!=error'.
	
	self assert:( pattern categories includes: #ui);
		assert: ( pattern level = 6);
		assert: ( pattern comparator = #!=);
		deny:( pattern isInteresting: LoggingEvent debugDebug);
		assert:( pattern isInteresting: LoggingEvent uiWarning);
		assert:( pattern isInteresting: LoggingEvent uiFatal);
		yourself.