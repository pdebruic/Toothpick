adding
addEvent: aLoggingEvent
	"dialect-specific"
	mutex critical: [self loggers do: [ :logger | logger addEvent: aLoggingEvent]].
	^aLoggingEvent