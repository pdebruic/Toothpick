validation
validateFourthLogger: aLogger 
	| policy |
	self
		assert: aLogger name = 'TestFourthFileLog';
		assert: aLogger class = FileLogger;
		assert: aLogger format class = TimestampLoggingFormatter;
		assert: aLogger policy class = CompositeLoggingPolicy;
		assert: aLogger fileName = 'timestamp.txt';
		yourself.
	policy := aLogger policy.
	self
		assert: (policy isInteresting: LoggingEvent uiWarning);
		deny: (policy isInteresting: LoggingEvent uiFatal);
		deny: (policy isInteresting: LoggingEvent debugDebug);
		assert: (policy isInteresting: LoggingEvent debugInfo);
		deny: (policy isInteresting: LoggingEvent performanceWarning);
		yourself
			