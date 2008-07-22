parsing
getFormatModifierFrom: aStream
	| newStream element formatChars |
	formatChars := '1234567890-.'.
	newStream := '' copy writeStream.
	[aStream atEnd]
		whileFalse:
			[element := aStream peek.
			(formatChars includes: element)
				ifFalse: [^newStream contents].
			newStream nextPut: aStream next].
	^newStream contents
			