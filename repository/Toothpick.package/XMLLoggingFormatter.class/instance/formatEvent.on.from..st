printing
formatEvent: anEvent on: aStream from: aLogger 
	aStream
		nextPutAll: '<LoggingEvent loggerName=''';
		nextPutAll: aLogger name;
		nextPutAll: ''' category=''';
		nextPutAll: anEvent categoryString;
		nextPutAll: ''' level=''';
		nextPutAll: anEvent levelString;
		nextPutAll: ''' timestamp='''.
	self tsFormatter formatTimestamp: anEvent timeStamp on: aStream.
	aStream
		nextPutAll: '''>';
		cr;
		tab;
		nextPutAll: '	<Message>';
		nextPutAll: anEvent messageString;
		nextPutAll: '</Message>'.
	anEvent context isNil 
		ifFalse: 
			[aStream
				cr;
				tab;
				nextPutAll: '	<Context>';
				nextPutAll: anEvent context;
				nextPutAll: '</Context>'].
	aStream
		cr;
		nextPutAll: '</LoggingEvent>'
			