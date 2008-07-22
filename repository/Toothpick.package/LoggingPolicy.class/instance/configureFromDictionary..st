*Toothpick-Configuration
configureFromDictionary: aDictionary
 	^self setCategory: ( aDictionary at: 'category' ifAbsent: [ 'debug' ])
			level: ( aDictionary at: 'threshold' ifAbsent: [ 'all' ])
			