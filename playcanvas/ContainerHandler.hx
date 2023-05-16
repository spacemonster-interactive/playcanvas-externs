package playcanvas;

/**
	Loads files that contain multiple resources. For example glTF files can contain textures, models
	and animations.
	
	For glTF files, the asset options object can be used to pass load time callbacks for handling
	the various resources at different stages of loading. The table below lists the resource types
	and the corresponding supported process functions.
	
	```
	|---------------------------------------------------------------------|
	|  resource   |  preprocess |   process   |processAsync | postprocess |
	|-------------+-------------+-------------+-------------+-------------|
	| global      |      x      |             |             |      x      |
	| node        |      x      |      x      |             |      x      |
	| light       |      x      |      x      |             |      x      |
	| camera      |      x      |      x      |             |      x      |
	| animation   |      x      |             |             |      x      |
	| material    |      x      |      x      |             |      x      |
	| image       |      x      |             |      x      |      x      |
	| texture     |      x      |             |      x      |      x      |
	| buffer      |      x      |             |      x      |      x      |
	| bufferView  |      x      |             |      x      |      x      |
	|---------------------------------------------------------------------|
	```
	
	Additional options that can be passed for glTF files:
	[options.morphPreserveData] - When true, the morph target keeps its data passed using the options,
	allowing the clone operation.
	[options.morphPreferHighPrecision] - When true, high precision storage for morph targets should
	be prefered. This is faster to create and allows higher precision, but takes more memory and
	might be slower to render. Defaults to false.
	[options.skipMeshes] - When true, the meshes from the container are not created. This can be
	useful if you only need access to textures or animations and similar.
	
	For example, to receive a texture preprocess callback:
	
	```javascript
	const containerAsset = new pc.Asset(filename, 'container', { url: url, filename: filename }, null, {
	     texture: {
	         preprocess(gltfTexture) { console.log("texture preprocess"); }
	     },
	});
	```
**/
@:jsRequire("playcanvas", "ContainerHandler") extern class ContainerHandler {
	/**
		Create a new ContainerResource instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var glbContainerParser : GlbContainerParser;
	var parsers : { };
	var maxRetries : Dynamic;
	private var _getUrlWithoutParams : Dynamic;
	private var _getParser : Dynamic;
	function load(url:ts.AnyOf2<String, Dynamic>, callback:ResourceHandlerCallback, ?asset:Asset):Void;
	function open(url:String, data:Dynamic, ?asset:Asset):Dynamic;
	function patch(asset:Asset, assets:AssetRegistry):Void;
	static var prototype : ContainerHandler;
}