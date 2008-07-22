examples
exampleFileLogger
	| logger event |
	event := LoggingEvent newDebugEventLevel: #info message: 'Test Message'.
	logger := (FileLogger new)
				name: 'my file logger';
				fileName: 'mylog.txt';
				format: SimpleLoggingFormatter new;
				policy: LoggingPolicy debugPolicy;
				yourself.
	logger
		startLogging;
		addEvent: event;
		stopLogging
			