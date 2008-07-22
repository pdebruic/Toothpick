testing
testPatternLoggingFormat

	| stream format event |
	format := PatternLoggingFormatter new.
	format formatString: '%p - %m'.
	event := LoggingEvent logMessage: 'Test message'.
	stream := '' copy writeStream.
	format formatEvent: event on: stream from: nil.
	self assert: stream contents = 'DEBUG - Test message'
			