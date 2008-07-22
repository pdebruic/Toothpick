running
testRelativeTimeDateFormat
	"Formats a Date in the format SSSSS"

	| ts date time newTs |
	formatter := ElapsedTimestampFormatter new.
	ts := DateAndTime now.
	formatter ts: ts.
	date := ts asDate.
	time := ts asTime.
	newTs := DateAndTime date: date time: (time addSeconds: 2).
	result := formatter formatTimestamp: newTs.
	self assert: result equals: '2000'
			