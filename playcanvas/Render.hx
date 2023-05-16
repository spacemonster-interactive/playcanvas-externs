package playcanvas;

/**
	A render contains an array of meshes that are referenced by a single hierarchy node in a GLB
	model, and are accessible using {@link ContainerResource#renders} property. The render is the
	resource of a Render Asset.
**/
@jsInaccessible extern class Render extends EventHandler {
	/**
		Meshes are reference counted, and this class owns the references and is responsible for
		releasing the meshes when they are no longer referenced.
	**/
	private var _meshes : Dynamic;
	/**
		The meshes that the render contains.
	**/
	var meshes : Array<Mesh>;
	function destroy():Void;
	function decRefMeshes():Void;
	function incRefMeshes():Void;
	static var prototype : Render;
}