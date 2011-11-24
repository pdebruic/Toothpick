as yet unclassified
isInteresting: aLoggingEvent
	^ policies anySatisfy: [ :policy | policy isInteresting: aLoggingEvent ]