converting
print: anInteger on: aStream followedBy: spacer width: width 
	| digitStream padding digits |
	digitStream := WriteStream on: (String new: 10).
	anInteger printOn: digitStream.
	digits := digitStream contents.
	padding := width - digits size.
	padding > 0 
		ifTrue: 
			[padding := (String new: padding)
						atAllPut: $0;
						yourself.
			aStream nextPutAll: padding].
	aStream nextPutAll: digits.
	spacer isNil ifTrue: [^self].
	aStream nextPut: spacer
			