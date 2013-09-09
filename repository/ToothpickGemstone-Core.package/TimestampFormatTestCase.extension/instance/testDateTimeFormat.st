*toothpickgemstone-core
testDateTimeFormat
	"Formats a Date in the format 'dd MMM yyyy HH:mm:ss,SSS' 
	for example, '06 Nov 1994 15:49:37,459'"
	formatter := DateTimeTimestampFormatter new.
	result := formatter formatTimestamp: self timestamp.
	self assert: result equals: '18 Feb 2006 11:04:45,000'
			