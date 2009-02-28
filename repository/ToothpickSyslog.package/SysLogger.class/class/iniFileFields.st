configuring
iniFileFields
	"The following fields may be defined in a
	toothpick.ini chunk. Check my subclasses for
	additional fields which they support
	
	facility anInteger: The default facility if no mapping is found
	hostname aString: The source hostame
	server aString: The syslog server
	port anInteger: The syslog port
	map[0-9]? aString: Category to facility mapping
"
	^ super iniFileFields add: 'facility';
		 add: 'hostname';
		 add: 'server';
		 add: 'port';
		 yourself