as yet unclassified
jsonErrorMessage
	| dict |
	dict := Dictionary new.
	dict at: 'msg_id' put: 101.
	dict at: 'msg_string' put: 'json body for the logged message'.
	^ LoggingEvent newDebugEventLevel: #error message: dict