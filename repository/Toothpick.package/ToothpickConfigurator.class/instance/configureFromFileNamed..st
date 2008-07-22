configuring
configureFromFileNamed: aString 
	| loggerList |
	loggerList := self loggerListFrom: aString.
	^self configureFromLoggerList: loggerList
			