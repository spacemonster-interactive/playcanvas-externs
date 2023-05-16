package playcanvas;

/**
	Represents XR input source, which is any input mechanism which allows the user to perform
	targeted actions in the same virtual space as the viewer. Example XR input sources include, but
	are not limited to, handheld controllers, optically tracked hands, and gaze-based input methods
	that operate on the viewer's pose.
**/
@:jsRequire("playcanvas", "XrInputSource") extern class XrInputSource extends EventHandler {
	/**
		Create a new XrInputSource instance.
	**/
	function new(manager:XrManager, xrInputSource:Dynamic);
	private var _id : Dynamic;
	private var _manager : Dynamic;
	private var _xrInputSource : Dynamic;
	private var _ray : Dynamic;
	private var _rayLocal : Dynamic;
	private var _grip : Dynamic;
	private var _hand : Dynamic;
	private var _localTransform : Dynamic;
	private var _worldTransform : Dynamic;
	private var _position : Dynamic;
	private var _rotation : Dynamic;
	private var _localPosition : Dynamic;
	private var _localRotation : Dynamic;
	private var _dirtyLocal : Dynamic;
	private var _dirtyRay : Dynamic;
	private var _selecting : Dynamic;
	private var _squeezing : Dynamic;
	private var _elementInput : Dynamic;
	private var _elementEntity : Dynamic;
	private var _hitTestSources : Dynamic;
	/**
		Unique number associated with instance of input source. Same physical devices when
		reconnected will not share this ID.
	**/
	final id : Float;
	/**
		XRInputSource object that is associated with this input source.
	**/
	final inputSource : Dynamic;
	/**
		Type of ray Input Device is based on. Can be one of the following:
		
		- {@link XRTARGETRAY_GAZE}: Gaze - indicates the target ray will originate at the viewer and
		follow the direction it is facing. This is commonly referred to as a "gaze input" device in
		the context of head-mounted displays.
		- {@link XRTARGETRAY_SCREEN}: Screen - indicates that the input source was an interaction
		with the canvas element associated with an inline session's output context, such as a mouse
		click or touch event.
		- {@link XRTARGETRAY_POINTER}: Tracked Pointer - indicates that the target ray originates
		from either a handheld device or other hand-tracking mechanism and represents that the user
		is using their hands or the held device for pointing.
	**/
	final targetRayMode : String;
	/**
		Describes which hand input source is associated with. Can be one of the following:
		
		- {@link XRHAND_NONE}: None - input source is not meant to be held in hands.
		- {@link XRHAND_LEFT}: Left - indicates that input source is meant to be held in left hand.
		- {@link XRHAND_RIGHT}: Right - indicates that input source is meant to be held in right
		hand.
	**/
	final handedness : String;
	/**
		List of input profile names indicating both the preferred visual representation and behavior
		of the input source.
	**/
	final profiles : Array<String>;
	/**
		If input source can be held, then it will have node with its world transformation, that can
		be used to position and rotate virtual joysticks based on it.
	**/
	final grip : Bool;
	/**
		If input source is a tracked hand, then it will point to {@link XrHand} otherwise it is
		null.
	**/
	final hand : XrHand;
	/**
		If input source has buttons, triggers, thumbstick or touchpad, then this object provides
		access to its states.
	**/
	final gamepad : js.html.Gamepad;
	/**
		True if input source is in active primary action between selectstart and selectend events.
	**/
	final selecting : Bool;
	/**
		True if input source is in active squeeze action between squeezestart and squeezeend events.
	**/
	final squeezing : Bool;
	/**
		Set to true to allow input source to interact with Element components. Defaults to true.
	**/
	var elementInput : Bool;
	/**
		If {@link XrInputSource#elementInput} is true, this property will hold entity with Element
		component at which this input source is hovering, or null if not hovering over any element.
	**/
	final elementEntity : Entity;
	/**
		List of active {@link XrHitTestSource} instances created by this input source.
	**/
	final hitTestSources : Array<XrHitTestSource>;
	function update(frame:Dynamic):Void;
	private var _updateTransforms : Dynamic;
	private var _updateRayTransforms : Dynamic;
	/**
		Get the world space position of input source if it is handheld ({@link XrInputSource#grip}
		is true). Otherwise it will return null.
	**/
	function getPosition():Null<Vec3>;
	/**
		Get the local space position of input source if it is handheld ({@link XrInputSource#grip}
		is true). Local space is relative to parent of the XR camera. Otherwise it will return null.
	**/
	function getLocalPosition():Null<Vec3>;
	/**
		Get the world space rotation of input source if it is handheld ({@link XrInputSource#grip}
		is true). Otherwise it will return null.
	**/
	function getRotation():Null<Quat>;
	/**
		Get the local space rotation of input source if it is handheld ({@link XrInputSource#grip}
		is true). Local space is relative to parent of the XR camera. Otherwise it will return null.
	**/
	function getLocalRotation():Null<Vec3>;
	/**
		Get the world space origin of input source ray.
	**/
	function getOrigin():Vec3;
	/**
		Get the world space direction of input source ray.
	**/
	function getDirection():Vec3;
	/**
		Attempts to start hit test source based on this input source.
	**/
	function hitTestStart(?options:{ @:optional var entityTypes : Array<String>; @:optional var offsetRay : Ray; @:optional dynamic function callback(err:Null<js.lib.Error>, hitTestSource:Null<XrHitTestSource>):Dynamic; }):Void;
	private var onHitTestSourceAdd : Dynamic;
	private var onHitTestSourceRemove : Dynamic;
	static var prototype : XrInputSource;
}