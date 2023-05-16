package playcanvas;

/**
	Represents a hand with fingers and joints.
**/
@jsInaccessible extern class XrHand extends EventHandler {
	/**
		Represents a hand with fingers and joints.
	**/
	function new(inputSource:XrInputSource);
	private var _manager : Dynamic;
	private var _inputSource : Dynamic;
	private var _tracking : Dynamic;
	private var _fingers : Dynamic;
	private var _joints : Dynamic;
	private var _jointsById : Dynamic;
	private var _tips : Dynamic;
	private var _wrist : Dynamic;
	function update(frame:Dynamic):Void;
	private var _fingerIsClosed : Dynamic;
	/**
		Returns joint by XRHand id from list in specs: https://immersive-web.github.io/webxr-hand-input/.
	**/
	function getJointById(id:String):Null<XrJoint>;
	/**
		List of fingers of a hand.
	**/
	final fingers : Array<XrFinger>;
	/**
		List of joints of hand.
	**/
	final joints : Array<XrJoint>;
	/**
		List of joints that are fingertips.
	**/
	final tips : Array<XrJoint>;
	/**
		Wrist of a hand, or null if it is not available by WebXR underlying system.
	**/
	final wrist : XrJoint;
	/**
		True if tracking is available, otherwise tracking might be lost.
	**/
	final tracking : Bool;
	static var prototype : XrHand;
}