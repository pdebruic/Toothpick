as yet unclassified
initialize 
	super initialize.
	sender := ToothpickLoggingEventSender new.
	configurator := ToothpickMultiplexView new.