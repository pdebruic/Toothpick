*Toothpick-Configuration
configureFromIniFile
	| loggerList configurator |
	configurator := ToothpickConfigurator for: self.
	loggerList := configurator configureFromIniFile.
	loggerList do: [:logger | self addLogger: logger].
	^loggers
			