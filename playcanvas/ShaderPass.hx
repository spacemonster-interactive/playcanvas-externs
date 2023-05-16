package playcanvas;

/**
	Class responsible for management of shader passes, associated with a device.
**/
@:jsRequire("playcanvas", "ShaderPass") extern class ShaderPass {
	function new();
	/**
		Allocated shader passes, map of a shader pass name to info.
	**/
	var passesNamed : js.lib.Map<String, ShaderPassInfo>;
	/**
		Allocated shader passes, indexed by their index.
	**/
	var passesIndexed : Array<ShaderPassInfo>;
	/**
		Next available index
	**/
	var nextIndex : Float;
	/**
		Allocates a shader pass with the specified name and options.
	**/
	function allocate(name:String, options:Dynamic):ShaderPassInfo;
	/**
		Return the shader pass info for the specified index.
	**/
	function getByIndex(index:Float):ShaderPassInfo;
	function getByName(name:Dynamic):ShaderPassInfo;
	static var prototype : ShaderPass;
	/**
		Get access to the shader pass instance for the specified device.
	**/
	static function get(device:Dynamic):ShaderPass;
}