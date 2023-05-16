package playcanvas;

@jsInaccessible extern class ImageRenderable {
	function new(entity:Dynamic, mesh:Dynamic, material:Dynamic);
	var _entity : Dynamic;
	var _element : Dynamic;
	var model : Model;
	var node : GraphNode;
	var mesh : Dynamic;
	var meshInstance : MeshInstance;
	var _meshDirty : Bool;
	var unmaskMeshInstance : MeshInstance;
	function destroy():Void;
	function setMesh(mesh:Dynamic):Void;
	function setMask(mask:Dynamic):Void;
	function setMaterial(material:Dynamic):Void;
	function setParameter(name:Dynamic, value:Dynamic):Void;
	function deleteParameter(name:Dynamic):Void;
	function setUnmaskDrawOrder():Void;
	function setDrawOrder(drawOrder:Dynamic):Void;
	function setCull(cull:Dynamic):Void;
	function setScreenSpace(screenSpace:Dynamic):Void;
	function setLayer(layer:Dynamic):Void;
	function forceUpdateAabb(mask:Dynamic):Void;
	function setAabbFunc(fn:Dynamic):Void;
	static var prototype : ImageRenderable;
}