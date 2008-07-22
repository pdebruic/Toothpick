*Toothpick-Configuration
mappings
	^self withAllSubclasses inject: Dictionary new into: [ :dict :subClass |
		dict at: subClass mappingKey put: subClass. dict]
			