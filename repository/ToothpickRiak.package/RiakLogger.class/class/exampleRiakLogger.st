as yet unclassified
exampleRiakLogger
	| logger event |
	event := RiakLoggingEvent newDebugEventLevel: #info message: 'Test Message'.
	event bucket: 'mylog'.
	logger := RiakLogger host: 'localhost' port: 8098.
	logger
		name: 'my riak logger';
		format: JSONLoggingFormatter new;
		policy: LoggingPolicy debugPolicy;
		yourself.
	logger
		startLogging;
		addEvent: event;
		stopLogging