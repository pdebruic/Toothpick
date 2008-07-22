configuring
loggerFromDictionary: aDictionary 

	| logClass |
	logClass := self loggerMappings at: ( aDictionary at: 'type' ifAbsent: [ ^ nil ]) ifAbsent: [ ^ nil ].
	aDictionary at: 'formatter' put: (LoggingFormatter configureFromDictionary: aDictionary).
	aDictionary at: 'policy' put: (LoggingPolicy configureFromDictionary: aDictionary).
	^ logClass configureFromDictionary: aDictionary
			