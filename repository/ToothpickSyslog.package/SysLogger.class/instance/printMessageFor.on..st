syslogMessage
printMessageFor: anEvent on: target 
	self format
		addEvent: anEvent
		on: target
		from: self