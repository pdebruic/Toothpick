parsing
getDateFormatModifierFrom: aStream
	(aStream peekFor: ${) ifFalse: [^nil].
	^(aStream upTo: $}) contents
			