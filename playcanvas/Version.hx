package playcanvas;

@jsInaccessible extern class Version {
	function new();
	var globalId : Float;
	var revision : Float;
	function equals(other:Dynamic):Bool;
	function copy(other:Dynamic):Void;
	function reset():Void;
	static var prototype : Version;
}