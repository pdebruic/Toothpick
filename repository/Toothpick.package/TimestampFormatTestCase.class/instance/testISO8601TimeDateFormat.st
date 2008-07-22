running
testISO8601TimeDateFormat
	"Formats a Date in the format 'yyyy-MM-dd HH:mm:ss,SSS' 
	for example, '1999-11-27 15:49:37,459'"
	formatter := ISO8601TimestampFormatter new.
	result := formatter formatTimestamp: self timestamp.
	self assert: result equals: '2006-02-18 11:04:45,123'.