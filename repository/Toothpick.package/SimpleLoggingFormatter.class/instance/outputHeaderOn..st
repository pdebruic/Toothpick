printing
outputHeaderOn: aStream 
	aStream 
		nextPutAll: 'Started logging ';
		nextPutAll: LoggingEvent timestampClass now toothpickPrintString;
		cr
			