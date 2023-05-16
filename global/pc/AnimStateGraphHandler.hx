package global.pc;

/**
	Resource handler used for loading {@link AnimStateGraph} resources.
**/
@:native("pc.AnimStateGraphHandler") extern class AnimStateGraphHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):AnimStateGraph;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : AnimStateGraphHandler;
}