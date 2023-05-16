package global.pc;

/**
	Holds information about batched mesh instances. Created in {@link BatchManager#create}.
**/
@:native("pc.Batch") extern class Batch {
	/**
		Create a new Batch instance.
	**/
	function new(meshInstances:Array<MeshInstance>, dynamic_:Bool, batchGroupId:Float);
	private var _aabb : Dynamic;
	/**
		An array of original mesh instances, from which this batch was generated.
	**/
	var origMeshInstances : Array<MeshInstance>;
	/**
		A single combined mesh instance, the result of batching.
	**/
	var meshInstance : MeshInstance;
	/**
		Whether this batch is dynamic (supports transforming mesh instances at runtime).
	**/
	@:native("dynamic")
	var dynamic_ : Bool;
	/**
		Link this batch to a specific batch group. This is done automatically with default batches.
	**/
	var batchGroupId : Float;
	function destroy(scene:Dynamic, layers:Dynamic):Void;
	function addToLayers(scene:Dynamic, layers:Dynamic):Void;
	function removeFromLayers(scene:Dynamic, layers:Dynamic):Void;
	function updateBoundingBox():Void;
	static var prototype : Batch;
}