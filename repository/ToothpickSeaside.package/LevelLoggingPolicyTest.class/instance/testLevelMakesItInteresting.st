as yet unclassified
testLevelMakesItInteresting
	policy level: #error.
	self shouldLogEventWithLevel: #error.
	self shouldNotLogEventWithLevel: #warn.	
