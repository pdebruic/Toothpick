initialization
initialize
	super initialize.
	format := SimpleLoggingFormatter defaultFormat.
	syslogTimestampFormatter := SyslogTimestampFormatter new.
	stream := nil.
	name := self class defaultLogName.
	unmappedFacility := self class defaultUnmappedFacility.
	facilityMap := self class defaultMapping.
	hostname := self class defaultHostname.
	server := self class defaultServer.
	port := self class defaultPort.
	socket := Socket newUDP