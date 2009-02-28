helpers
facilityFor: anEvent 
	^ facilityMap 
		at: anEvent category
		ifAbsent: self unmappedFacility