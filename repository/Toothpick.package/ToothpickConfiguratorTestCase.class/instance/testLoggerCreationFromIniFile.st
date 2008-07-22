testing
testLoggerCreationFromIniFile
	| logString iniFileReader dict loggers configurator |
	logString := self sampleIniString.
	iniFileReader := ToothpickIniFileReader new. 
	iniFileReader parseTextFileStream: logString readStream.
	dict := iniFileReader collection.
	configurator := ToothpickConfigurator new.
	loggers := dict keysAndValuesDo: [ :key :val | dict at: key put: (configurator loggerFromDictionary: val)].
	self
		validateFirstLogger: (loggers at: 'FirstLogger');
		validateSecondLogger: (loggers at: 'SecondLogger');
		validateThirdLogger: (loggers at: 'ThirdLogger');
		validateFourthLogger: (loggers at: 'FourthLogger');
		yourself
			