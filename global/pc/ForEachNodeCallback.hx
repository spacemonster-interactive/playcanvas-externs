package global.pc;

/**
	Callback used by {@link GraphNodeforEach } to iterate through a graph node and all of its
	descendants.
**/
typedef ForEachNodeCallback = (node:GraphNode) -> Dynamic;