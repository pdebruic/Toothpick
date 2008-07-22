validation
validateThirdLogger: aLogger

	self assert: (aLogger name = 'TestThirdFileLog');
		assert: (aLogger class = FileLogger);
		assert: (aLogger format class = PatternLoggingFormatter);
		assert: (aLogger format formatString = '%p - %m');		
		assert: (aLogger policy class = LoggingPolicy);
		assert: (aLogger policy category = #debug);
		assert: (aLogger policy level = #error);
		assert: (aLogger fileName = 'foo3.xml');
		yourself.
			