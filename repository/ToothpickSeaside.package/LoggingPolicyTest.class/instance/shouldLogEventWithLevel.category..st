as yet unclassified
shouldLogEventWithLevel: level category: category
	self
		assert:
			(policy
				isInteresting:
					(LoggingEvent new
						level: level;
						category: category;
						yourself))