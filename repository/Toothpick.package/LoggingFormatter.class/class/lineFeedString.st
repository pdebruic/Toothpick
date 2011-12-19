as yet unclassified
lineFeedString
	^ LoggingLineFeedString ifNil: [ LoggingLineFeedString := String lf ]