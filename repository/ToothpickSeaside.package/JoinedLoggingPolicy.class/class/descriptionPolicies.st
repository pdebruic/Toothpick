as yet unclassified
descriptionPolicies
	^ MAToManyRelationDescription new
		label: 'Policies';
		accessor: #policies;
		classes: [ BaseLoggingPolicy availablePolicyClasses] magritteDynamicObject;
		reference:
				(MAContainer new
						add:
								(MAStringDescription new
										label: 'Description';
										beReadonly;
										accessor: #asString;
										yourself);
						yourself);
		yourself