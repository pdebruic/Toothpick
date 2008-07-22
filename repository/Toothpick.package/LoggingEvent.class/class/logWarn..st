convenience
logWarn: message 
	^LoggingMultiplexer current addEvent: (self newDebugEventLevel: #warn message: message)
			