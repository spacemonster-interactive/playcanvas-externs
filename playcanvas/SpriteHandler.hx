package playcanvas;

/**
	Resource handler used for loading {@link Sprite} resources.
**/
@:jsRequire("playcanvas", "SpriteHandler") extern class SpriteHandler {
	/**
		Create a new SpriteHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _assets : AssetRegistry;
	var _device : GraphicsDevice;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Sprite;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	function _updateAtlas(asset:Dynamic):Void;
	function _onAssetChange(asset:Dynamic, attribute:Dynamic, value:Dynamic, oldValue:Dynamic):Void;
	static var prototype : SpriteHandler;
}