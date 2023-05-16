package global.pc;

/**
	Used to load a group of assets and fires a callback when all assets are loaded.
	
	```javascript
	const assets = [
	     new Asset('model', 'container', { url: `http://example.com/asset.glb` }),
	     new Asset('styling', 'css', { url: `http://example.com/asset.css` })
	];
	const assetListLoader = new AssetListLoader(assets, app.assets);
	assetListLoader.load((err, failed) => {
	     if (err) {
	         console.error(`${failed.length} assets failed to load`);
	     } else {
	         console.log(`${assets.length} assets loaded`);
	    }
	});
	```
**/
@:native("pc.AssetListLoader") extern class AssetListLoader extends EventHandler {
	/**
		Create a new AssetListLoader using a list of assets to load and the asset registry used to load and manage them.
	**/
	function new(assetList:ts.AnyOf2<Array<Float>, Array<Asset>>, assetRegistry:AssetRegistry);
	var _assets : js.lib.Set<Dynamic>;
	var _loadingAssets : js.lib.Set<Dynamic>;
	var _waitingAssets : js.lib.Set<Dynamic>;
	var _registry : AssetRegistry;
	var _loading : Bool;
	var _loaded : Bool;
	var _failed : Array<Dynamic>;
	/**
		Removes all references to this asset list loader.
	**/
	function destroy():Void;
	function _assetHasDependencies(asset:Dynamic):Dynamic;
	/**
		Start loading asset list, call done() when all assets have loaded or failed to load.
	**/
	function load(done:haxe.Constraints.Function, ?scope:Dynamic):Void;
	var _callback : haxe.Constraints.Function;
	var _scope : Dynamic;
	/**
		Sets a callback which will be called when all assets in the list have been loaded.
	**/
	function ready(done:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function _loadingComplete():Void;
	function _onLoad(asset:Dynamic):Void;
	function _onError(err:Dynamic, asset:Dynamic):Void;
	function _onAddAsset(asset:Dynamic):Void;
	function _waitForAsset(assetId:Dynamic):Void;
	static var prototype : AssetListLoader;
}