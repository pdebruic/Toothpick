accessing
defaultIsInterestingBlock

	^ [: event | event category == self category and: [ event isLevelHigherThan: self level ]]
			