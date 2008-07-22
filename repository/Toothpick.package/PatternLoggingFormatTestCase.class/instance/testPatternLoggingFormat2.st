testing
testPatternLoggingFormat2

	| stream format event ts expected actual |
	ts := DateAndTime now.
	format := PatternLoggingFormatter new.
	format formatString: '%d %c %p - %m'.
	event := LoggingEvent logInfo: 'Test message'.
	event timeStamp: ts.
	stream := '' copy writeStream.
	format formatEvent: event on: stream from: nil.
	expected := ts toothpickPrintString , ' debug INFO - Test message'.
	actual := stream contents.
	self assert: actual = expected description: 'Expected ' , expected , ' got ' ,actual
			