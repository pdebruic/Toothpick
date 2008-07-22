*Toothpick-Configuration
iniFileFields
"The following fields may be defined in a toothpick.ini chunk. Check my subclasses for additional fields which they support

		fileName - a String giving the filename the logger writes to
"
	^super iniFileFields add: 'fileName'; yourself
			