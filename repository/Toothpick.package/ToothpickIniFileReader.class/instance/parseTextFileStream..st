parsing
parseTextFileStream: aStream
	"Parse <aStream> line for line. If the line begins with
	a comment, skip over it. If the line is a language def,
	fetch the dictionary for the language. Else, tokenize
	the line and insert it into the dictionary"

	| dict line | 
	(self peekForSection: aStream)
		ifTrue: [aStream reset]
		ifFalse: [Error signalWith: self fileFormatNotValidErrorString].
	[aStream atEnd] whileFalse: [ | text |
		(text := aStream nextLine withBlanksTrimmed) isEmpty ifFalse: [
			line := ReadStream on: text.
			(self peekForComment: line) ifFalse: [
				(self peekForSection: line)
					ifTrue: [dict := self textDictionaryForSection: (line upTo: $])]
					ifFalse: [dict 
						at: (line upTo: self delimiterCharacter) withBlanksTrimmed
						put: line upToEnd withBlanksTrimmed]]]].
			