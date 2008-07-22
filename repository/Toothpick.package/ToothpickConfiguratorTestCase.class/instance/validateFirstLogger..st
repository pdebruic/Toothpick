validation
validateFirstLogger: aLogger

	self assert: (aLogger name = 'TestFileLog');
		assert: (aLogger class = FileLogger);
		assert: (aLogger format class = SimpleLoggingFormatter);
		assert: (aLogger policy class = LoggingPolicy);
		assert: (aLogger policy category = #debug);
		assert: (aLogger policy level = #info);
		assert: (aLogger fileName = 'foo.log');
		yourself.
			