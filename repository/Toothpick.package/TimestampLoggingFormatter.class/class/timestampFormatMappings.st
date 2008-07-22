instance creation
timestampFormatMappings
	^(Dictionary new)
		at: 'time' put: TimeTimestampFormatter;
		at: 'dateTime' put: DateTimeTimestampFormatter;
		at: 'iso' put: ISO8601TimestampFormatter;
		at: 'elapsed' put: ElapsedTimestampFormatter;
		yourself
			