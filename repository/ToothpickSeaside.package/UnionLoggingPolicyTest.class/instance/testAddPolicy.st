as yet unclassified
testAddPolicy
	policy
		add: (CategoryLoggingPolicy logCategory: #simple);
		add: (LevelLoggingPolicy logLevel: #info).
	self shouldLogEventWithLevel: #info category: #complex.
	self shouldLogEventWithLevel: #debug category: #simple.
	self shouldLogEventWithLevel: #info category: #simple.
	self shouldLogEventWithLevel: #warn category: #simple.
	self shouldNotLogEventWithLevel: #debug category: #complex