syslogMessage
printPriorityFor: anEvent on: target 
	target nextPut: $<;
		
		print: (self priorityFor: anEvent);
		 nextPut: $>