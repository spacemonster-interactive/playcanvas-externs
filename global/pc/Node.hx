package global.pc;

/**
	A animation node has a name and contains an array of keyframes.
**/
@:native("pc.Node") extern class Node {
	function new();
	var _name : String;
	var _keys : Array<Dynamic>;
	static var prototype : Node;
}