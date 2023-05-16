package playcanvas;

/**
	Image Tracking provides the ability to track real world images by provided image samples and
	their estimated sizes.
**/
@:jsRequire("playcanvas", "XrImageTracking") extern class XrImageTracking extends EventHandler {
	/**
		Image Tracking provides the ability to track real world images by provided image samples and
		their estimate sizes.
	**/
	function new(manager:XrManager);
	private var _manager : Dynamic;
	private var _supported : Dynamic;
	private var _available : Dynamic;
	private var _images : Dynamic;
	/**
		Add an image for image tracking. A width can also be provided to help the underlying system
		estimate the appropriate transformation. Modifying the tracked images list is only possible
		before an AR session is started.
	**/
	function add(image:ts.AnyOf7<js.html.CanvasElement, js.html.ImageElement, js.html.VideoElement, js.html.svg.ImageElement, js.html.Blob, js.html.ImageData, js.html.ImageBitmap>, width:Float):Null<XrTrackedImage>;
	/**
		Remove an image from image tracking.
	**/
	function remove(trackedImage:XrTrackedImage):Void;
	private var _onSessionStart : Dynamic;
	private var _onSessionEnd : Dynamic;
	function prepareImages(callback:haxe.Constraints.Function):Void;
	function update(frame:Dynamic):Void;
	/**
		True if Image Tracking is supported.
	**/
	final supported : Bool;
	/**
		True if Image Tracking is available. This property will be false if no images were provided
		for the AR session or there was an error processing the provided images.
	**/
	final available : Bool;
	/**
		List of {@link XrTrackedImage} that contain tracking information.
	**/
	final images : Array<XrTrackedImage>;
	static var prototype : XrImageTracking;
}