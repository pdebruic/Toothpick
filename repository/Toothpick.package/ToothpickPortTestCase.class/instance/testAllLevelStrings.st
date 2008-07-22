testing
testAllLevelStrings
	self assert: LoggingEvent allLevels size = LoggingEvent new allLevelsStrings size
			