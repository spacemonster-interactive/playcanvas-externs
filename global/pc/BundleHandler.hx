package global.pc;

/**
	Loads Bundle Assets.
**/
@:native("pc.BundleHandler") extern class BundleHandler {
	/**
		Create a new BundleHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _assets : AssetRegistry;
	var _worker : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function _untar(response:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Bundle;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : BundleHandler;
}