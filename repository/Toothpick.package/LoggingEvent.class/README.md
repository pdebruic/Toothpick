LoggingEvent is what is says it is, namely, an object that captures information on an event so that it can be logged.

Instance Variables:
	category	<Symbol>			A freely chooseable Symbol describing the type of event, such as #debug or #performance
	context		<String | Symbol>	A String or Symbol describing the logging context.
	exception	<Exception>		placeholder, currently unused
	level		<Symbol>			one of {#all | #debug | #info | #warn | #error | #fatal | #off | #null}
	message	<String>			a text describing the event
	timeStamp	<Timestamp>		a TimeStamp, what else