querying
isInteresting: anEvent 
	^(self doesCategoryMatch: anEvent) and: 
			[self comparator isNil 
				ifTrue: [anEvent level >= self level]
				ifFalse: 
					[self comparator = #= 
						ifTrue: [anEvent level = self level]
						ifFalse: [
							self comparator = #! 
								ifTrue: [anEvent level < self level]
								ifFalse: [anEvent level ~= self level]]]]