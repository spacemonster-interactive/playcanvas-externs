package playcanvas;

/**
	This interface is used by {@link AnimEvaluator} to resolve unique animation target path strings
	into instances of {@link AnimTarget}.
**/
@:jsRequire("playcanvas", "AnimBinder") extern class AnimBinder {
	function new();
	/**
		Resolve the provided target path and return an instance of {@link AnimTarget} which will
		handle setting the value, or return null if no such target exists.
	**/
	function resolve(path:String):Null<AnimTarget>;
	/**
		Called when the {@link AnimEvaluator} no longer has a curve driving the given key.
	**/
	function unresolve(path:String):Void;
	/**
		Called by {@link AnimEvaluator} once a frame after animation updates are done.
	**/
	function update(deltaTime:Float):Void;
	static var prototype : AnimBinder;
	static function joinPath(pathSegments:Dynamic, character:Dynamic):Dynamic;
	static function splitPath(path:Dynamic, character:Dynamic):Array<String>;
	/**
		Converts a locator array into its string version.
	**/
	static function encode(entityPath:ts.AnyOf2<String, Array<String>>, component:String, propertyPath:ts.AnyOf2<String, Array<String>>):String;
}