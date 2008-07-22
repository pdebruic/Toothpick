testing
assert: expected equals: actual

	expected = actual ifFalse: [
		| size stream |
		size := expected size min: actual size.
		stream := WriteStream on: String new.
		1 to: size do: [ :index | | char |
			((char := expected at: index) = (actual at: index)) 
				ifTrue: [stream nextPut: char]
				ifFalse: [^stream contents inspect]]]
			