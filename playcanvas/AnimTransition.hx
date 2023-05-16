package playcanvas;

/**
	AnimTransitions represent connections in the controllers state graph between AnimStates. During
	each frame, the controller tests to see if any of the AnimTransitions have the current AnimState
	as their source (from) state. If so and the AnimTransitions parameter based conditions are met,
	the controller will transition to the destination state.
**/
@jsInaccessible extern class AnimTransition {
	/**
		Create a new AnimTransition.
	**/
	function new(__0:{ var from : String; var to : String; var time : Float; var priority : Float; var conditions : Array<Dynamic>; var exitTime : Float; var transitionOffset : Float; var interruptionSource : String; });
	var _from : String;
	var _to : String;
	var _time : Float;
	var _priority : Float;
	var _conditions : Array<Dynamic>;
	var _exitTime : Float;
	var _transitionOffset : Float;
	var _interruptionSource : String;
	final from : String;
	var to : String;
	final time : Float;
	final priority : Float;
	final conditions : Array<Dynamic>;
	final exitTime : Float;
	final transitionOffset : Float;
	final interruptionSource : String;
	final hasExitTime : Bool;
	static var prototype : AnimTransition;
}