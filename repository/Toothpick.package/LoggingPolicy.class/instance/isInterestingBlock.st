accessing
isInterestingBlock
	isInterestingBlock isNil 
		ifTrue: [isInterestingBlock := self defaultIsInterestingBlock].
	^isInterestingBlock
			