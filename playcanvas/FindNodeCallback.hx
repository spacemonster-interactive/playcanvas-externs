package playcanvas;

/**
	Callback used by {@link GraphNodefind } and {@link GraphNodefindOne } to search through a graph
	node and all of its descendants.
**/
typedef FindNodeCallback = (node:GraphNode) -> Bool;