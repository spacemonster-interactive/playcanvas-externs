package playcanvas;

/**
	Detected Plane instance that provides position, rotation and polygon points. Plane is a subject
	to change during its lifetime.
**/
@:jsRequire("playcanvas", "XrPlane") extern class XrPlane extends EventHandler {
	/**
		Create a new XrPlane instance.
	**/
	function new(planeDetection:XrPlaneDetection, xrPlane:Dynamic);
	private var _id : Dynamic;
	private var _planeDetection : Dynamic;
	private var _xrPlane : Dynamic;
	private var _lastChangedTime : Dynamic;
	private var _orientation : Dynamic;
	private var _position : Dynamic;
	private var _rotation : Dynamic;
	function destroy():Void;
	function update(frame:Dynamic):Void;
	/**
		Get the world space position of a plane.
	**/
	function getPosition():Vec3;
	/**
		Get the world space rotation of a plane.
	**/
	function getRotation():Quat;
	/**
		Unique identifier of a plane.
	**/
	final id : Float;
	/**
		Plane's specific orientation (horizontal or vertical) or null if orientation is anything else.
	**/
	final orientation : String;
	/**
		Array of DOMPointReadOnly objects. DOMPointReadOnly is an object with `x y z` properties
		that defines a local point of a plane's polygon.
	**/
	final points : Array<Dynamic>;
	static var prototype : XrPlane;
}