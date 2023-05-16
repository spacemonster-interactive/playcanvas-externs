package global.pc;

/**
	Resource handler used for loading {@link AnimClip} resources.
**/
@:native("pc.AnimClipHandler") extern class AnimClipHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):AnimTrack;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : AnimClipHandler;
}