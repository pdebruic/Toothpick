I'm a toothpick logger who sends LogEvents to a Syslog server. I have the following properties:

Property 		Default
hostname 		(Dynamically resolved)
server 			(127.0.0.1)
port 				(514/udp)

As the toothpick category does not comply with syslog facilities I provide a mapping for it:
unmappedFacility 	(The facility number which is used if no explicit mapping is found. Default is local0/16)
facilityMap  			(A dictionary mapping toothpick category symbols to syslog facility numbers.
							You can use #map:to: to populate the dictionary)
							
I understand the following syslog specific options in config files:

server (the syslog server), port (default is 514/udp), hostname (as sent in the syslog message), map (mapping toothpick categories to syslog facilities) and facility (the default facility if no mapping is found). An example config file entry might be as follows:


[riskcheck]
name=riskcheckLog
type=syslog
format=pattern
pattern=riskcheck: %m
server=localhost
hostname=riskcheck
category=riskcheck
threshold=all
map=riskcheck=16
facility=17