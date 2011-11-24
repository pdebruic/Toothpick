as yet unclassified
handleFiltered: aRequestContext
	[ super handleFiltered: aRequestContext ]
		on: self handledExceptions
		do: [ :exception | 
			[ self handleException: exception ]
				on: Error
				do: [ :error | self internalError: error ]	"If there's an error while handling the exception, fall
				back on an internal error response." ]