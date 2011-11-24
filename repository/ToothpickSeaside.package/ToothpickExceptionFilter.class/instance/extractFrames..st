as yet unclassified
extractFrames: anException 
	| context frames|
	context := anException signalerContext.
	frames := OrderedCollection new.
	[ context isNil ] whileFalse: [
		frames add: context.
		context := context sender ].
	^ frames.