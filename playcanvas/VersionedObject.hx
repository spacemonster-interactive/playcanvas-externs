package playcanvas;

@jsInaccessible extern class VersionedObject {
	function new();
	var version : Version;
	function increment():Void;
	static var prototype : VersionedObject;
}