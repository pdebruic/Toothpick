printing
outputFooterOn: aStream 
	aStream 
		nextPutAll: 'Stopped logging ';
		nextPutAll: LoggingEvent timestampClass now toothpickPrintString;
		cr
			