as yet unclassified
host: aDomainOrUrl port: aPortNumber
	| newProtocol |
	newProtocol := RiakProtocol new.
	newProtocol 
		host: aDomainOrUrl;
		port: aPortNumber.
	^ self new session: (RiakSession on: newProtocol)