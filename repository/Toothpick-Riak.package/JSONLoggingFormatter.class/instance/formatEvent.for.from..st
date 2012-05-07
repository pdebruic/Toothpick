as yet unclassified
formatEvent: anEvent for: aDictionary from: aLogger
	aDictionary at: 'loggerName' put: aLogger name.
	aDictionary at: 'category' put: anEvent categoryString.
	aDictionary at: 'levelString' put: anEvent levelString.
	aDictionary at: 'timestamp' put: anEvent timeStamp asUTC asUnixTime.
	aDictionary at: 'message' put: anEvent messageString.
	anEvent context isNil
		ifFalse: [ aDictionary at: 'context' put: anEvent context ]