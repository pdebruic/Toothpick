accessing
current
	current isNil ifTrue: [current := self new initialize].
	^current
			