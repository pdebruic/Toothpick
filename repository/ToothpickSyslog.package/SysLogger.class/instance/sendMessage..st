sending
sendMessage: aString 
	| message serverAddr |
	message := aString size > 1024 
		ifTrue: 
			[ aString 
				copyFrom: 1
				to: 1024 ]
		ifFalse: [ aString ].
	serverAddr := NetNameResolver 
		addressForName: self server
		timeout: 10.
	
	[ socket 
		sendData: message
		toHost: serverAddr
		port: self port ] 
		on: Error
		do: [ :ex |  ]