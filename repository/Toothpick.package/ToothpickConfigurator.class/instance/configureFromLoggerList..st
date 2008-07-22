configuring
configureFromLoggerList: loggerList 
	| loggers |
	loggers := loggerList collect: [:assoc | self loggerFromDictionary: assoc].
	loggers do: [:logger | self multiplexer addLogger: logger].
	^loggers
			