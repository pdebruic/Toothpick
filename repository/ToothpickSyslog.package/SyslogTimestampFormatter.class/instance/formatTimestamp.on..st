converting
formatTimestamp: aTimestamp on: stream 
	stream
		nextPutAll: (self monthNames at: aTimestamp month);
		 space.
	self
		print: aTimestamp dayOfMonth
		on: stream
		followedBy: Character space
		width: 2.
	self
		print: aTimestamp hour
		on: stream
		followedBy: $:
		width: 2;
		
		print: aTimestamp minute
		on: stream
		followedBy: $:
		width: 2;
		
		print: aTimestamp second
		on: stream
		followedBy: nil
		width: 2