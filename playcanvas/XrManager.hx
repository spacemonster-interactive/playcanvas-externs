package playcanvas;

/**
	Manage and update XR session and its states.
**/
@:jsRequire("playcanvas", "XrManager") extern class XrManager extends EventHandler {
	/**
		Create a new XrManager instance.
	**/
	function new(app:AppBase);
	var app : AppBase;
	private var _supported : Dynamic;
	private var _available : Dynamic;
	private var _type : Dynamic;
	private var _spaceType : Dynamic;
	private var _session : Dynamic;
	private var _baseLayer : Dynamic;
	private var _referenceSpace : Dynamic;
	/**
		Provides access to depth sensing capabilities.
	**/
	var depthSensing : XrDepthSensing;
	/**
		Provides access to DOM overlay capabilities.
	**/
	var domOverlay : XrDomOverlay;
	/**
		Provides the ability to perform hit tests on the representation of real world geometry
		of the underlying AR system.
	**/
	var hitTest : XrHitTest;
	/**
		Provides access to image tracking capabilities.
	**/
	var imageTracking : XrImageTracking;
	/**
		Provides access to plane detection capabilities.
	**/
	var planeDetection : XrPlaneDetection;
	/**
		Provides access to Input Sources.
	**/
	var input : XrInput;
	/**
		Provides access to light estimation capabilities.
	**/
	var lightEstimation : XrLightEstimation;
	private var _camera : Dynamic;
	var views : Array<Dynamic>;
	var viewsPool : Array<Dynamic>;
	private var _localPosition : Dynamic;
	private var _localRotation : Dynamic;
	private var _depthNear : Dynamic;
	private var _depthFar : Dynamic;
	private var _width : Dynamic;
	private var _height : Dynamic;
	/**
		Destroys the XrManager instance.
	**/
	function destroy():Void;
	/**
		Attempts to start XR session for provided {@link CameraComponent} and optionally fires
		callback when session is created or failed to create. Integrated XR APIs need to be enabled
		by providing relevant options.
	**/
	function start(camera:CameraComponent, type:String, spaceType:String, ?options:{ @:optional var optionalFeatures : Array<String>; @:optional var imageTracking : Bool; @:optional var planeDetection : Bool; @:optional dynamic function callback(err:Null<js.lib.Error>):Dynamic; @:optional var depthSensing : { @:optional var usagePreference : String; @:optional var dataFormatPreference : String; }; }):Void;
	private var _onStartOptionsReady : Dynamic;
	/**
		Attempts to end XR session and optionally fires callback when session is ended or failed to
		end.
	**/
	function end(?callback:XrErrorCallback):Void;
	/**
		Check if specific type of session is available.
	**/
	function isAvailable(type:String):Bool;
	private var _deviceAvailabilityCheck : Dynamic;
	private var _sessionSupportCheck : Dynamic;
	private var _onSessionStart : Dynamic;
	private var _setClipPlanes : Dynamic;
	function update(frame:Dynamic):Bool;
	/**
		True if XR is supported.
	**/
	final supported : Bool;
	/**
		True if XR session is running.
	**/
	final active : Bool;
	/**
		Returns type of currently running XR session or null if no session is running. Can be any of
		XRTYPE_*.
	**/
	final type : String;
	/**
		Returns reference space type of currently running XR session or null if no session is
		running. Can be any of XRSPACE_*.
	**/
	final spaceType : String;
	/**
		Provides access to XRSession of WebXR.
	**/
	final session : Dynamic;
	/**
		Active camera for which XR session is running or null.
	**/
	final camera : Entity;
	/**
		Indicates whether WebXR content is currently visible to the user, and if it is, whether it's
		the primary focus. Can be 'hidden', 'visible' or 'visible-blurred'.
	**/
	final visibilityState : String;
	static var prototype : XrManager;
}