as yet unclassified
renderContentOn: html
	html
		div: [ 
			html paragraph: 'Send log message to Toothpick to test logging configuration.'.
			html select
				list: Logger allSubclasses;
				on: #selected of: self.
			html submitButton
				callback: [ self answer: self selected ];
				with: 'Add' ]