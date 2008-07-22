accessing
loggerNamed: aString
	^loggers detect: [ :logger | logger name = aString] ifNone: []
			