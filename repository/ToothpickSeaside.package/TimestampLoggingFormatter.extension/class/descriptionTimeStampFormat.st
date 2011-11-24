*ToothpickSeaside
descriptionTimeStampFormat
	^ MAToOneRelationDescription new
		label: 'Timestamp formatter';
		accessor: #tsFormatter;
		beRequired;
		classes: [ TimestampFormatter allSubclasses ] magritteDynamicObject;
		yourself