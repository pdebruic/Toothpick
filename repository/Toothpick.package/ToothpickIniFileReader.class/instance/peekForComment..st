parsing
peekForComment: aStream
	"(private)"

	^aStream peekFor: self commentCharacter
			