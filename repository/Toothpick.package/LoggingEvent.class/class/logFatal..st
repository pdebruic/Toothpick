convenience
logFatal: message 
	^LoggingMultiplexer current addEvent: (self newDebugEventLevel: #fatal message: message)
			