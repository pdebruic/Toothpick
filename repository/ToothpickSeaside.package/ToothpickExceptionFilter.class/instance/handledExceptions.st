as yet unclassified
handledExceptions 
	| set |
	set := ExceptionSet new.
	(self configuration at: #handledExceptions) do:[:e| set add: e].
	^ set.
