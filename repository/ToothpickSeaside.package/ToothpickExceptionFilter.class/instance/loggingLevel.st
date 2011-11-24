as yet unclassified
loggingLevel
	^ (self configuration at: #loggingLevel) ifNil: [ #error ]