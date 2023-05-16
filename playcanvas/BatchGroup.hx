package playcanvas;

/**
	Holds mesh batching settings and a unique id. Created via {@link BatchManager#addGroup}.
**/
@:jsRequire("playcanvas", "BatchGroup") extern class BatchGroup {
	/**
		Create a new BatchGroup instance.
	**/
	function new(id:Float, name:String, dynamic_:Bool, maxAabbSize:Float, ?layers:Array<Float>);
	private var _ui : Dynamic;
	private var _sprite : Dynamic;
	private var _obj : Dynamic;
	/**
		Unique id. Can be assigned to model, render and element components.
	**/
	var id : Float;
	/**
		Name of the group.
	**/
	var name : String;
	/**
		Whether objects within this batch group should support transforming at runtime.
	**/
	@:native("dynamic")
	var dynamic_ : Bool;
	/**
		Maximum size of any dimension of a bounding box around batched objects.
		{@link BatchManager#prepare} will split objects into local groups based on this size.
	**/
	var maxAabbSize : Float;
	/**
		Layer ID array. Default is [{@link LAYERID_WORLD}]. The whole batch group will belong to
		these layers. Layers of source models will be ignored.
	**/
	var layers : Array<Float>;
	static var prototype : BatchGroup;
	static var MODEL : String;
	static var ELEMENT : String;
	static var SPRITE : String;
	static var RENDER : String;
}