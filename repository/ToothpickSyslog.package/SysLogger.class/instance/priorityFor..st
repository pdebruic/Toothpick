helpers
priorityFor: anEvent 
	^ (self facilityFor: anEvent)
		* 8
		+ (self severityFor: anEvent)