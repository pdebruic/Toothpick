parsing
peekForSection: aStream
	"(private)"

	^aStream peekFor: self sectionOpenerChar
			