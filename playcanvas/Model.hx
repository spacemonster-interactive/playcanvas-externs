package playcanvas;

/**
	A model is a graphical object that can be added to or removed from a scene. It contains a
	hierarchy and any number of mesh instances.
**/
@:jsRequire("playcanvas", "Model") extern class Model {
	function new();
	/**
		The root node of the model's graph node hierarchy.
	**/
	var graph : Null<GraphNode>;
	/**
		An array of MeshInstances contained in this model.
	**/
	var meshInstances : Array<MeshInstance>;
	/**
		An array of SkinInstances contained in this model.
	**/
	var skinInstances : Array<SkinInstance>;
	/**
		An array of MorphInstances contained in this model.
	**/
	var morphInstances : Array<MorphInstance>;
	var cameras : Array<Dynamic>;
	var lights : Array<Dynamic>;
	var _shadersVersion : Float;
	var _immutable : Bool;
	function getGraph():GraphNode;
	function setGraph(graph:Dynamic):Void;
	function getCameras():Array<Dynamic>;
	function setCameras(cameras:Dynamic):Void;
	function getLights():Array<Dynamic>;
	function setLights(lights:Dynamic):Void;
	function getMaterials():Array<Material>;
	/**
		Clones a model. The returned model has a newly created hierarchy and mesh instances, but
		meshes are shared between the clone and the specified model.
	**/
	function clone():Model;
	/**
		Destroys skinning texture and possibly deletes vertex/index buffers of a model. Mesh is
		reference-counted, so buffers are only deleted if all models with referencing mesh instances
		were deleted. That means all in-scene models + the "base" one (asset.resource) which is
		created when the model is parsed. It is recommended to use asset.unload() instead, which
		will also remove the model from the scene.
	**/
	function destroy():Void;
	/**
		Generates the necessary internal data for a model to be renderable as wireframe. Once this
		function has been called, any mesh instance in the model can have its renderStyle property
		set to {@link RENDERSTYLE_WIREFRAME}.
	**/
	function generateWireframe():Void;
	static var prototype : Model;
}