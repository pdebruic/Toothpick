parsing
tokenDictionary

	^Dictionary new
		at: $c put: #category:format:logger:on:;
		at: $d put: #date:format:logger:on:;
		at: $l put: #loggerName:format:logger:on:;
		at: $m put: #message:format:logger:on:;
		at: $p put: #priority:format:logger:on:;
		at: $x put: #context:format:logger:on:;
	yourself
			