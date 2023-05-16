package global.pc;

/**
	Resource handler used for loading {@link Animation} resources.
**/
@:native("pc.AnimationHandler") extern class AnimationHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var device : Dynamic;
	var assets : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, asset:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	function _parseAnimationV3(data:Dynamic):Animation;
	function _parseAnimationV4(data:Dynamic):Animation;
	static var prototype : AnimationHandler;
}