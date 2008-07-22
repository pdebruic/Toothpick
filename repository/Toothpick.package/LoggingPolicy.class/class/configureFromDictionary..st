*Toothpick-Configuration
configureFromDictionary: aDictionary

	| policyClass |
	policyClass := ( aDictionary includesKey: 'policy' ) 
			ifTrue: [ self mappings at: ( aDictionary at: 'policy' ) ifAbsent: [self mappings at: 'simple']]
			ifFalse: [ self mappings at: 'simple' ].
	^policyClass new configureFromDictionary: aDictionary
			