adding
flush
	"Flush the buffered output to the display."

	buffer position == 0 ifFalse: [
		mutex critical: [
			self stream 
				nextPutAll: buffer contents; 
				flush; 
				close.
			buffer reset]]