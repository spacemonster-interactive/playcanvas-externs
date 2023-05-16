package global.pc;

/**
	Load resource data, potentially from remote sources. Caches resource on load to prevent multiple
	requests. Add ResourceHandlers to handle different types of resources.
**/
@:native("pc.ResourceLoader") extern class ResourceLoader {
	/**
		Create a new ResourceLoader instance.
	**/
	function new(app:AppBase);
	var _handlers : { };
	var _requests : { };
	var _cache : { };
	var _app : AppBase;
	/**
		Add a {@link ResourceHandler} for a resource type. Handler should support at least `load()`
		and `open()`. Handlers can optionally support patch(asset, assets) to handle dependencies on
		other assets.
	**/
	function addHandler(type:String, handler:ResourceHandler):Void;
	/**
		Remove a {@link ResourceHandler} for a resource type.
	**/
	function removeHandler(type:String):Void;
	/**
		Get a {@link ResourceHandler} for a resource type.
	**/
	function getHandler(type:String):ResourceHandler;
	/**
		Make a request for a resource from a remote URL. Parse the returned data using the handler
		for the specified type. When loaded and parsed, use the callback to return an instance of
		the resource.
	**/
	function load(url:String, type:String, callback:ResourceLoaderCallback, ?asset:Asset):Void;
	function _loadNull(handler:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function _onSuccess(key:Dynamic, result:Dynamic, extra:Dynamic):Void;
	function _onFailure(key:Dynamic, err:Dynamic):Void;
	/**
		Convert raw resource data into a resource instance. E.g. Take 3D model format JSON and
		return a {@link Model}.
	**/
	function open(type:String, data:Dynamic):Dynamic;
	/**
		Perform any operations on a resource, that requires a dependency on its asset data or any
		other asset data.
	**/
	function patch(asset:Asset, assets:AssetRegistry):Void;
	/**
		Remove resource from cache.
	**/
	function clearCache(url:String, type:String):Void;
	/**
		Check cache for resource from a URL. If present, return the cached value.
	**/
	function getFromCache(url:String, type:String):Dynamic;
	/**
		Enables retrying of failed requests when loading assets.
	**/
	function enableRetry(?maxRetries:Float):Void;
	/**
		Disables retrying of failed requests when loading assets.
	**/
	function disableRetry():Void;
	/**
		Destroys the resource loader.
	**/
	function destroy():Void;
	static var prototype : ResourceLoader;
}