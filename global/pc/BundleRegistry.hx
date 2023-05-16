package global.pc;

/**
	Keeps track of which assets are in bundles and loads files from bundles.
**/
@:native("pc.BundleRegistry") extern class BundleRegistry {
	/**
		Create a new BundleRegistry instance.
	**/
	function new(assets:AssetRegistry);
	var _assets : AssetRegistry;
	var _bundleAssets : { };
	var _assetsInBundles : { };
	var _urlsInBundles : { };
	var _fileRequests : { };
	function _onAssetAdded(asset:Dynamic):Void;
	function _registerBundleEventListeners(bundleAssetId:Dynamic):Void;
	function _unregisterBundleEventListeners(bundleAssetId:Dynamic):Void;
	function _indexAssetInBundle(assetId:Dynamic, bundleAsset:Dynamic):Void;
	function _indexAssetFileUrls(asset:Dynamic):Void;
	function _getAssetFileUrls(asset:Dynamic):Array<Dynamic>;
	function _normalizeUrl(url:Dynamic):Dynamic;
	function _onAssetRemoved(asset:Dynamic):Void;
	function _onBundleLoaded(bundleAsset:Dynamic):Void;
	function _onBundleError(err:Dynamic, bundleAsset:Dynamic):Void;
	function _findLoadedOrLoadingBundleForUrl(url:Dynamic):Dynamic;
	/**
		Lists all of the available bundles that reference the specified asset id.
	**/
	function listBundlesForAsset(asset:Asset):Array<Asset>;
	/**
		Lists all of the available bundles. This includes bundles that are not loaded.
	**/
	function list():Array<Asset>;
	/**
		Returns true if there is a bundle that contains the specified URL.
	**/
	function hasUrl(url:String):Bool;
	/**
		Returns true if there is a bundle that contains the specified URL and that bundle is either
		loaded or currently being loaded.
	**/
	function canLoadUrl(url:String):Bool;
	/**
		Loads the specified file URL from a bundle that is either loaded or currently being loaded.
	**/
	function loadUrl(url:String, callback:haxe.Constraints.Function):Void;
	/**
		Destroys the registry, and releases its resources. Does not unload bundle assets as these
		should be unloaded by the {@link AssetRegistry}.
	**/
	function destroy():Void;
	static var prototype : BundleRegistry;
}