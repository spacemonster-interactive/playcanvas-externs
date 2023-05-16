package playcanvas;

/**
	The scope for variables.
**/
@:jsRequire("playcanvas", "ScopeSpace") extern class ScopeSpace {
	/**
		Create a new ScopeSpace instance.
	**/
	function new(name:String);
	/**
		The scope name.
	**/
	var name : String;
	var variables : js.lib.Map<Dynamic, Dynamic>;
	/**
		Get (or create, if it doesn't already exist) a variable in the scope.
	**/
	function resolve(name:String):ScopeId;
	/**
		Clears value for any uniform with matching value (used to remove deleted textures).
	**/
	function removeValue(value:Dynamic):Void;
	static var prototype : ScopeSpace;
}