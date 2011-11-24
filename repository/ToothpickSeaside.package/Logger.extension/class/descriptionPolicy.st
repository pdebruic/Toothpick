*ToothpickSeaside
descriptionPolicy
	^ MAToOneRelationDescription new
		label: 'Logging policy';
		accessor: #policy;
		classes: [BaseLoggingPolicy availablePolicyClasses] magritteDynamicObject;
		stringWriter: LoggingPolicyStringWriter new;
		yourself