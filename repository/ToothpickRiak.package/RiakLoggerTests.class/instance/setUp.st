as yet unclassified
setUp
	super setUp.
	self keysAndLogs: Dictionary new.
	self logger: (RiakLogger host: 'localhost' port: 8098).
	self logger
		name: 'test riak logger';
		format: JSONLoggingFormatter new;
		policy: LoggingPolicy debugPolicy;
		yourself.
	self bucket removeAll