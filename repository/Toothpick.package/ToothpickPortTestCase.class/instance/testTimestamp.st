testing
testTimestamp
	| tsClass |
	tsClass := LoggingEvent timestampClass.
	self deny: tsClass = LoggingEvent.
	tsClass := tsClass new.
	self assert: (tsClass respondsTo: #year);
		assert: (tsClass respondsTo: #month);
		assert: (tsClass respondsTo: #day);
		assert: (tsClass respondsTo: #hour);
		assert: (tsClass respondsTo: #minute);
		assert: (tsClass respondsTo: #second);
		assert: (tsClass respondsTo: #millisecond);
		yourself.
			