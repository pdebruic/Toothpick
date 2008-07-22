running
testAbsoluteTimeDateFormat
	"Formats a Date in the format 'HH:mm:ss,SSS' for example, '15:49:37,459'"

	formatter := TimeTimestampFormatter new.
	result := formatter formatTimestamp: self timestamp.
	self assert: result equals: '11:04:45,123'
			