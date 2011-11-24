as yet unclassified
initialize
	super initialize.	"self buildLoggerViews.
	logAdder := ToothpickLoggerSelection new
		onAnswer: [ :loggerClass | self addLogger: loggerClass ];
		yourself"
	multiplexerEditor := LoggingMultiplexer current asComponent addValidatedForm; yourself.