as yet unclassified
renderContentOn: html
	html
		div: [ 
			html text: logger name.
			html text: ' '.
			logger isLogging
				ifTrue: [ self render: #stopLogging called: 'on' on: html ]
				ifFalse: [ self render: #startLogging called: 'off' on: html ] ]