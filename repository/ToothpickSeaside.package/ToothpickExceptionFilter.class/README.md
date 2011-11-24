I will log occured exceptions using Toothpick logging. I am configurable with three parameters:

#handledExceptions 		List of exceptions (classes) that I will log.
#loggingCategory 			The category used when creating log events.
#loggingLevel 				The level used to log events.
				

One can configure me using Seaside configuration user interface or with code.

ToothpickExceptionFilter new
	configuration at: #loggingLevel put: #unhandled;
	configuration at: #loggingCategory put: #error;
	configuration at: #handledExceptions put: #error.