package playcanvas;

/**
	Represents the joint of a finger.
**/
@jsInaccessible extern class XrJoint {
	/**
		Create an XrJoint instance.
	**/
	function new(index:Float, id:String, hand:XrHand, ?finger:XrFinger);
	private var _index : Dynamic;
	private var _id : Dynamic;
	private var _hand : Dynamic;
	private var _finger : Dynamic;
	private var _wrist : Dynamic;
	private var _tip : Dynamic;
	private var _radius : Dynamic;
	private var _localTransform : Dynamic;
	private var _worldTransform : Dynamic;
	private var _localPosition : Dynamic;
	private var _localRotation : Dynamic;
	private var _position : Dynamic;
	private var _rotation : Dynamic;
	private var _dirtyLocal : Dynamic;
	function update(pose:Dynamic):Void;
	private var _updateTransforms : Dynamic;
	/**
		Get the world space position of a joint.
	**/
	function getPosition():Vec3;
	/**
		Get the world space rotation of a joint.
	**/
	function getRotation():Quat;
	/**
		Index of a joint within a finger, starting from 0 (root of a finger) all the way to tip of
		the finger.
	**/
	final index : Float;
	/**
		Hand that joint relates to.
	**/
	final hand : XrHand;
	/**
		Finger that joint relates to.
	**/
	final finger : XrFinger;
	/**
		True if joint is a wrist.
	**/
	final wrist : Bool;
	/**
		True if joint is a tip of a finger.
	**/
	final tip : Bool;
	/**
		The radius of a joint, which is a distance from joint to the edge of a skin.
	**/
	final radius : Float;
	static var prototype : XrJoint;
}