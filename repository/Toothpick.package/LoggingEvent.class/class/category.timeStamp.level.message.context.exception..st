instance creation
category: category timeStamp: timeStamp level: level message: message context: context exception: exception 
	| event |
	event := (self new)
				category: category;
				timeStamp: timeStamp;
				level: level;
				message: message;
				context: context;
				exception: exception;
				yourself.
	^LoggingMultiplexer current addEvent:event
			