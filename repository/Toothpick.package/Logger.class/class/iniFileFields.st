*Toothpick-Configuration
iniFileFields
"The following fields may be defined in a toothpick.ini chunk. Check my subclasses for additional fields which they support

		name - a String giving the name of the logger
		policy - the logging policy to use. 
		format - the logging format to use. 
"
	^#('name' 'policy' 'format') asSet
			