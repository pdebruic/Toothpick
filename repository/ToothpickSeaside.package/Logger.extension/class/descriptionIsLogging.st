*ToothpickSeaside
descriptionIsLogging
	^ MABooleanDescription new
		label: 'Is logging?';
		accessor:
				(MAPluggableAccessor
						read: [ :logger | logger isLogging ]
						write: [ :logger :shouldLog | 
							shouldLog
								ifTrue: [ logger startLogging ]
								ifFalse: [ logger stopLogging ] ]);
		beRequired;
		yourself