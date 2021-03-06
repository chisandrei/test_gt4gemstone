*GtGs-Inspector-Pharo-Core
updateChildNodesFor: aListNode
	| updatedChildNodes |
	updatedChildNodes := self 
		executeRemotely: #computeAllChildNodesFor: 
		withArguments: {self gemstoneClient objectSerializer 
			toString:  (aListNode childNodes collect: #selfOop)}.
	aListNode childNodes withIndexDo: [ :aNode :index |
		aNode childNodes: (updatedChildNodes at: index) ].