*Toothpick-Configuration
mappings
	^self allSubclasses inject: Dictionary new into: [ :dict :subClass |
		dict at: subClass mappingKey put: subClass. dict]
			