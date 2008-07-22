instance creation
defaultLogger
	^(self new)
		name: self defaultLogName;
		format: SimpleLoggingFormatter new;
		policy: LoggingPolicy defaultPolicy;
		yourself
			