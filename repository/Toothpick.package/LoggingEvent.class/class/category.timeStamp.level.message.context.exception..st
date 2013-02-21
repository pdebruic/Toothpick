instance creation
category: aCategory timeStamp: aTimeStamp level: aLevel message: aMessage context: aContext exception: anException
	| newEvent |
	newEvent := self new
		category: aCategory;
		timeStamp: aTimeStamp;
		level: aLevel;
		message: aMessage;
		context: aContext;
		exception: anException;
		yourself.
	^ LoggingMultiplexer current addEvent: newEvent