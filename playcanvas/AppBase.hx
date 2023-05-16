package playcanvas;

/**
	An Application represents and manages your PlayCanvas application. If you are developing using
	the PlayCanvas Editor, the Application is created for you. You can access your Application
	instance in your scripts. Below is a skeleton script which shows how you can access the
	application 'app' property inside the initialize and update functions:
	
	```javascript
	// Editor example: accessing the pc.Application from a script
	var MyScript = pc.createScript('myScript');
	
	MyScript.prototype.initialize = function() {
	     // Every script instance has a property 'this.app' accessible in the initialize...
	     const app = this.app;
	};
	
	MyScript.prototype.update = function(dt) {
	     // ...and update functions.
	     const app = this.app;
	};
	```
	
	If you are using the Engine without the Editor, you have to create the application instance
	manually.
**/
@:jsRequire("playcanvas", "AppBase") extern class AppBase extends EventHandler {
	/**
		Create a new AppBase instance.
	**/
	function new(canvas:js.html.CanvasElement);
	private var _destroyRequested : Dynamic;
	private var _inFrameUpdate : Dynamic;
	private var _time : Dynamic;
	/**
		Scales the global time delta. Defaults to 1.
	**/
	var timeScale : Float;
	/**
		Clamps per-frame delta time to an upper bound. Useful since returning from a tab
		deactivation can generate huge values for dt, which can adversely affect game state.
		Defaults to 0.1 (seconds).
	**/
	var maxDeltaTime : Float;
	/**
		The total number of frames the application has updated since start() was called.
	**/
	var frame : Float;
	/**
		When true, the application's render function is called every frame. Setting autoRender
		to false is useful to applications where the rendered image may often be unchanged over
		time. This can heavily reduce the application's load on the CPU and GPU. Defaults to
		true.
	**/
	var autoRender : Bool;
	/**
		Set to true to render the scene on the next iteration of the main loop. This only has an
		effect if {@link AppBase#autoRender} is set to false. The value of renderNextFrame
		is set back to false again as soon as the scene has been rendered.
	**/
	var renderNextFrame : Bool;
	/**
		Enable if you want entity type script attributes to not be re-mapped when an entity is
		cloned.
	**/
	var useLegacyScriptAttributeCloning : Bool;
	var _librariesLoaded : Bool;
	var _fillMode : String;
	var _resolutionMode : String;
	var _allowResize : Bool;
	/**
		For backwards compatibility with scripts 1.0.
	**/
	var context : AppBase;
	/**
		Initialize the app.
	**/
	function init(appOptions:AppOptions):Void;
	/**
		The graphics device used by the application.
	**/
	var graphicsDevice : GraphicsDevice;
	var stats : ApplicationStats;
	private var _soundManager : Dynamic;
	/**
		The resource loader.
	**/
	var loader : ResourceLoader;
	/**
		Stores all entities that have been created for this app by guid.
	**/
	var _entityIndex : haxe.DynamicAccess<Entity>;
	/**
		The scene managed by the application.
	**/
	var scene : Scene;
	/**
		The root entity of the application.
	**/
	var root : Entity;
	/**
		The asset registry managed by the application.
	**/
	var assets : AssetRegistry;
	var bundles : BundleRegistry;
	/**
		Set this to false if you want to run without using bundles. We set it to true only if
		TextDecoder is available because we currently rely on it for untarring.
	**/
	var enableBundles : Bool;
	var scriptsOrder : Array<String>;
	/**
		The application's script registry.
	**/
	var scripts : ScriptRegistry;
	/**
		Handles localization.
	**/
	var i18n : I18n;
	/**
		The scene registry managed by the application.
	**/
	var scenes : SceneRegistry;
	var defaultLayerWorld : Layer;
	var sceneGrab : SceneGrab;
	var defaultLayerDepth : Layer;
	var defaultLayerSkybox : Layer;
	var defaultLayerUi : Layer;
	var defaultLayerImmediate : Layer;
	/**
		The forward renderer.
	**/
	var renderer : ForwardRenderer;
	/**
		The frame graph.
	**/
	var frameGraph : FrameGraph;
	/**
		The run-time lightmapper.
	**/
	var lightmapper : Lightmapper;
	/**
		The application's batch manager.
	**/
	private var _batcher : Dynamic;
	/**
		The keyboard device.
	**/
	var keyboard : Keyboard;
	/**
		The mouse device.
	**/
	var mouse : Mouse;
	/**
		Used to get touch events input.
	**/
	var touch : TouchDevice;
	/**
		Used to access GamePad input.
	**/
	var gamepads : GamePads;
	/**
		Used to handle input for {@link ElementComponent}s.
	**/
	var elementInput : ElementInput;
	/**
		The XR Manager that provides ability to start VR/AR sessions.
	**/
	var xr : XrManager;
	var _inTools : Bool;
	private var _skyboxAsset : Dynamic;
	var _scriptPrefix : String;
	/**
		The application's component system registry. The Application constructor adds the
		following component systems to its component system registry:
		
		- anim ({@link AnimComponentSystem})
		- animation ({@link AnimationComponentSystem})
		- audiolistener ({@link AudioListenerComponentSystem})
		- button ({@link ButtonComponentSystem})
		- camera ({@link CameraComponentSystem})
		- collision ({@link CollisionComponentSystem})
		- element ({@link ElementComponentSystem})
		- layoutchild ({@link LayoutChildComponentSystem})
		- layoutgroup ({@link LayoutGroupComponentSystem})
		- light ({@link LightComponentSystem})
		- model ({@link ModelComponentSystem})
		- particlesystem ({@link ParticleSystemComponentSystem})
		- rigidbody ({@link RigidBodyComponentSystem})
		- render ({@link RenderComponentSystem})
		- screen ({@link ScreenComponentSystem})
		- script ({@link ScriptComponentSystem})
		- scrollbar ({@link ScrollbarComponentSystem})
		- scrollview ({@link ScrollViewComponentSystem})
		- sound ({@link SoundComponentSystem})
		- sprite ({@link SpriteComponentSystem})
	**/
	var systems : ComponentSystemRegistry;
	private var _visibilityChangeHandler : Dynamic;
	var _hiddenAttr : String;
	dynamic function tick(?timestamp:Float, ?frame:Dynamic):Dynamic;
	private var _initDefaultMaterial : Dynamic;
	private var _initProgramLibrary : Dynamic;
	final soundManager : SoundManager;
	/**
		The application's batch manager. The batch manager is used to merge mesh instances in
		the scene, which reduces the overall number of draw calls, thereby boosting performance.
	**/
	final batcher : BatchManager;
	/**
		The current fill mode of the canvas. Can be:
		
		- {@link FILLMODE_NONE}: the canvas will always match the size provided.
		- {@link FILLMODE_FILL_WINDOW}: the canvas will simply fill the window, changing aspect ratio.
		- {@link FILLMODE_KEEP_ASPECT}: the canvas will grow to fill the window as best it can while
		maintaining the aspect ratio.
	**/
	final fillMode : String;
	/**
		The current resolution mode of the canvas, Can be:
		
		- {@link RESOLUTION_AUTO}: if width and height are not provided, canvas will be resized to
		match canvas client size.
		- {@link RESOLUTION_FIXED}: resolution of canvas will be fixed.
	**/
	final resolutionMode : String;
	/**
		Load the application configuration file and apply application properties and fill the asset
		registry.
	**/
	function configure(url:String, callback:ConfigureAppCallback):Void;
	/**
		Load all assets in the asset registry that are marked as 'preload'.
	**/
	function preload(callback:PreloadAppCallback):Void;
	function _preloadScripts(sceneData:Dynamic, callback:Dynamic):Void;
	function _parseApplicationProperties(props:Dynamic, callback:Dynamic):Void;
	var _width : Dynamic;
	var _height : Dynamic;
	private var _loadLibraries : Dynamic;
	/**
		Insert scene name/urls into the registry.
	**/
	private var _parseScenes : Dynamic;
	/**
		Insert assets into registry.
	**/
	private var _parseAssets : Dynamic;
	private var _getScriptReferences : Dynamic;
	/**
		Start the application. This function does the following:
		
		1. Fires an event on the application named 'start'
		2. Calls initialize for all components on entities in the hierarchy
		3. Fires an event on the application named 'initialize'
		4. Calls postInitialize for all components on entities in the hierarchy
		5. Fires an event on the application named 'postinitialize'
		6. Starts executing the main loop of the application
		
		This function is called internally by PlayCanvas applications made in the Editor but you
		will need to call start yourself if you are using the engine stand-alone.
	**/
	function start():Void;
	var _alreadyStarted : Bool;
	/**
		Update all input devices managed by the application.
	**/
	private var inputUpdate : Dynamic;
	/**
		Update the application. This function will call the update functions and then the postUpdate
		functions of all enabled components. It will then update the current state of all connected
		input devices. This function is called internally in the application's main loop and does
		not need to be called explicitly.
	**/
	function update(dt:Float):Void;
	function frameStart():Void;
	/**
		Render the application's scene. More specifically, the scene's {@link LayerComposition} is
		rendered. This function is called internally in the application's main loop and does not
		need to be called explicitly.
	**/
	function render():Void;
	function renderComposition(layerComposition:Dynamic):Void;
	private var _fillFrameStatsBasic : Dynamic;
	private var _fillFrameStats : Dynamic;
	/**
		Controls how the canvas fills the window and resizes when the window changes.
	**/
	function setCanvasFillMode(mode:String, ?width:Float, ?height:Float):Void;
	/**
		Change the resolution of the canvas, and set the way it behaves when the window is resized.
	**/
	function setCanvasResolution(mode:String, ?width:Float, ?height:Float):Void;
	/**
		Queries the visibility of the window or tab in which the application is running.
	**/
	function isHidden():Bool;
	/**
		Called when the visibility state of the current tab/window changes.
	**/
	private var onVisibilityChange : Dynamic;
	/**
		Resize the application's canvas element in line with the current fill mode.
		
		- In {@link FILLMODE_KEEP_ASPECT} mode, the canvas will grow to fill the window as best it
		can while maintaining the aspect ratio.
		- In {@link FILLMODE_FILL_WINDOW} mode, the canvas will simply fill the window, changing
		aspect ratio.
		- In {@link FILLMODE_NONE} mode, the canvas will always match the size provided.
	**/
	function resizeCanvas(?width:Float, ?height:Float):Dynamic;
	/**
		Updates the {@link GraphicsDevice} canvas size to match the canvas size on the document
		page. It is recommended to call this function when the canvas size changes (e.g on window
		resize and orientation change events) so that the canvas resolution is immediately updated.
	**/
	function updateCanvasSize():Void;
	/**
		Event handler called when all code libraries have been loaded. Code libraries are passed
		into the constructor of the Application and the application won't start running or load
		packs until all libraries have been loaded.
	**/
	private var onLibrariesLoaded : Dynamic;
	/**
		Apply scene settings to the current scene. Useful when your scene settings are parsed or
		generated from a non-URL source.
	**/
	function applySceneSettings(settings:{ var physics : { var gravity : Array<Float>; }; var render : { var global_ambient : Array<Float>; var fog : String; var fog_color : Array<Float>; var fog_density : Float; var fog_start : Float; var fog_end : Float; var gamma_correction : Float; var tonemapping : Float; var exposure : Float; @:optional var skybox : Float; var skyboxIntensity : Float; var skyboxLuminance : Float; var skyboxMip : Float; var skyboxRotation : Array<Float>; var lightmapSizeMultiplier : Float; var lightmapMaxResolution : Float; var lightmapMode : Float; var ambientBake : Bool; var ambientBakeNumSamples : Float; var ambientBakeSpherePart : Float; var ambientBakeOcclusionBrightness : Float; var ambientBakeOcclusionContrast : Float; var ambientLuminance : Float; var clusteredLightingEnabled : Bool; var lightingShadowsEnabled : Bool; var lightingCookiesEnabled : Bool; var lightingAreaLightsEnabled : Bool; var lightingShadowAtlasResolution : Float; var lightingCookieAtlasResolution : Float; var lightingMaxLightsPerCell : Float; var lightingShadowType : Float; var lightingCells : Vec3; }; }):Void;
	/**
		Sets the area light LUT tables for this app.
	**/
	function setAreaLightLuts(ltcMat1:Array<Float>, ltcMat2:Array<Float>):Void;
	/**
		Sets the skybox asset to current scene, and subscribes to asset load/change events.
	**/
	function setSkybox(asset:Asset):Void;
	private var _firstBake : Dynamic;
	private var _firstBatch : Dynamic;
	/**
		Provide an opportunity to modify the timestamp supplied by requestAnimationFrame.
	**/
	function _processTimestamp(?timestamp:Float):Null<Float>;
	/**
		Draws a single line. Line start and end coordinates are specified in world-space. The line
		will be flat-shaded with the specified color.
	**/
	function drawLine(start:Vec3, end:Vec3, ?color:Color, ?depthTest:Bool, ?layer:Layer):Void;
	/**
		Renders an arbitrary number of discrete line segments. The lines are not connected by each
		subsequent point in the array. Instead, they are individual segments specified by two
		points. Therefore, the lengths of the supplied position and color arrays must be the same
		and also must be a multiple of 2. The colors of the ends of each line segment will be
		interpolated along the length of each line.
	**/
	function drawLines(positions:Array<Vec3>, colors:Array<Color>, ?depthTest:Bool, ?layer:Layer):Void;
	/**
		Renders an arbitrary number of discrete line segments. The lines are not connected by each
		subsequent point in the array. Instead, they are individual segments specified by two
		points.
	**/
	function drawLineArrays(positions:Array<Float>, colors:Array<Float>, ?depthTest:Bool, ?layer:Layer):Void;
	/**
		Draws a wireframe sphere with center, radius and color.
	**/
	function drawWireSphere(center:Vec3, radius:Float, ?color:Color, ?segments:Float, ?depthTest:Bool, ?layer:Layer):Void;
	/**
		Draws a wireframe axis aligned box specified by min and max points and color.
	**/
	function drawWireAlignedBox(minPoint:Vec3, maxPoint:Vec3, ?color:Color, ?depthTest:Bool, ?layer:Layer):Void;
	/**
		Draw meshInstance at this frame
	**/
	function drawMeshInstance(meshInstance:MeshInstance, ?layer:Layer):Void;
	/**
		Draw mesh at this frame.
	**/
	function drawMesh(mesh:Mesh, material:Material, matrix:Mat4, ?layer:Layer):Void;
	/**
		Draw quad of size [-0.5, 0.5] at this frame.
	**/
	function drawQuad(matrix:Mat4, material:Material, ?layer:Layer):Void;
	/**
		Draws a texture at [x, y] position on screen, with size [width, height]. The origin of the
		screen is top-left [0, 0]. Coordinates and sizes are in projected space (-1 .. 1).
	**/
	function drawTexture(x:Float, y:Float, width:Float, height:Float, texture:Texture, material:Material, ?layer:Layer, ?filterable:Bool):Void;
	/**
		Draws a depth texture at [x, y] position on screen, with size [width, height]. The origin of
		the screen is top-left [0, 0]. Coordinates and sizes are in projected space (-1 .. 1).
	**/
	function drawDepthTexture(x:Float, y:Float, width:Float, height:Float, ?layer:Layer):Void;
	/**
		Destroys application and removes all event listeners at the end of the current engine frame
		update. However, if called outside of the engine frame update, calling destroy() will
		destroy the application immediately.
	**/
	function destroy():Void;
	var controller : Dynamic;
	/**
		Get entity from the index by guid.
	**/
	function getEntityFromIndex(guid:String):Entity;
	private var _registerSceneImmediate : Dynamic;
	static var prototype : AppBase;
	private static var _applications : Dynamic;
	/**
		Get the current application. In the case where there are multiple running applications, the
		function can get an application based on a supplied canvas id. This function is particularly
		useful when the current Application is not readily available. For example, in the JavaScript
		console of the browser's developer tools.
	**/
	static function getApplication(?id:String):Null<AppBase>;
}