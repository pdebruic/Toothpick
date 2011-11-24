*ToothpickSeaside
descriptionFormat
	^ MAToOneRelationDescription new
		label: 'Logging format';
		accessor: #format;
		classes: [LoggingFormatter allSubclasses] magritteDynamicObject;
		yourself