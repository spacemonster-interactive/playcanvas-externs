package playcanvas;

/**
	Lighting parameters, allow configuration of the global lighting parameters. For details see
	[Clustered Lighting](https://developer.playcanvas.com/en/user-manual/graphics/lighting/clustered-lighting/).
**/
@:jsRequire("playcanvas", "LightingParams") extern class LightingParams {
	/**
		Creates a new LightingParams object.
	**/
	function new(supportsAreaLights:Dynamic, maxTextureSize:Dynamic, dirtyLightsFnc:Dynamic);
	private var _areaLightsEnabled : Dynamic;
	private var _cells : Dynamic;
	private var _maxLightsPerCell : Dynamic;
	private var _shadowsEnabled : Dynamic;
	private var _shadowType : Dynamic;
	private var _shadowAtlasResolution : Dynamic;
	private var _cookiesEnabled : Dynamic;
	private var _cookieAtlasResolution : Dynamic;
	/**
		Layer ID of a layer to contain the debug rendering of clustered lighting. Defaults to
		undefined, which disables the debug rendering. Debug rendering is only included in the debug
		version of the engine.
	**/
	var debugLayer : Float;
	/**
		Atlas textures split description, which applies to both the shadow and cookie texture atlas.
		Defaults to null, which enables to automatic split mode. For details see [Configuring Atlas
		Split](https://developer.playcanvas.com/en/user-manual/graphics/lighting/clustered-lighting/#configuring-atlas).
	**/
	var atlasSplit : Null<Array<Float>>;
	var _supportsAreaLights : Dynamic;
	var _maxTextureSize : Dynamic;
	var _dirtyLightsFnc : Dynamic;
	function applySettings(render:Dynamic):Void;
	/**
		If set to true, the clustered lighting will support shadows.
		Defaults to true.
	**/
	var shadowsEnabled : Bool;
	/**
		If set to true, the clustered lighting will support cookie textures.
		Defaults to false.
	**/
	var cookiesEnabled : Bool;
	/**
		If set to true, the clustered lighting will support area lights.
		Defaults to false.
	**/
	var areaLightsEnabled : Bool;
	/**
		Resolution of the atlas texture storing all non-directional shadow textures.
		Defaults to 2048.
	**/
	var shadowAtlasResolution : Float;
	/**
		Resolution of the atlas texture storing all non-directional cookie textures.
		Defaults to 2048.
	**/
	var cookieAtlasResolution : Float;
	/**
		Maximum number of lights a cell can store. Defaults to 255.
	**/
	var maxLightsPerCell : Float;
	/**
		The type of shadow filtering used by all shadows. Can be:
		
		- {@link SHADOW_PCF1}: PCF 1x1 sampling.
		- {@link SHADOW_PCF3}: PCF 3x3 sampling.
		- {@link SHADOW_PCF5}: PCF 5x5 sampling. Falls back to {@link SHADOW_PCF3} on WebGL 1.0.
		
		Defaults to {@link SHADOW_PCF3}
	**/
	var shadowType : Float;
	var cell : Vec3;
	/**
		Number of cells along each world-space axis the space containing lights
		is subdivided into. Defaults to Vec(10, 3, 10).
	**/
	var cells : Vec3;
	static var prototype : LightingParams;
}