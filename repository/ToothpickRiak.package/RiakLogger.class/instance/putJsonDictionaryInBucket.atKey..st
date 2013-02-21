accessing
putJsonDictionaryInBucket: aRiakBucketName atKey: aKey
	(self session bucketNamed: aRiakBucketName) newObject
		data: self jsonDictionary asJsonString;
		key: aKey;
		contentType: 'application/json';
		store