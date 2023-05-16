package playcanvas;

/**
	An asset record of a file or data resource that can be loaded by the engine. The asset contains
	four important fields:
	
	- `file`: contains the details of a file (filename, url) which contains the resource data, e.g.
	an image file for a texture asset.
	- `data`: contains a JSON blob which contains either the resource data for the asset (e.g.
	material data) or additional data for the file (e.g. material mappings for a model).
	- `options`: contains a JSON blob with handler-specific load options.
	- `resource`: contains the final resource when it is loaded. (e.g. a {@link StandardMaterial} or
	a {@link Texture}).
	
	See the {@link AssetRegistry} for details on loading resources from assets.
**/
@:jsRequire("playcanvas", "Asset") extern class Asset extends EventHandler {
	/**
		Create a new Asset record. Generally, Assets are created in the loading process and you
		won't need to create them by hand.
	**/
	function new(name:String, type:String, ?file:{ @:optional var url : String; @:optional var filename : String; @:optional var size : Float; @:optional var hash : String; @:optional var contents : js.lib.ArrayBuffer; }, ?data:ts.AnyOf2<String, Dynamic>, ?options:{ @:optional var crossOrigin : String; });
	var _id : Float;
	/**
		The name of the asset.
	**/
	var name : String;
	/**
		The type of the asset. One of ["animation", "audio", "binary", "container", "cubemap",
		"css", "font", "json", "html", "material", "model", "render", "script", "shader", "sprite",
		"template", "text", "texture", "textureatlas"]
	**/
	var type : String;
	/**
		Asset tags. Enables finding of assets by tags using the {@link AssetRegistry#findByTag} method.
	**/
	var tags : Tags;
	var _preload : Bool;
	var _file : Dynamic;
	var _data : Dynamic;
	/**
		Optional JSON data that contains the asset handler options.
	**/
	var options : Dynamic;
	var _resources : Array<Dynamic>;
	var _i18n : { };
	/**
		True if the asset has finished attempting to load the resource. It is not guaranteed
		that the resources are available as there could have been a network error.
	**/
	var loaded : Bool;
	/**
		True if the resource is currently being loaded.
	**/
	var loading : Bool;
	/**
		The asset registry that this Asset belongs to.
	**/
	var registry : AssetRegistry;
	/**
		The file details or null if no file.
	**/
	var file : Dynamic;
	/**
		The asset id.
	**/
	var id : Float;
	/**
		Optional JSON data that contains either the complete resource data. (e.g. in the case of a
		material) or additional data (e.g. in the case of a model it contains mappings from mesh to
		material).
	**/
	var data : Dynamic;
	/**
		A reference to the resource when the asset is loaded. e.g. a {@link Texture} or a {@link Model}.
	**/
	var resource : Dynamic;
	/**
		A reference to the resources of the asset when it's loaded. An asset can hold more runtime
		resources than one e.g. cubemaps.
	**/
	var resources : Array<Dynamic>;
	/**
		If true the asset will be loaded during the preload phase of application set up.
	**/
	var preload : Bool;
	var loadFaces : Dynamic;
	var _loadFaces : Dynamic;
	/**
		Return the URL required to fetch the file for this asset.
	**/
	function getFileUrl():Null<String>;
	/**
		Construct an asset URL from this asset's location and a relative path. If the relativePath
		is a blob or Base64 URI, then return that instead.
	**/
	function getAbsoluteUrl(relativePath:String):String;
	/**
		Returns the asset id of the asset that corresponds to the specified locale.
	**/
	function getLocalizedAssetId(locale:String):Float;
	/**
		Adds a replacement asset id for the specified locale. When the locale in
		{@link Application#i18n} changes then references to this asset will be replaced with the
		specified asset id. (Currently only supported by the {@link ElementComponent}).
	**/
	function addLocalizedAssetId(locale:String, assetId:Float):Void;
	/**
		Removes a localized asset.
	**/
	function removeLocalizedAssetId(locale:String):Void;
	/**
		Take a callback which is called as soon as the asset is loaded. If the asset is already
		loaded the callback is called straight away.
	**/
	function ready(callback:AssetReadyCallback, ?scope:Dynamic):Void;
	function reload():Void;
	/**
		Destroys the associated resource and marks asset as unloaded.
	**/
	function unload():Void;
	static var prototype : Asset;
	/**
		Helper function to resolve asset file data and return the contents as an ArrayBuffer. If the
		asset file contents are present, that is returned. Otherwise the file data is be downloaded
		via http.
	**/
	static function fetchArrayBuffer(loadUrl:String, callback:ResourceLoaderCallback, ?asset:Asset, ?maxRetries:Float):Void;
}