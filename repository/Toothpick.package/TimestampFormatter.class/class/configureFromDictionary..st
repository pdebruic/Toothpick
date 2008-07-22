*Toothpick-Configuration
configureFromDictionary: aDictionary

	| formatClass |
	formatClass := ( aDictionary includesKey: 'tsformat' ) 
			ifTrue: [ self mappings at: ( aDictionary at: 'tsformat' ) ifAbsent: [self mappings at: 'time']]
			ifFalse: [ self mappings at: 'time' ].
	^formatClass new configureFromDictionary: aDictionary
			