package global.pc;

/**
	An animation is a sequence of keyframe arrays which map to the nodes of a skeletal hierarchy. It
	controls how the nodes of the hierarchy are transformed over time.
**/
@:native("pc.Animation") extern class Animation {
	function new();
	/**
		Human-readable name of the animation.
	**/
	var name : String;
	/**
		Duration of the animation in seconds.
	**/
	var duration : Float;
	var _nodes : Array<Dynamic>;
	var _nodeDict : { };
	/**
		Gets a {@link Node} by name.
	**/
	function getNode(name:String):Node;
	/**
		Adds a node to the internal nodes array.
	**/
	function addNode(node:Node):Void;
	/**
		A read-only property to get array of animation nodes.
	**/
	final nodes : Array<Node>;
	static var prototype : Animation;
}