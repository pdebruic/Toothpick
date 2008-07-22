accessing
stopLogging
	self isLogging ifFalse: [^self].
	self outputFooter.
	isLogging := false.
			