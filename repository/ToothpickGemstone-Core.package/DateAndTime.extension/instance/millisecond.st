*toothpickgemstone-core
millisecond

|secs|
	secs:=self asParts last.
	^(secs - secs integerPart * 1000) truncated