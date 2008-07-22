querying
isInterestingBlock
	^[ :event | (self patterns detect: [ :pattern | pattern isInteresting: event] ifNone: [nil]) notNil ]
			