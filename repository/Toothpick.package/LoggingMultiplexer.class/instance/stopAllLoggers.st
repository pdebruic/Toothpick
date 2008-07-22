logging
stopAllLoggers
	mutex critical: [self loggers do: [ :logger | logger stopLogging]]