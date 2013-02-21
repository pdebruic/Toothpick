instance creation
category: aCategory timeStamp: aTimeStamp level: aLevel message: aMessage exception: anException
	| newEvent |
	newEvent := self new
		category: aCategory;
		timeStamp: aTimeStamp;
		level: aLevel;
		message: aMessage;
		exception: anException;
		yourself.
	^ LoggingMultiplexer current addEvent: newEvent