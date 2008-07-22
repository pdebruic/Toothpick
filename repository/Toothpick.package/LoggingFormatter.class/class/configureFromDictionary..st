*Toothpick-Configuration
configureFromDictionary: aDictionary

	| formatClass |
	formatClass := ( aDictionary includesKey: 'format' ) 
			ifTrue: [ self mappings at: ( aDictionary at: 'format' ) ifAbsent: [self mappings at: 'simple']]
			ifFalse: [ self mappings at: 'simple' ].
	^formatClass new configureFromDictionary: aDictionary
			