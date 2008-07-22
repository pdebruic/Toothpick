initialize-release
setCategories: cats comparator: comp level: lvl patternString: aString 
	categories := cats.
	comparator := comp.
	level := LoggingEvent allLevels indexOf: lvl asSymbol ifAbsent: [0].
	patternString := aString
			