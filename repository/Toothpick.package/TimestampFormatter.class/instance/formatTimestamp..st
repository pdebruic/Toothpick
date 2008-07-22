converting
formatTimestamp: aTimestamp
	| stream |
	stream := WriteStream on: String new.
	self formatTimestamp: aTimestamp on: stream.
	^stream contents
			