adding-removing
addEvent: aLoggingEvent on: aStream from: aLogger 

	self formatEvent: aLoggingEvent on: aStream from: aLogger.
	self putLineFeedOn: aStream.
			