*Toothpick-Configuration
configureFromDictionary: aDictionary
	| filters |
	filters := Set new.
	aDictionary keysAndValuesDo: [ :key :val |
		(key findString: 'filter' startingAt: 1) = 1 ifTrue: [
			filters add: val]].
 	patterns:= filters collect: [ :filter | LoggingEventPattern fromString: filter].
	^self
			