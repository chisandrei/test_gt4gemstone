initialization
forOop: anOop

	targetObject := Object _objectForOop: anOop.
	self title: targetObject gtGsInspectorName.
	self updateTopezServer.
	self updatePresentations.