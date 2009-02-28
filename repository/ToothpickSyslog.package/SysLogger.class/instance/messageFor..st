syslogMessage
messageFor: anEvent 
	^ String streamContents: 
		[ :messageStream | 
		self
			printPriorityFor: anEvent
				on: messageStream;
			printHeaderFor: anEvent
				on: messageStream;
			printMessageFor: anEvent
				on: messageStream ]