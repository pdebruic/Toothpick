accessing
fileName
	fileName isNil ifTrue: [fileName := self class defaultLogFileName].
	^fileName
			