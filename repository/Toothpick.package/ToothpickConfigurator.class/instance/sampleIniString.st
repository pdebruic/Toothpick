configuring
sampleIniString

	^ '
[LoggerName]
name=TestFileLog
type=file
category=debug
threshold=info
format=simple
filename=foo.log

[LoggerName2]
name=TestXMLFileLog
type=file
category=debug
threshold=error
format=xml
filename=foo.xml
'
			