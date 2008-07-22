convenience
newDebugEventLevel: lvl message: message 
	^(self new)
		category: #debug;
		timeStamp: self timestampClass now;
		level: lvl;
		message: message;
		yourself
			