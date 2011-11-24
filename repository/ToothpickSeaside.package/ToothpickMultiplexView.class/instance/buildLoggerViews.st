as yet unclassified
buildLoggerViews 
	logViewers := LoggingMultiplexer current loggers collect: [ :logger | ToothpickLoggerView new logger: logger ].