as yet unclassified
shouldNotLogEventWithLevel: level category: category
	self
		deny:
			(policy
				isInteresting:
					(LoggingEvent new
						category: category;
						level: level;
						yourself))