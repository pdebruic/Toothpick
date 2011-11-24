as yet unclassified
testSetPolicies
	policy policies: (Array with: (CategoryLoggingPolicy logCategory: #simple) with: (LevelLoggingPolicy logLevel: #info)).
	self shouldNotLogEventWithLevel: #info category: #complex.
	self shouldNotLogEventWithLevel: #debug category: #simple.
	self shouldLogEventWithLevel: #info category: #simple.
	self shouldLogEventWithLevel: #warn category: #simple