setup
sampleIniString

	^ '[FirstLogger]
name=TestFileLog
type=file
category=debug
threshold=info
format=simple
filename=foo.log

[SecondLogger]
name=TestXMLFileLog
type=file
category=debug
threshold=error
format=xml
tsformat=iso
filename=foo.xml

[ThirdLogger]
name=TestThirdFileLog
type=file
category=debug
threshold=error
format=pattern
pattern=%p - %m
filename=foo3.xml

[FourthLogger]
name=TestFourthFileLog
type=file
category=debug
threshold=error
format=timestamp
filename=timestamp.txt
policy=composite
filter1=perf.=debug
filter2=debug.info
filter3=ui.!error
'