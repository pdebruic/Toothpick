testing
testFormattedPrinting
	| stream result |
	stream := '' copy writeStream.
	'foobar' printWithFormat: '10' on: stream.
	result := stream contents.
	self assert: result = '    foobar'
		description: 'result should be ''    foobar'', is ''', result, ''''.
	stream := '' copy writeStream.
	'foobar' printWithFormat: '-10' on: stream.
	result := stream contents.
	self assert: result = 'foobar    '
		description: 'result should be ''foobar      '', is ''', result, ''''.
	stream := '' copy writeStream.
	'foobar' printWithFormat: '5' on: stream.
	result := stream contents.
	self assert: result = 'foobar'
		description: '3. result should be ''foobar'', is ''', result, ''''.
	stream := '' copy writeStream.
	'foobar' printWithFormat: '-5' on: stream.
	result := stream contents.
	self assert: result = 'foobar'
		description: '4. result should be ''foobar'', is ''', result, ''''.
			