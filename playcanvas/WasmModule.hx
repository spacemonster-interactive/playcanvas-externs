package playcanvas;

/**
	A pure static utility class which supports immediate and lazy loading of wasm modules.
**/
@:jsRequire("playcanvas", "WasmModule") extern class WasmModule {
	function new();
	static var prototype : WasmModule;
	/**
		Set a wasm module's configuration.
	**/
	static function setConfig(moduleName:String, ?config:{ @:optional var glueUrl : String; @:optional var wasmUrl : String; @:optional var fallbackUrl : String; @:optional var numWorkers : Float; @:optional dynamic function errorHandler(error:String):Dynamic; }):Void;
	/**
		Get a wasm module's configuration.
	**/
	static function getConfig(moduleName:String):Null<Dynamic>;
	/**
		Get a wasm module instance. The instance will be created if necessary and returned
		in the second parameter to callback.
	**/
	static function getInstance(moduleName:String, callback:ModuleInstanceCallback):Void;
}