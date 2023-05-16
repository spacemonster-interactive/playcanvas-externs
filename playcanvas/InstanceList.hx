package playcanvas;

@jsInaccessible extern class InstanceList {
	function new();
	var opaqueMeshInstances : Array<Dynamic>;
	var transparentMeshInstances : Array<Dynamic>;
	var shadowCasters : Array<Dynamic>;
	var visibleOpaque : Array<Dynamic>;
	var visibleTransparent : Array<Dynamic>;
	function prepare(index:Dynamic):Void;
	function delete(index:Dynamic):Void;
	static var prototype : InstanceList;
}