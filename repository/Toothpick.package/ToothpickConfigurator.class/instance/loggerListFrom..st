configuring
loggerListFrom: aString 
	| reader |
	reader := ToothpickIniFileReader onFile: aString.
	^reader collection
			