package playcanvas;

/**
	A class responsible for creation and caching of required shaders.
	There is a two level cache. The first level generates the shader based on the provided options.
	The second level processes this generated shader using processing options - in most cases
	modifies it to support uniform buffers.
**/
@:jsRequire("playcanvas", "ProgramLibrary") extern class ProgramLibrary {
	function new(device:Dynamic, standardMaterial:Dynamic);
	/**
		A cache of shaders processed using processing options.
	**/
	var processedCache : js.lib.Map<String, Shader>;
	/**
		A cache of shader definitions before processing.
	**/
	var definitionsCache : js.lib.Map<String, Dynamic>;
	var _device : Dynamic;
	var _generators : { };
	var _isClearingCache : Bool;
	var _precached : Bool;
	var _programsCollection : Array<Dynamic>;
	var _defaultStdMatOption : StandardMaterialOptions;
	var _defaultStdMatOptionMin : StandardMaterialOptions;
	function destroy():Void;
	function register(name:Dynamic, generator:Dynamic):Void;
	function unregister(name:Dynamic):Void;
	function isRegistered(name:Dynamic):Bool;
	function generateShaderDefinition(generator:Dynamic, name:Dynamic, key:Dynamic, options:Dynamic):Dynamic;
	function getCachedShader(key:Dynamic):Shader;
	function setCachedShader(key:Dynamic, shader:Dynamic):Void;
	function getProgram(name:Dynamic, options:Dynamic, processingOptions:Dynamic):Shader;
	function storeNewProgram(name:Dynamic, options:Dynamic):Void;
	function dumpPrograms():Void;
	function clearCache():Void;
	/**
		Remove shader from the cache. This function does not destroy it, that is the responsibility
		of the caller.
	**/
	function removeFromCache(shader:Shader):Void;
	function _getDefaultStdMatOptions(pass:Dynamic):StandardMaterialOptions;
	function precompile(cache:Dynamic):Void;
	static var prototype : ProgramLibrary;
}