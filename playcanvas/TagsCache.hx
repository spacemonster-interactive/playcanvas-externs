package playcanvas;

@jsInaccessible extern class TagsCache {
	function new(?key:Dynamic);
	var _index : { };
	var _key : Dynamic;
	function addItem(item:Dynamic):Void;
	function removeItem(item:Dynamic):Void;
	function add(tag:Dynamic, item:Dynamic):Void;
	function remove(tag:Dynamic, item:Dynamic):Void;
	function find(args:Dynamic):Array<Dynamic>;
	static var prototype : TagsCache;
}