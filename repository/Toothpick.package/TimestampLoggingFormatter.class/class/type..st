instance creation
type: tsType 
	^(self new)
		tsFormatter: (self timestampFormatMappings at: tsType) new;
		yourself
			