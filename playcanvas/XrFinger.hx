package playcanvas;

/**
	Represents finger with related joints and index.
**/
@jsInaccessible extern class XrFinger {
	/**
		Create a new XrFinger instance.
	**/
	function new(index:Float, hand:XrHand);
	private var _index : Dynamic;
	private var _hand : Dynamic;
	private var _joints : Dynamic;
	private var _tip : Dynamic;
	/**
		Index of a finger, numeration is: thumb, index, middle, ring, little.
	**/
	final index : Float;
	/**
		Hand that finger relates to.
	**/
	final hand : XrHand;
	/**
		List of joints that relates to this finger, starting from joint closest to wrist all the way
		to the tip of a finger.
	**/
	final joints : Array<XrJoint>;
	/**
		Tip of a finger, or null if not available.
	**/
	final tip : XrJoint;
	static var prototype : XrFinger;
}