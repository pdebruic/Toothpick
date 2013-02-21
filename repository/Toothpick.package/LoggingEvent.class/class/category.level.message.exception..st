instance creation
category: aCategory level: aLevel message: aMessage exception: anException
	| newEvent |
	newEvent := self new
		category: aCategory;
		timeStamp: self timestampClass now;
		level: aLevel;
		message: aMessage;
		exception: anException;
		yourself.
	^ LoggingMultiplexer current addEvent: newEvent