*Toothpick-Configuration
configureFromDictionary: aDictionary 
	" OrderedCollection ('format' 'name' 'stream' 'isLogging' 'fileName')"

	^ ( self new )
		name: ( aDictionary at: 'name' ifAbsent: [ self defaultLogName ]);
		policy: (aDictionary at: 'policy' ifAbsent: [ nil ]);
		format: (aDictionary at: 'formatter'  ifAbsent: [ nil ]);
		yourself
			