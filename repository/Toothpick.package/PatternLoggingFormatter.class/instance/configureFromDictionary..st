configuring
configureFromDictionary: aDictionary 

	self formatString: ( aDictionary at: 'pattern' ifAbsent: [ self defaultFormatString ])
			