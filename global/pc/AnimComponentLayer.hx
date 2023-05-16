package global.pc;

/**
	The Anim Component Layer allows managers a single layer of the animation state graph.
**/
@:native("pc.AnimComponentLayer") extern class AnimComponentLayer {
	/**
		Create a new AnimComponentLayer instance.
	**/
	function new(name:String, controller:Dynamic, component:AnimComponent, ?weight:Float, ?blendType:String, ?normalizedWeight:Bool);
	var _name : String;
	var _controller : Dynamic;
	var _component : AnimComponent;
	var _weight : Float;
	var _blendType : String;
	var _normalizedWeight : Bool;
	var _mask : Dynamic;
	var _blendTime : Float;
	var _blendTimeElapsed : Float;
	var _startingWeight : Float;
	var _targetWeight : Float;
	/**
		Returns the name of the layer.
	**/
	final name : String;
	/**
		Whether this layer is currently playing.
	**/
	var playing : Dynamic;
	/**
		Returns true if a state graph has been loaded and all states in the graph have been assigned
		animation tracks.
	**/
	final playable : String;
	/**
		Returns the currently active state name.
	**/
	final activeState : String;
	/**
		Returns the previously active state name.
	**/
	final previousState : String;
	/**
		Returns the currently active states progress as a value normalized by the states animation
		duration. Looped animations will return values greater than 1.
	**/
	final activeStateProgress : Float;
	/**
		Returns the currently active states duration.
	**/
	final activeStateDuration : Float;
	/**
		The active states time in seconds.
	**/
	var activeStateCurrentTime : Dynamic;
	/**
		Returns whether the anim component layer is currently transitioning between states.
	**/
	final transitioning : Bool;
	/**
		If the anim component layer is currently transitioning between states, returns the progress.
		Otherwise returns null.
	**/
	final transitionProgress : Float;
	/**
		Lists all available states in this layers state graph.
	**/
	final states : Array<String>;
	/**
		The blending weight of this layer. Used when calculating the value of properties that are
		animated by more than one layer.
	**/
	var weight : Float;
	var blendType : String;
	/**
		A mask of bones which should be animated or ignored by this layer.
	**/
	var mask : Dynamic;
	/**
		Start playing the animation in the current state.
	**/
	function play(?name:String):Void;
	/**
		Pause the animation in the current state.
	**/
	function pause():Void;
	/**
		Reset the animation component to its initial state, including all parameters. The system
		will be paused.
	**/
	function reset():Void;
	/**
		Rebind any animations in the layer to the currently present components and model of the anim
		components entity.
	**/
	function rebind():Void;
	function update(dt:Dynamic):Void;
	/**
		Blend from the current weight value to the provided weight value over a given amount of time.
	**/
	function blendToWeight(weight:Float, time:Float):Void;
	/**
		Add a mask to this layer.
	**/
	function assignMask(?mask:Dynamic):Void;
	/**
		Assigns an animation track to a state or blend tree node in the current graph. If a state
		for the given nodePath doesn't exist, it will be created. If all states nodes are linked and
		the {@link AnimComponent#activate} value was set to true then the component will begin
		playing.
	**/
	function assignAnimation(nodePath:String, animTrack:Dynamic, ?speed:Float, ?loop:Bool):Void;
	/**
		Removes animations from a node in the loaded state graph.
	**/
	function removeNodeAnimations(nodeName:String):Void;
	/**
		Returns the asset that is associated with the given state.
	**/
	function getAnimationAsset(stateName:String):Asset;
	/**
		Transition to any state in the current layers graph. Transitions can be instant or take an
		optional blend time.
	**/
	function transition(to:String, ?time:Float, ?transitionOffset:Float):Void;
	static var prototype : AnimComponentLayer;
}