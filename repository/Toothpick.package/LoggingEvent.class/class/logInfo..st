convenience
logInfo: message 
	^LoggingMultiplexer current addEvent: (self newDebugEventLevel: #info message: message)
			