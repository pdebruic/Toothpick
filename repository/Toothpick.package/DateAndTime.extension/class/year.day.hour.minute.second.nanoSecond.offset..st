*toothpick
year: year day: dayOfYear hour: hour minute: minute second: second nanoSecond: nano offset: offset 
	"Return a DataAndTime"

	| y d |
	y := self
		year: year
		month: 1
		day: 1
		hour: hour
		minute: minute
		second: second
		nanoSecond: nano
		offset: offset.
	d := Duration days: (dayOfYear - 1).
	^ y + d