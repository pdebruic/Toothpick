as yet unclassified
descriptionLevel
	^ MASingleOptionDescription new
		label: 'Logging level';
		accessor: #level;
		optionsAndLabels: (LoggingEvent allLevels collect: [ :level | level -> ('level >= #' , level) ]);
		beRequired;
		yourself