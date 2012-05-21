as yet unclassified
errorEvent
	^ RiakLoggingEvent newDebugEventLevel: #error message: 'Error Message' forBucketNamed: self bucketNameForTests