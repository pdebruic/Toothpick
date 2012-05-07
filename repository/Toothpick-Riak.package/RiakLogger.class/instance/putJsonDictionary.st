accessing
putJsonDictionary
	self bucket newObject
		data: self jsonDictionary asJson;
		key: self key;
		contentType: 'application/json';
		store