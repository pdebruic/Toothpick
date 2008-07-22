parsing
loadFromFile
	"Load the text units from the config file"

	| aStream |
	[aStream := FileStream fileNamed: fileName]
		on: Error 
		do: [:sig | sig return: (self fileNotFoundErrorString, fileName)].
	[self parseTextFileStream: aStream.
	aStream close] 
		on: Error 
		do: [:sig | sig return: (self fileNotLoadableErrorString, fileName)]
			