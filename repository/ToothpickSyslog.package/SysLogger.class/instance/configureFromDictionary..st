configuring
configureFromDictionary: aDictionary
	| mappings |
	mappings := Set new.
	aDictionary keysAndValuesDo: [ :key :val |
		(key findString: 'map' startingAt: 1) = 1 ifTrue: [
			mappings add: val]].
 	mappings do: [ :mapping | self map: (mapping subStrings: '=') first asSymbol to: (mapping subStrings: '=') second asNumber  ].
	^self
			