*Toothpick-Tests
assert: expected equals: actual

	expected = actual ifFalse: [self signalFailure: 'Assertion failed']
			