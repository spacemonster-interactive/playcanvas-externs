package playcanvas;

/**
	The tracked image interface that is created by the Image Tracking system and is provided as a
	list from {@link XrImageTracking#images}. It contains information about the tracking state as
	well as the position and rotation of the tracked image.
**/
@:jsRequire("playcanvas", "XrTrackedImage") extern class XrTrackedImage extends EventHandler {
	/**
		The tracked image interface that is created by the Image Tracking system and is provided as
		a list from {@link XrImageTracking#images}. It contains information about the tracking state
		as well as the position and rotation of the tracked image.
	**/
	function new(image:ts.AnyOf7<js.html.CanvasElement, js.html.ImageElement, js.html.VideoElement, js.html.svg.ImageElement, js.html.Blob, js.html.ImageData, js.html.ImageBitmap>, width:Float);
	private var _image : Dynamic;
	private var _width : Dynamic;
	private var _bitmap : Dynamic;
	var _measuredWidth : Float;
	private var _trackable : Dynamic;
	private var _tracking : Dynamic;
	private var _emulated : Dynamic;
	var _pose : Dynamic;
	private var _position : Dynamic;
	private var _rotation : Dynamic;
	/**
		Image that is used for tracking.
	**/
	final image : ts.AnyOf7<js.html.CanvasElement, js.html.ImageElement, js.html.VideoElement, js.html.svg.ImageElement, js.html.Blob, js.html.ImageData, js.html.ImageBitmap>;
	/**
		Width that is provided to assist tracking performance. This property can be updated only
		when the AR session is not running.
	**/
	var width : Float;
	/**
		True if image is trackable. A too small resolution or invalid images can be untrackable by
		the underlying AR system.
	**/
	final trackable : Bool;
	/**
		True if image is in tracking state and being tracked in real world by the underlying AR
		system.
	**/
	final tracking : Bool;
	/**
		True if image was recently tracked but currently is not actively tracked due to inability of
		identifying the image by the underlying AR system. Position and rotation will be based on
		the previously known transformation assuming the tracked image has not moved.
	**/
	final emulated : Bool;
	function prepare():js.lib.Promise<js.html.ImageBitmap>;
	/**
		Destroys the tracked image.
	**/
	function destroy():Void;
	/**
		Get the position of the tracked image. The position is the most recent one based on the
		tracked image state.
	**/
	function getPosition():Vec3;
	/**
		Get the rotation of the tracked image. The rotation is the most recent based on the tracked
		image state.
	**/
	function getRotation():Quat;
	static var prototype : XrTrackedImage;
}