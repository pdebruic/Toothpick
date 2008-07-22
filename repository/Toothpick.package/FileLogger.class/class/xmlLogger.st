instance creation
xmlLogger

	^ ( self new )
		name: 'XML Log';
		fileName: 'debugLog.xml';
		format: XMLLoggingFormatter new;
		policy: LoggingPolicy defaultPolicy;
		yourself
			