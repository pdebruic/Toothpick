*toothpickgemstone-core
formatTimestamp: aTimestamp on: stream
	stream print: (aTimestamp - ts) asMilliSeconds asInteger.
	^stream contents
			