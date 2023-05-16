package playcanvas;

/**
	Stores the information required by {@link AnimEvaluator} for updating a target value.
**/
@:jsRequire("playcanvas", "AnimTarget") extern class AnimTarget {
	/**
		Create a new AnimTarget instance.
	**/
	function new(func:AnimSetter, type:String, components:Float, targetPath:String);
	var _set : Dynamic;
	var _get : Dynamic;
	var _type : String;
	var _components : Float;
	var _targetPath : String;
	var _isTransform : Bool;
	final set : Dynamic;
	final get : Dynamic;
	final type : String;
	final components : Float;
	final targetPath : String;
	final isTransform : Bool;
	static var prototype : AnimTarget;
}