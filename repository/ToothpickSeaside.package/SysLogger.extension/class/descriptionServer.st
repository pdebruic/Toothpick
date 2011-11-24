*ToothpickSeaside
descriptionServer
	^ MAStringDescription new
		accessor: #server;
		label: 'Syslog server hostname';
		beRequired;
		yourself