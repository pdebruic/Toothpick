as yet unclassified
exampleRiakLogger
	| logger event |
	event := LoggingEvent newDebugEventLevel: #info message: 'Test Message'.
	logger := RiakLogger host: 'localhost' port: 8098.
	logger
		name: 'my riak logger';
		bucketName: 'mylog';
		format: JSONLoggingFormatter new;
		policy: LoggingPolicy debugPolicy;
		yourself.
	logger
		startLogging;
		addEvent: event;
		stopLogging