converting
formatTimestamp: aTimestamp on: stream

	self
		print: aTimestamp dayOfMonth 
			on: stream
			followedBy: Character space
			width: 2.
	stream nextPutAll: (self monthNames at: aTimestamp month); space.
	self
		print: aTimestamp year
			on: stream
			followedBy: Character space
			width: 4.
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
			followedBy: $,
			width: 2;
		print: aTimestamp millisecond
			on: stream
			followedBy: nil
			width: 3.
	^stream contents
			