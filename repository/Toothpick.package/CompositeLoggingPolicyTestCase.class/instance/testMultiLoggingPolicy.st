testing
testMultiLoggingPolicy
	| dict |
	dict := Dictionary new
		at: 'policy' put: 'composite';
		at: 'filter1' put: 'perf.=debug';
		at: 'filter2' put: 'debug.info';
		at: 'filter3' put: 'ui.!error';
		yourself. 
	policy := LoggingPolicy configureFromDictionary: dict.
	self assert:( policy isInteresting: LoggingEvent uiWarning);
		deny: ( policy isInteresting: LoggingEvent uiFatal);
		deny:( policy isInteresting: LoggingEvent debugDebug);
		assert:( policy isInteresting: LoggingEvent debugInfo);
		deny:( policy isInteresting: LoggingEvent performanceWarning);
		yourself