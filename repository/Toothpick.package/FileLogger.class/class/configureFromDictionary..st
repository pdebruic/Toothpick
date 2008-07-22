*Toothpick-Configuration
configureFromDictionary: aDictionary 
	" OrderedCollection ('format' 'name' 'stream' 'isLogging' 'fileName')"

	^ ( super configureFromDictionary: aDictionary  )
		fileName: ( aDictionary at: 'filename' ifAbsent: [ self defaultLogFileName ]);
		yourself
			