*Toothpick-PatternFormat
printWithFormat: aFormatString on: aStream 

	| shouldPad leftPad formatStream width wantsPrecision precision outputString |
	aFormatString isEmpty ifTrue: [ ^ aStream nextPutAll: self ].
	formatStream := aFormatString readStream.
	shouldPad := ( formatStream peekFor: $. ) not.
	shouldPad ifTrue: 
		[	leftPad := ( formatStream peekFor: $- ) not.
			width := ( formatStream upTo: $. ) asNumber asInteger
		].
	wantsPrecision := formatStream atEnd not.
	wantsPrecision 
		ifTrue: 
		[	precision := formatStream upToEnd asNumber asInteger.
			outputString := self copyFrom: ((self size - precision) max: 0) + 1 to: self size
		]
		ifFalse: [ outputString := self ].
	shouldPad 
		ifTrue: 
		[	leftPad 
				ifTrue: 
				[	width - outputString size timesRepeat: [ aStream nextPut: $ ].
					aStream nextPutAll: outputString
				]
				ifFalse: 
				[	aStream nextPutAll: outputString.
					width - outputString size timesRepeat: [ aStream nextPut: $ ]
				]
		]
		ifFalse: [ aStream nextPutAll: outputString ]
			