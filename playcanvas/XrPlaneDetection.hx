package playcanvas;

/**
	Plane Detection provides the ability to detect real world surfaces based on estimations of the
	underlying AR system.
	
	```javascript
	// start session with plane detection enabled
	app.xr.start(camera, pc.XRTYPE_VR, pc.XRSPACE_LOCALFLOOR, {
	     planeDetection: true
	});
	```
	
	```javascript
	app.xr.planeDetection.on('add', function (plane) {
	     // new plane been added
	});
	```
**/
@:jsRequire("playcanvas", "XrPlaneDetection") extern class XrPlaneDetection extends EventHandler {
	/**
		Create a new XrPlaneDetection instance.
	**/
	function new(manager:XrManager);
	private var _manager : Dynamic;
	private var _supported : Dynamic;
	private var _available : Dynamic;
	private var _planesIndex : Dynamic;
	private var _planes : Dynamic;
	private var _onSessionEnd : Dynamic;
	function update(frame:Dynamic):Void;
	/**
		True if Plane Detection is supported.
	**/
	final supported : Bool;
	/**
		True if Plane Detection is available. This property can be set to true only during a running
		session.
	**/
	final available : Bool;
	/**
		Array of {@link XrPlane} instances that contain individual plane information, or null if
		plane detection is not available.
	**/
	final planes : Array<XrPlane>;
	static var prototype : XrPlaneDetection;
}