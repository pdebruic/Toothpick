validation
validateSecondLogger: aLogger

	self assert: (aLogger name = 'TestXMLFileLog');
		assert: (aLogger class = FileLogger);
		assert: (aLogger format class = XMLLoggingFormatter);
		assert: (aLogger format tsFormatter class mappingKey = 'iso');
		assert: (aLogger policy class = LoggingPolicy);
		assert: (aLogger policy category = #debug);
		assert: (aLogger policy level = #error);
		assert: (aLogger fileName = 'foo.xml');
		yourself.
			