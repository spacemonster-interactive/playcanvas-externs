package global.pc;

/**
	A ordered list-type data structure that can provide item look up by key and can also return a list.
**/
@:native("pc.IndexedList") extern class IndexedList {
	function new();
	private var _list : Dynamic;
	private var _index : Dynamic;
	/**
		Add a new item into the list with a index key.
	**/
	function push(key:String, item:Dynamic):Void;
	/**
		Test whether a key has been added to the index.
	**/
	function has(key:String):Bool;
	/**
		Return the item indexed by a key.
	**/
	function get(key:String):Null<Dynamic>;
	/**
		Remove the item indexed by key from the list.
	**/
	function remove(key:String):Bool;
	/**
		Returns the list of items.
	**/
	function list():Array<Dynamic>;
	/**
		Remove all items from the list.
	**/
	function clear():Void;
	static var prototype : IndexedList;
}