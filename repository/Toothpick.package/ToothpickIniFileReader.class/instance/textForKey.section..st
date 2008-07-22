accessing
textForKey: aKey section: aSection
	"Return the text in the current language dictionary
	at <aKey>. If not there, return an empty string"

	^(self textDictionaryForSection: aSection)
		at: aKey 
		ifAbsent: ['']
			