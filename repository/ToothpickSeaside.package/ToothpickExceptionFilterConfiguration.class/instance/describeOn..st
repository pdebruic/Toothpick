as yet unclassified
describeOn: config
	(config list: #loggingLevel)
		options: [ LoggingEvent allLevels ];
		default: #error.
	(config
		string: #loggingCategory)
		default: #unhandled.
	(config collection: #handledExceptions)
		options: [ Exception allSubclasses ];
		default: (Array with: Error).