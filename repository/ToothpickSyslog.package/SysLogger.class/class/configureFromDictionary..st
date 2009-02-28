configuring
configureFromDictionary: aDictionary 
	"a Set('policy' 'port' 'facility' 'name' 'server'
	'hostname' 'format')"
	^ (super configureFromDictionary: aDictionary)
		hostname: (aDictionary
				at: 'hostname'
				ifAbsent: [self defaultHostname]);
		
		unmappedFacility:  (aDictionary
				at: 'facility'
				ifAbsent: [self defaultUnmappedFacility]);
		
		server: (aDictionary
				at: 'server'
				ifAbsent: [self defaultServer]);
		
		port: (aDictionary
				at: 'port'
				ifAbsent: [self defaultPort]);
		 configureFromDictionary: aDictionary yourself