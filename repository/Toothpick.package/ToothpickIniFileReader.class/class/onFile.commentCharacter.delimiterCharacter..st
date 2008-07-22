instance creation
onFile: aString commentCharacter: commentCharacter delimiterCharacter: delimiterCharacter

	^self new
		fileName: aString;
		commentCharacter: commentCharacter;
		delimiterCharacter: delimiterCharacter;
		loadFromFile;
		yourself
			