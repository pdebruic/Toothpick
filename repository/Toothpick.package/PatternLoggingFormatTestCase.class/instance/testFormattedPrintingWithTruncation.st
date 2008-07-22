testing
testFormattedPrintingWithTruncation
	| stream result |
	stream := '' copy writeStream.
	'foobar' printWithFormat: '10.5' on: stream.
	result := stream contents.
	self assert: result = '     oobar'
		description: '1. result should be ''oobar'', is ''', result, '''' .
	stream := '' copy writeStream.
	'foobar' printWithFormat: '-10.5' on: stream.
	result := stream contents.
	self assert: result = 'oobar     '
		description: '2. result should be ''foobar      '', is ''', result, ''''.
	stream := '' copy writeStream.
	'foobar' printWithFormat: '.5' on: stream.
	result := stream contents.
	self assert: result = 'oobar'
		description: '3. result should be ''oobar'', is ''', result, ''''.
	stream := '' copy writeStream.
	'foobar' printWithFormat: '10.10' on: stream.
	result := stream contents.
	self assert: result = '    foobar'
		description: '4. result should be ''    foobar'', is ''', result, '''' .
			