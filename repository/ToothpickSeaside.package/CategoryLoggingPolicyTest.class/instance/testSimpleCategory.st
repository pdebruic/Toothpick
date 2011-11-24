as yet unclassified
testSimpleCategory
	policy category: #simple.
	self shouldLogEventWithCategory: #simple.
	self shouldNotLogEventWithCategory: #complex.