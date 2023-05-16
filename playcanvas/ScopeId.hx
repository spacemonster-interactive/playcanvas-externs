package playcanvas;

/**
	The scope for a variable.
**/
@:jsRequire("playcanvas", "ScopeId") extern class ScopeId {
	/**
		Create a new ScopeId instance.
	**/
	function new(name:String);
	/**
		The variable name.
	**/
	var name : String;
	var value : Dynamic;
	var versionObject : VersionedObject;
	function toJSON(key:Dynamic):Dynamic;
	/**
		Set variable value.
	**/
	function setValue(value:Dynamic):Void;
	/**
		Get variable value.
	**/
	function getValue():Dynamic;
	static var prototype : ScopeId;
}