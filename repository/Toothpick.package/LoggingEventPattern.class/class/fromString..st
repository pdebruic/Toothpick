instance creation
fromString: aString 
	| stream cats catStream char level comparator |
	stream := aString readStream.
	cats := Set new.
	catStream := String new writeStream.
	[stream atEnd or: [(char := stream next) = $.]] whileFalse: 
			[char = $, 
				ifTrue: 
					[catStream position = 0 
						ifFalse: 
							[cats add: catStream contents asSymbol.
							catStream reset]]
				ifFalse: [catStream nextPut: char]].
	catStream position = 0 ifFalse: [cats add: catStream contents asSymbol].
	char := stream peek.
	comparator := ('!=' includes: char) 
		ifTrue: [
			(char = $=)
				ifTrue: [
					stream next.
					#=]
				ifFalse: [
					stream next.
					(stream peek = $=)
						ifTrue: [
							stream next.
							#!=]
						ifFalse: [#!]]]
		ifFalse: [nil].
	level := stream upToEnd.
	^self new 
		setCategories: cats
		comparator: comparator
		level: level
		patternString: aString