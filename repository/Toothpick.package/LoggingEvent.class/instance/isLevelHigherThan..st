querying
isLevelHigherThan: aSymbolOrInteger

	^self level >= (aSymbolOrInteger isSymbol
		ifTrue: [self allLevels indexOf: aSymbolOrInteger]
		ifFalse: [aSymbolOrInteger])
			