running
assert: actual equals: expected
	^self assert: (actual = expected) description: 'Expected ', expected printString, ' got ', actual printString
			