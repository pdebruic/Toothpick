parsing
processPunctuation: aCharacter on: aStream
	(aCharacter == $n)
		ifTrue: [aStream cr]
		ifFalse: [(aCharacter == $t)
			ifTrue: [aStream tab]
			ifFalse: [aStream nextPut: $%]]
			