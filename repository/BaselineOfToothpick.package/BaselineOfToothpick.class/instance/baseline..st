baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
					with: [ spec
						loads: #('Base');
						repository: 'github://SeasideSt/Seaside:master/repository' ];
				project: 'Magritte'
					with: [ spec
						className: 'ConfigurationOfMagritte';
						versionString: #stable;
						repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				project: 'Phriak'
					with: [ spec
						className: 'ConfigurationOfPhriak';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/gokr/Phriak/main' ].
			spec
				package: 'Toothpick';
				package: 'ToothpickSyslog'
					with: [ spec requires: #('Toothpick') ];
				package: 'ToothpickSeaside'
					with: [ spec requires: #('Seaside3' 'Magritte' 'Toothpick') ];
				package: 'ToothpickRiak'
					with: [ spec requires: #('Phriak' 'Toothpick') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('Toothpick');
				group: 'Seaside' with: #('ToothpickSeaside');
				group: 'Syslog' with: #('ToothpickSyslog');
				group: 'Riak-Backend' with: #('ToothpickRiak') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'ToothpickGemstone-Core'
					with: [ spec requires: #('Toothpick') ];
				package: 'ToothpickSyslog'
					with: [ spec requires: #('ToothpickGemstone-Core') ];
				package: 'ToothpickSeaside'
					with: [ spec requires: #('Seaside3' 'Magritte' 'ToothpickGemstone-Core') ];
				package: 'ToothpickRiak'
					with: [ spec requires: #('Phriak' 'ToothpickGemstone-Core') ].
			spec group: 'Core' with: #('ToothpickGemstone-Core') ]