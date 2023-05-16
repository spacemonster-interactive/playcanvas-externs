package playcanvas;

/**
	A animation node has a name and contains an array of keyframes.
**/
@:jsRequire("playcanvas", "Node") extern class Node {
	function new();
	var _name : String;
	var _keys : Array<Dynamic>;
	static var prototype : Node;
}