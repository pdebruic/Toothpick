as yet unclassified
addLogger: loggerClass
	| logger |
	logger := loggerClass new.
	LoggingMultiplexer current addLogger: logger.
	logger
		policy:
			(LevelLoggingPolicy new
				level: #error;
				yourself).
	self buildLoggerViews