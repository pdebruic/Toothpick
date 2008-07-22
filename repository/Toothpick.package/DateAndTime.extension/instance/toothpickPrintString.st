*Toothpick-Core
toothpickPrintString
	| stream |
	stream := WriteStream on: (String new: 32).
	ISO8601TimestampFormatter new formatTimestamp: self on: stream.
	^stream contents
			