instance creation
debugPolicy
	^self new
		isInterestingBlock: [ :event | event isLevelHigherThan: #debug ];
		yourself
			