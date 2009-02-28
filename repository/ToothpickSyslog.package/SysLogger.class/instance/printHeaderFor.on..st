syslogMessage
printHeaderFor: anEvent on: target 
	self printTimestampFor: anEvent on: target.
	self printHostnameOn: target