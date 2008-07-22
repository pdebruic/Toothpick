accessing
startLogging
	self isLogging ifTrue: [^self].
	isLogging := true.
	self outputHeader
			