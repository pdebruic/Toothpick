instance creation
category: aCategory level: aLevel message: aMessage
	| newEvent |
	newEvent := self new
		category: aCategory;
		timeStamp: self timestampClass now;
		level: aLevel;
		message: aMessage;
		yourself.
	^ LoggingMultiplexer current addEvent: newEvent