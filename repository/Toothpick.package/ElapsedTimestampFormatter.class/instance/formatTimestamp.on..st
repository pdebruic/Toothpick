converting
formatTimestamp: aTimestamp on: stream
	stream print: (aTimestamp - ts) asMilliSeconds.
	^stream contents
			