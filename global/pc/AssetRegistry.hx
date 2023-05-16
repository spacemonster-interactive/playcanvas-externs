package global.pc;

/**
	Container for all assets that are available to this application. Note that PlayCanvas scripts
	are provided with an AssetRegistry instance as `app.assets`.
**/
@:native("pc.AssetRegistry") extern class AssetRegistry extends EventHandler {
	/**
		Create an instance of an AssetRegistry.
	**/
	function new(loader:ResourceLoader);
	var _loader : ResourceLoader;
	var _assets : Array<Dynamic>;
	var _cache : { };
	var _names : { };
	var _tags : playcanvas.TagsCache;
	var _urls : { };
	/**
		A URL prefix that will be added to all asset loading requests.
	**/
	var prefix : String;
	/**
		Create a filtered list of assets from the registry.
	**/
	function list(filters:Dynamic):Array<Asset>;
	/**
		Add an asset to the registry.
	**/
	function add(asset:Asset):Void;
	/**
		Remove an asset from the registry.
	**/
	function remove(asset:Asset):Bool;
	/**
		Retrieve an asset from the registry by its id field.
	**/
	function get(id:Float):Asset;
	/**
		Retrieve an asset from the registry by its file's URL field.
	**/
	function getByUrl(url:String):Asset;
	/**
		Load the asset's file from a remote source. Listen for "load" events on the asset to find
		out when it is loaded.
	**/
	function load(asset:Asset):Void;
	/**
		Use this to load and create an asset if you don't have assets created. Usually you would
		only use this if you are not integrated with the PlayCanvas Editor.
	**/
	function loadFromUrl(url:String, type:String, callback:LoadAssetCallback):Void;
	/**
		Use this to load and create an asset when both the URL and filename are required. For
		example, use this function when loading BLOB assets, where the URL does not adequately
		identify the file.
	**/
	function loadFromUrlAndFilename(url:String, filename:String, type:String, callback:LoadAssetCallback):Void;
	var loadFromUrlError : Dynamic;
	function _loadModel(modelAsset:Dynamic, continuation:Dynamic):Void;
	function _loadMaterials(modelAsset:Dynamic, mapping:Dynamic, callback:Dynamic):Void;
	function _loadTextures(materialAsset:Dynamic, callback:Dynamic):Void;
	/**
		Return all Assets with the specified name and type found in the registry.
	**/
	function findAll(name:String, ?type:String):Array<Asset>;
	function _onTagAdd(tag:Dynamic, asset:Dynamic):Void;
	function _onTagRemove(tag:Dynamic, asset:Dynamic):Void;
	/**
		Return all Assets that satisfy the search query. Query can be simply a string, or comma
		separated strings, to have inclusive results of assets that match at least one query. A
		query that consists of an array of tags can be used to match assets that have each tag of
		array.
	**/
	function findByTag(args:haxe.extern.Rest<Dynamic>):Array<Asset>;
	/**
		Return all Assets that satisfy a filter callback.
	**/
	function filter(callback:FilterAssetCallback):Array<Asset>;
	/**
		Return the first Asset with the specified name and type found in the registry.
	**/
	function find(name:String, ?type:String):Null<Asset>;
	static var prototype : AssetRegistry;
}