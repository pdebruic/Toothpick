instance creation
category: category level: level message: message 
	| event |
	event := (self new)
				category: category;
				timeStamp: self timestampClass now;
				level: level;
				message: message;
				yourself.
	^LoggingMultiplexer current addEvent: event
			