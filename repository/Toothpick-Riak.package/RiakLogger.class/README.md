RiakLogger based on the FileLogger but just PUTs using ZincHTTPComponents to the Riak bucket at the key of your choice

Instance Variables:
	session 		<RiakSession> This communicates with Riak  See the #exampleRiakLogger on the class side.
	bucketName	<String> The name of the bucket you want to store into
	key 			<String> The name of the key in the bucket you want to store into
	jsonDictionary 	<Dictionary> The data you want to log into the bucket at the key
		
	
The #key method in this class currently generates a random key and should be changed to something more robust for production work.



