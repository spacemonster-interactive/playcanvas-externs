package global.pc;

/**
	The Camera Component enables an Entity to render the scene. A scene requires at least one
	enabled camera component to be rendered. Note that multiple camera components can be enabled
	simultaneously (for split-screen or offscreen rendering, for example).
	
	```javascript
	// Add a pc.CameraComponent to an entity
	const entity = new pc.Entity();
	entity.addComponent('camera', {
	     nearClip: 1,
	     farClip: 100,
	     fov: 55
	});
	
	// Get the pc.CameraComponent on an entity
	const cameraComponent = entity.camera;
	
	// Update a property on a camera component
	entity.camera.nearClip = 2;
	```
**/
@:native("pc.CameraComponent") extern class CameraComponent extends Component {
	/**
		Create a new CameraComponent instance.
	**/
	function new(system:CameraComponentSystem, entity:Entity);
	/**
		Custom function that is called when postprocessing should execute.
	**/
	var onPostprocessing : haxe.Constraints.Function;
	/**
		Custom function that is called before the camera renders the scene.
	**/
	var onPreRender : haxe.Constraints.Function;
	/**
		Custom function that is called after the camera renders the scene.
	**/
	var onPostRender : haxe.Constraints.Function;
	/**
		A counter of requests of depth map rendering.
	**/
	private var _renderSceneDepthMap : Dynamic;
	/**
		A counter of requests of color map rendering.
	**/
	private var _renderSceneColorMap : Dynamic;
	private var _sceneDepthMapRequested : Dynamic;
	private var _sceneColorMapRequested : Dynamic;
	private var _priority : Dynamic;
	/**
		Layer id at which the postprocessing stops for the camera.
	**/
	private var _disablePostEffectsLayer : Dynamic;
	private var _camera : Dynamic;
	var _postEffects : PostEffectQueue;
	/**
		Sets the name of the shader pass the camera will use when rendering.
	**/
	function setShaderPass(name:String):Float;
	/**
		Shader pass name.
	**/
	function getShaderPass():String;
	/**
		Set camera aperture in f-stops, the default value is 16.0. Higher value means less exposure.
	**/
	var aperture : Float;
	/**
		The aspect ratio (width divided by height) of the camera. If aspectRatioMode is
		{@link ASPECT_AUTO}, then this value will be automatically calculated every frame, and you
		can only read it. If it's ASPECT_MANUAL, you can set the value.
	**/
	var aspectRatio : Float;
	/**
		The aspect ratio mode of the camera. Can be:
		
		- {@link ASPECT_AUTO}: aspect ratio will be calculated from the current render
		target's width divided by height.
		- {@link ASPECT_MANUAL}: use the aspectRatio value.
		
		Defaults to {@link ASPECT_AUTO}.
	**/
	var aspectRatioMode : Float;
	/**
		Custom function you can provide to calculate the camera projection matrix manually. Can be
		used for complex effects like doing oblique projection. Function is called using component's
		scope. Arguments:
		
		- {@link Mat4} transformMatrix: output of the function
		- view: Type of view. Can be {@link VIEW_CENTER}, {@link VIEW_LEFT} or {@link VIEW_RIGHT}.
		
		Left and right are only used in stereo rendering.
	**/
	var calculateProjection : Dynamic;
	/**
		Custom function you can provide to calculate the camera transformation matrix manually. Can
		be used for complex effects like reflections. Function is called using component's scope.
		Arguments:
		
		- {@link Mat4} transformMatrix: output of the function.
		- view: Type of view. Can be {@link VIEW_CENTER}, {@link VIEW_LEFT} or {@link VIEW_RIGHT}.
		
		Left and right are only used in stereo rendering.
	**/
	var calculateTransform : Dynamic;
	/**
		Queries the camera component's underlying Camera instance.
	**/
	final camera : Camera;
	/**
		The color used to clear the canvas to before the camera starts to render. Defaults to
		[0.75, 0.75, 0.75, 1].
	**/
	var clearColor : Color;
	/**
		If true the camera will clear the color buffer to the color set in clearColor. Defaults to true.
	**/
	var clearColorBuffer : Bool;
	/**
		If true the camera will clear the depth buffer. Defaults to true.
	**/
	var clearDepthBuffer : Bool;
	/**
		If true the camera will clear the stencil buffer. Defaults to true.
	**/
	var clearStencilBuffer : Bool;
	/**
		If true the camera will take material.cull into account. Otherwise both front and back faces
		will be rendered. Defaults to true.
	**/
	var cullFaces : Bool;
	/**
		Layer ID of a layer on which the postprocessing of the camera stops being applied to.
		Defaults to LAYERID_UI, which causes post processing to not be applied to UI layer and any
		following layers for the camera. Set to undefined for post-processing to be applied to all
		layers of the camera.
	**/
	var disablePostEffectsLayer : Float;
	/**
		The distance from the camera after which no rendering will take place. Defaults to 1000.
	**/
	var farClip : Float;
	/**
		If true the camera will invert front and back faces. Can be useful for reflection rendering.
		Defaults to false.
	**/
	var flipFaces : Bool;
	/**
		The field of view of the camera in degrees. Usually this is the Y-axis field of view, see
		{@link CameraComponent#horizontalFov}. Used for {@link PROJECTION_PERSPECTIVE} cameras only.
		Defaults to 45.
	**/
	var fov : Float;
	/**
		Queries the camera's frustum shape.
	**/
	final frustum : Frustum;
	/**
		Controls the culling of mesh instances against the camera frustum, i.e. if objects outside
		of camera should be omitted from rendering. If false, all mesh instances in the scene are
		rendered by the camera, regardless of visibility. Defaults to false.
	**/
	var frustumCulling : Bool;
	/**
		Set which axis to use for the Field of View calculation. Defaults to false.
	**/
	var horizontalFov : Bool;
	/**
		An array of layer IDs ({@link Layer#id}) to which this camera should belong. Don't push,
		pop, splice or modify this array, if you want to change it, set a new one instead. Defaults
		to [LAYERID_WORLD, LAYERID_DEPTH, LAYERID_SKYBOX, LAYERID_UI, LAYERID_IMMEDIATE].
	**/
	var layers : Array<Float>;
	final layersSet : js.lib.Set<Float>;
	/**
		The distance from the camera before which no rendering will take place. Defaults to 0.1.
	**/
	var nearClip : Float;
	/**
		The half-height of the orthographic view window (in the Y-axis). Used for
		{@link PROJECTION_ORTHOGRAPHIC} cameras only. Defaults to 10.
	**/
	var orthoHeight : Float;
	final postEffects : PostEffectQueue;
	/**
		The post effects queue for this camera. Use this to add or remove post effects from the camera.
	**/
	final postEffectsEnabled : PostEffectQueue;
	/**
		Controls the order in which cameras are rendered. Cameras with smaller values for priority
		are rendered first. Defaults to 0.
	**/
	var priority : Float;
	/**
		The type of projection used to render the camera. Can be:
		
		- {@link PROJECTION_PERSPECTIVE}: A perspective projection. The camera frustum
		resembles a truncated pyramid.
		- {@link PROJECTION_ORTHOGRAPHIC}: An orthographic projection. The camera
		frustum is a cuboid.
		
		Defaults to {@link PROJECTION_PERSPECTIVE}.
	**/
	var projection : Float;
	/**
		Queries the camera's projection matrix.
	**/
	final projectionMatrix : Mat4;
	/**
		Controls where on the screen the camera will be rendered in normalized screen coordinates.
		Defaults to [0, 0, 1, 1].
	**/
	var rect : Vec4;
	var renderSceneColorMap : Bool;
	var renderSceneDepthMap : Bool;
	/**
		Render target to which rendering of the cameras is performed. If not set, it will render
		simply to the screen.
	**/
	var renderTarget : Dynamic;
	/**
		Clips all pixels which are not in the rectangle. The order of the values is
		[x, y, width, height]. Defaults to [0, 0, 1, 1].
	**/
	var scissorRect : Vec4;
	/**
		Set camera sensitivity in ISO, the default value is 1000. Higher value means more exposure.
	**/
	var sensitivity : Float;
	/**
		Set camera shutter speed in seconds, the default value is 1/1000s. Longer shutter means more exposure.
	**/
	var shutter : Float;
	/**
		Queries the camera's view matrix.
	**/
	final viewMatrix : Mat4;
	/**
		Based on the value, the depth layer's enable counter is incremented or decremented.
	**/
	private var _enableDepthLayer : Dynamic;
	/**
		Request the scene to generate a texture containing the scene color map. Note that this call
		is accumulative, and for each enable request, a disable request need to be called.
	**/
	function requestSceneColorMap(enabled:Bool):Void;
	/**
		Request the scene to generate a texture containing the scene depth map. Note that this call
		is accumulative, and for each enable request, a disable request need to be called.
	**/
	function requestSceneDepthMap(enabled:Bool):Void;
	function dirtyLayerCompositionCameras():Void;
	/**
		Convert a point from 2D screen space to 3D world space.
	**/
	function screenToWorld(screenx:Float, screeny:Float, cameraz:Float, ?worldCoord:Vec3):Vec3;
	/**
		Convert a point from 3D world space to 2D screen space.
	**/
	function worldToScreen(worldCoord:Vec3, ?screenCoord:Vec3):Vec3;
	/**
		Called before application renders the scene.
	**/
	function onAppPrerender():Void;
	private var addCameraToLayers : Dynamic;
	private var removeCameraFromLayers : Dynamic;
	private var onLayersChanged : Dynamic;
	private var onLayerAdded : Dynamic;
	private var onLayerRemoved : Dynamic;
	function onRemove():Void;
	/**
		Calculates aspect ratio value for a given render target.
	**/
	function calculateAspectRatio(?rt:RenderTarget):Float;
	/**
		Prepare the camera for frame rendering.
	**/
	function frameUpdate(rt:RenderTarget):Void;
	/**
		Attempt to start XR session with this camera.
	**/
	function startXr(type:String, spaceType:String, ?options:{ @:optional var optionalFeatures : Array<String>; @:optional var imageTracking : Bool; @:optional var planeDetection : Bool; @:optional dynamic function callback(err:Null<js.lib.Error>):Dynamic; @:optional var depthSensing : { @:optional var usagePreference : String; @:optional var dataFormatPreference : String; }; }):Void;
	/**
		Attempt to end XR session of this camera.
	**/
	function endXr(?callback:XrErrorCallback):Void;
	/**
		Function to copy properties from the source CameraComponent.
		Properties not copied: postEffects.
		Inherited properties not copied (all): system, entity, enabled.
	**/
	function copy(source:CameraComponent):Void;
	static var prototype : CameraComponent;
}