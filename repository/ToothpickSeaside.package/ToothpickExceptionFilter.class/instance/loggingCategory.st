as yet unclassified
loggingCategory
	^ ((self configuration at: #loggingCategory) ifNil: [ #default ]) asSymbol.