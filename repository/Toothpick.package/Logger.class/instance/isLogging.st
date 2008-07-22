accessing
isLogging
	isLogging isNil ifTrue: [isLogging := false].
	^isLogging
			