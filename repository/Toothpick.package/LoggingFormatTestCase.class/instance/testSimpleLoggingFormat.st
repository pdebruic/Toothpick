testing
testSimpleLoggingFormat

	| stream |
	format := SimpleLoggingFormatter defaultFormat.
	event := LoggingEvent logMessage: 'Test message'.
	stream := '' copy writeStream.
	format formatEvent: event on: stream from: nil.
	self assert: stream contents = 'DEBUG - Test message'
			