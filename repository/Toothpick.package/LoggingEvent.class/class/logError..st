convenience
logError: message 
	^LoggingMultiplexer current addEvent: (self newDebugEventLevel: #error message: message)
			