*ToothpickSeaside
descriptionPort
	^ MANumberDescription new
		accessor: #port;
		label: 'Syslog server port';
		beRequired;
		beInteger;
		bePositive;
		yourself