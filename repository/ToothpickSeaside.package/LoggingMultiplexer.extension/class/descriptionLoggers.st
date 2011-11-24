*ToothpickSeaside
descriptionLoggers
	^ MAToManyRelationDescription new
		classes: Logger allSubclasses;
		label: 'Loggers';
		accessor:
				(MAPluggableAccessor
						read: [ :multiplexer | multiplexer loggers copy]
						write: [ :multiplexer :newLoggers | 
							multiplexer loggers
								removeAll;
								addAll: newLoggers ]);
		yourself