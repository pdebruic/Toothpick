accessing
level: aSymbolOrInteger
	
	level := aSymbolOrInteger isSymbol
		ifTrue: [self allLevels indexOf: aSymbolOrInteger ifAbsent: [0]]
		ifFalse: [aSymbolOrInteger]
			