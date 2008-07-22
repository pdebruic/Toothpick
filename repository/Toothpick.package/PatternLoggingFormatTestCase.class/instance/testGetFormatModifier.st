testing
testGetFormatModifier
	| formatter stream formatString |
	formatter := PatternLoggingFormatter new.
	stream := '20c' readStream.
	self assert: (formatString := formatter getFormatModifierFrom: stream) = '20'
		description: 'format string should be ''20'', is ', formatString.
	stream := '-20.30c' readStream.
	self assert: (formatString := formatter getFormatModifierFrom: stream) = '-20.30'
		description: 'format string should be ''-20.30'', is ', formatString
			