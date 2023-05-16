package playcanvas;

/**
	Glues many mesh instances into a single one for better performance.
**/
@:jsRequire("playcanvas", "BatchManager") extern class BatchManager {
	/**
		Create a new BatchManager instance.
	**/
	function new(device:GraphicsDevice, root:Entity, scene:Scene);
	var device : GraphicsDevice;
	var rootNode : Entity;
	var scene : Scene;
	var _init : Bool;
	var _batchGroups : { };
	var _batchGroupCounter : Float;
	var _batchList : Array<Dynamic>;
	var _dirtyGroups : Array<Dynamic>;
	var _stats : {
		var createTime : Float;
		var updateLastFrameTime : Float;
	};
	function destroy():Void;
	/**
		Adds new global batch group.
	**/
	function addGroup(name:String, dynamic_:Bool, maxAabbSize:Float, ?id:Float, ?layers:Array<Float>):BatchGroup;
	/**
		Remove global batch group by id. Note, this traverses the entire scene graph and clears the
		batch group id from all components.
	**/
	function removeGroup(id:Float):Void;
	/**
		Mark a specific batch group as dirty. Dirty groups are re-batched before the next frame is
		rendered. Note, re-batching a group is a potentially expensive operation.
	**/
	function markGroupDirty(id:Float):Void;
	/**
		Retrieves a {@link BatchGroup} object with a corresponding name, if it exists, or null
		otherwise.
	**/
	function getGroupByName(name:String):Null<BatchGroup>;
	/**
		Return a list of all {@link Batch} objects that belong to the Batch Group supplied.
	**/
	private var getBatches : Dynamic;
	function _removeModelsFromBatchGroup(node:Dynamic, id:Dynamic):Void;
	function insert(type:Dynamic, groupId:Dynamic, node:Dynamic):Void;
	function remove(type:Dynamic, groupId:Dynamic, node:Dynamic):Void;
	function _extractRender(node:Dynamic, arr:Dynamic, group:Dynamic, groupMeshInstances:Dynamic):Dynamic;
	function _extractModel(node:Dynamic, arr:Dynamic, group:Dynamic, groupMeshInstances:Dynamic):Dynamic;
	function _extractElement(node:Dynamic, arr:Dynamic, group:Dynamic):Void;
	function _collectAndRemoveMeshInstances(groupMeshInstances:Dynamic, groupIds:Dynamic):Void;
	/**
		Destroys all batches and creates new based on scene models. Hides original models. Called by
		engine automatically on app start, and if batchGroupIds on models are changed.
	**/
	function generate(?groupIds:Array<Float>):Void;
	/**
		Takes a list of mesh instances to be batched and sorts them into lists one for each draw
		call. The input list will be split, if:
		
		- Mesh instances use different materials.
		- Mesh instances have different parameters (e.g. lightmaps or static lights).
		- Mesh instances have different shader defines (shadow receiving, being aligned to screen
		space, etc).
		- Too many vertices for a single batch (65535 is maximum).
		- Too many instances for a single batch (hardware-dependent, expect 128 on low-end and 1024
		on high-end).
		- Bounding box of a batch is larger than maxAabbSize in any dimension.
	**/
	function prepare(meshInstances:Array<MeshInstance>, dynamic_:Bool, maxAabbSize:Float, translucent:Bool):Array<Array<MeshInstance>>;
	function collectBatchedMeshData(meshInstances:Dynamic, dynamic_:Dynamic):{
		var streams : { };
		var batchNumVerts : Float;
		var batchNumIndices : Float;
		var material : Dynamic;
	};
	/**
		Takes a mesh instance list that has been prepared by {@link BatchManager#prepare}, and
		returns a {@link Batch} object. This method assumes that all mesh instances provided can be
		rendered in a single draw call.
	**/
	function create(meshInstances:Array<MeshInstance>, dynamic_:Bool, ?batchGroupId:Float):Batch;
	var transformVS : String;
	var skinTexVS : Dynamic;
	var skinConstVS : Dynamic;
	var vertexFormats : { };
	/**
		Updates bounding boxes for all dynamic batches. Called automatically.
	**/
	function updateAll():Void;
	/**
		Clones a batch. This method doesn't rebuild batch geometry, but only creates a new model and
		batch objects, linked to different source mesh instances.
	**/
	function clone(batch:Batch, clonedMeshInstances:Array<MeshInstance>):Batch;
	/**
		Removes the batch model from all layers and destroys it.
	**/
	private var destroyBatch : Dynamic;
	static var prototype : BatchManager;
}