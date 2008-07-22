converting
formatTimestamp: aTimestamp on: stream
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
			