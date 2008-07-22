instance creation
category: category timeStamp: timeStamp level: level message: message exception: exception 
	| event |
	event := (self new)
				category: category;
				timeStamp: timeStamp;
				level: level;
				message: message;
				exception: exception;
				yourself.
	^LoggingMultiplexer current addEvent:event
			