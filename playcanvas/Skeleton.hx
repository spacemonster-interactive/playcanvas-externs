package playcanvas;

/**
	Represents a skeleton used to play animations.
**/
@:jsRequire("playcanvas", "Skeleton") extern class Skeleton {
	/**
		Create a new Skeleton instance.
	**/
	function new(graph:GraphNode);
	/**
		Determines whether skeleton is looping its animation.
	**/
	var looping : Bool;
	private var _animation : Dynamic;
	var _time : Float;
	var _interpolatedKeys : Array<Dynamic>;
	var _interpolatedKeyDict : { };
	var _currKeyIndices : { };
	var graph : GraphNode;
	/**
		Animation currently assigned to skeleton.
	**/
	var animation : Animation;
	/**
		Current time of currently active animation in seconds. This value is between zero and the
		duration of the animation.
	**/
	var currentTime : Float;
	/**
		Read-only property that returns number of nodes of a skeleton.
	**/
	final numNodes : Float;
	/**
		Progresses the animation assigned to the specified skeleton by the supplied time delta. If
		the delta takes the animation passed its end point, if the skeleton is set to loop, the
		animation will continue from the beginning. Otherwise, the animation's current time will
		remain at its duration (i.e. the end).
	**/
	function addTime(delta:Float):Void;
	/**
		Blends two skeletons together.
	**/
	function blend(skel1:Skeleton, skel2:Skeleton, alpha:Float):Void;
	/**
		Links a skeleton to a node hierarchy. The nodes animated skeleton are then subsequently used
		to drive the local transformation matrices of the node hierarchy.
	**/
	function setGraph(graph:GraphNode):Void;
	/**
		Synchronizes the currently linked node hierarchy with the current state of the skeleton.
		Internally, this function converts the interpolated keyframe at each node in the skeleton
		into the local transformation matrix at each corresponding node in the linked node
		hierarchy.
	**/
	function updateGraph():Void;
	static var prototype : Skeleton;
}