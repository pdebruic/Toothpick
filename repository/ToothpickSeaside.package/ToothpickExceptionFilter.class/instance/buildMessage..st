as yet unclassified
buildMessage: anException
	| stream frames |
	stream := WriteStream on: String new.
	stream nextPutAll: anException class asString.
	stream nextPutAll: ' - '.
	stream nextPutAll: anException messageText.
	stream crlf.
	frames := self extractFrames: anException.
	stream
		nextPutAll: frames first asString;
		crlf.
	frames
		do: [ :f | 
			f outerContext
				ifNotNilDo: [ :nonNilContext | 
					stream
						nextPutAll: '    ' , nonNilContext asString;
						crlf ] ].
	^ stream contents