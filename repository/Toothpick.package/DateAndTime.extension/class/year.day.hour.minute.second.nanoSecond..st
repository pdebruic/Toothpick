*toothpick
year: year day: dayOfYear hour: hour minute: minute second: second nanoSecond: nano

	^ self
		year: year
		day: dayOfYear
		hour: hour
		minute: minute
		second: second
		nanoSecond: nano
		offset: self localOffset.
