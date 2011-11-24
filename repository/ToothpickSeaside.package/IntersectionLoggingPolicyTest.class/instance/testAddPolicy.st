as yet unclassified
testAddPolicy
	policy
		add: (CategoryLoggingPolicy logCategory: #simple);
		add: (LevelLoggingPolicy logLevel: #info).
	self shouldNotLogEventWithLevel: #info category: #complex.
	self shouldNotLogEventWithLevel: #debug category: #simple.
	self shouldLogEventWithLevel: #info category: #simple.
	self shouldLogEventWithLevel: #warn category: #simple