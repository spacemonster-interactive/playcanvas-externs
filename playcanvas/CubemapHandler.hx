package playcanvas;

/**
	Resource handler used for loading cubemap {@link Texture} resources.
**/
@:jsRequire("playcanvas", "CubemapHandler") extern class CubemapHandler {
	/**
		Create a new CubemapHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _device : GraphicsDevice;
	var _registry : AssetRegistry;
	var _loader : ResourceLoader;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, asset:Dynamic):Dynamic;
	function patch(asset:Dynamic, registry:Dynamic):Void;
	function getAssetIds(cubemapAsset:Dynamic):Array<Dynamic>;
	function compareAssetIds(assetIdA:Dynamic, assetIdB:Dynamic):Bool;
	function update(cubemapAsset:Dynamic, assetIds:Dynamic, assets:Dynamic):Void;
	function cmpArrays(arr1:Dynamic, arr2:Dynamic):Bool;
	function resolveId(value:Dynamic):Dynamic;
	function loadAssets(cubemapAsset:Dynamic, callback:Dynamic):Void;
	static var prototype : CubemapHandler;
}