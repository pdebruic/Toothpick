instance creation
onFile: aString withDictionary: aDictionary 
	^self new
		fileName: aString;
		collection: aDictionary;
		yourself
			