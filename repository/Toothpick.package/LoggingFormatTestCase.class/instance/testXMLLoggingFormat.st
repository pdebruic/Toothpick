testing
testXMLLoggingFormat

	| stream ts resultString tsString |
	ts := LoggingEvent timestampClass now.
	format := XMLLoggingFormatter timeFormat.
	tsString := TimeTimestampFormatter new formatTimestamp: ts.
	event := LoggingEvent logMessage: 'Test message'.
	event timeStamp: ts.
	stream := WriteStream on: String new.
	format formatEvent: event on: stream from: TranscriptLogger new.
	resultString := '<LoggingEvent loggerName=''Transcript'' category=''debug'' level=''DEBUG'' timestamp=''', tsString, '''>
		<Message>Test message</Message>
</LoggingEvent>'.
	self assert: stream contents withBlanksTrimmed equals: resultString
			