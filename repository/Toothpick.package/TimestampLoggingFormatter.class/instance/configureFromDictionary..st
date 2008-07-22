*Toothpick-Configuration
configureFromDictionary: aDictionary
	^self tsFormatter: (TimestampFormatter configureFromDictionary: aDictionary)
			