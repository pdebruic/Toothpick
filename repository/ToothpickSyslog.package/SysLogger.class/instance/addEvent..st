adding
addEvent: anEvent 
	| message |
	self isLogging ifFalse: [ ^ self ].
	(self policy isInteresting: anEvent) ifFalse: [ ^ self ].
	message := self messageFor: anEvent.
	self sendMessage: message