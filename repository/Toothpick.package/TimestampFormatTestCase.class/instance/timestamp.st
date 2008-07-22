running
timestamp
	"Dialect-specific"

	| time |
	time := Time 
				hour: 11
				minute: 4
				second: 45 nanoSecond: (123 * (10 raisedTo: 6)).
	^DateAndTime date: (Date 
				newDay: 18
				month: 2 "Use a date in February so we catch difference between day-in-month and day-in-year"
				year: 2006)
		time: time
			