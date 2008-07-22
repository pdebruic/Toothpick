instance creation
onFile: aString

	^self new
		fileName: aString;
		loadFromFile;
		yourself
			