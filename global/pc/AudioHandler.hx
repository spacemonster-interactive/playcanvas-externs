package global.pc;

/**
	Resource handler used for loading {@link Sound} resources.
**/
@:native("pc.AudioHandler") extern class AudioHandler {
	/**
		Create a new AudioHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var manager : SoundManager;
	var maxRetries : Float;
	function _isSupported(url:Dynamic):Bool;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	/**
		Loads an audio asset using an AudioContext by URL and calls success or error with the
		created resource or error respectively.
	**/
	private var _createSound : Dynamic;
	static var prototype : AudioHandler;
}