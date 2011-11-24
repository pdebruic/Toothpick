as yet unclassified
isInteresting: aLoggingEvent
	^ policies allSatisfy: [ :policy | policy isInteresting: aLoggingEvent ]