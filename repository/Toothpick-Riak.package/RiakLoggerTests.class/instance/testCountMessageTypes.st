as yet unclassified
testCountMessageTypes
	| result event key |
	" for some reason this test passes the first time and fails after that"
	3
		timesRepeat: [ 
			event := self infoEvent.
			key := self randomKey.
			event key: key.
			self logger
				startLogging;
				addEvent: event;
				stopLogging.
			self keysAndLogs at: key copy put: self logger jsonDictionary copy ].
	2
		timesRepeat: [ 
			event := self errorEvent.
			key := self randomKey.
			event key: key.
			self logger
				startLogging;
				addEvent: event;
				stopLogging.
			self keysAndLogs at: key copy put: self logger jsonDictionary copy ].
	result := self logger session mapReduce
		bucket: self bucketNameForTests;
		map:
				'function(value, keyData, arg){
					var data = Riak.mapValuesJson(value)[0];
					var result = {};
					result[data.levelString] =1;
					return [result];
				}';
		reduce:
				'function (values) {
    					var result = {};
				    	for (var value in values) {
    						for (var level in values[value]) {
					            if (level in result) {result[level] += values[value][level];}
     							else {result[level] = values[value][level];}
     						}
    					}
					return [result];
				}';
		run.
	self assert: (result first at: 'ERROR') equals: 2.
	self assert: (result first at: 'INFO') equals: 3