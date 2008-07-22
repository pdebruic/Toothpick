instance creation
category: category level: level message: message exception: exception 
	| event |
	event := (self new)
				category: category;
				timeStamp: self timestampClass now;
				level: level;
				message: message;
				exception: exception;
				yourself.
	^LoggingMultiplexer current addEvent: event
			