logging
startAllLoggers
	mutex critical: [self loggers do: [ :logger | logger startLogging]]