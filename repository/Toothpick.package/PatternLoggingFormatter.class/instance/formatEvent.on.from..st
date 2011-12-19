printing
formatEvent: anEvent on: aStream from: aLogger
	| formatStream |
	formatStream := self formatString readStream.
	[ formatStream atEnd ]
		whileFalse: [ 
			| c |
			(c := formatStream next) = $%
				ifTrue: [ 
					| formatModifier conversionToken |
					formatModifier := self getFormatModifierFrom: formatStream.
					conversionToken := formatStream next.
					('nt%' includes: conversionToken)
						ifTrue: [ self processPunctuation: conversionToken on: aStream ]
						ifFalse: [ 
							| conversionMethod |
							conversionMethod := self tokenDictionary at: conversionToken ifAbsent: [ ^ self error: 'Illegal token' ].	"Must intercept date modifiers here"
							conversionToken == $d
								ifTrue: [ formatModifier := self getDateFormatModifierFrom: formatStream ].
							self
								perform: conversionMethod
								withArguments:
									(Array
										with: anEvent
										with: formatModifier
										with: aLogger
										with: aStream) ] ]
				ifFalse: [ aStream nextPut: c ] ]