querying
doesCategoryMatch: anEvent 
	(self categories includes: #*) ifTrue: [^true].
	^self categories includes: anEvent category
			