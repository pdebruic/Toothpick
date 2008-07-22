convenience
logMessage: message 
	^LoggingMultiplexer current addEvent: (self newDebugEventLevel: #debug message: message)
			