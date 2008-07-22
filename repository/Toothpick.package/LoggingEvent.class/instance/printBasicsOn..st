printing
printBasicsOn: aStream 
	aStream
		nextPutAll: self levelString;
		nextPutAll: ' - ';
		nextPutAll: self messageString
			