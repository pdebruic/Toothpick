accessing
textDictionaryForSection: aKey 
	"(private)"

	^self collection at: aKey ifAbsentPut: [Dictionary new]
			