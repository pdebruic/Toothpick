as yet unclassified
renderContentOn: html
	html
		table: [ 
			html
				tableRow: [ 
					html
						tableHeading: 'level';
						tableHeading: 'category';
						tableHeading: 'message' ].
			html
				tableRow: [ 
					html
						tableData: [ 
							html select
								list: LoggingEvent allLevels;
								on: #loggingLevel of: self ].
					html tableData: [ html textInput on: #loggingCategory of: self ].
					html tableData: [ html textInput on: #message of: self ] ] ].
	html submitButton on: #send of: self