package playcanvas;

/**
	The AnimController manages the animations for its entity, based on the provided state graph and
	parameters. Its update method determines which state the controller should be in based on the
	current time, parameters and available states / transitions. It also ensures the AnimEvaluator
	is supplied with the correct animations, based on the currently active state.
**/
@:jsRequire("playcanvas", "AnimController") extern class AnimController {
	/**
		Create a new AnimController.
	**/
	function new(animEvaluator:AnimEvaluator, states:Array<Dynamic>, transitions:Array<Dynamic>, parameters:Array<Dynamic>, activate:Bool, eventHandler:EventHandler, consumedTriggers:js.lib.Set<Dynamic>);
	var _animEvaluator : AnimEvaluator;
	var _states : { };
	var _stateNames : Array<Dynamic>;
	var _eventHandler : EventHandler;
	var _consumedTriggers : js.lib.Set<Dynamic>;
	var _transitions : Array<AnimTransition>;
	var _findTransitionsFromStateCache : { };
	var _findTransitionsBetweenStatesCache : { };
	var _parameters : Array<Dynamic>;
	var _previousStateName : Dynamic;
	var _activeStateName : String;
	var _playing : Bool;
	var _activate : Bool;
	var _currTransitionTime : Float;
	var _totalTransitionTime : Float;
	var _isTransitioning : Bool;
	var _transitionInterruptionSource : String;
	var _transitionPreviousStates : Array<Dynamic>;
	var _timeInState : Float;
	var _timeInStateBefore : Float;
	final animEvaluator : AnimEvaluator;
	var activeState : Dynamic;
	final activeStateName : String;
	final activeStateAnimations : Dynamic;
	var previousState : Dynamic;
	final previousStateName : Dynamic;
	final playable : Bool;
	var playing : Bool;
	final activeStateProgress : Float;
	final activeStateDuration : Float;
	var activeStateCurrentTime : Float;
	final transitioning : Bool;
	final transitionProgress : Float;
	final states : Array<Dynamic>;
	function assignMask(mask:Dynamic):Dynamic;
	function _findState(stateName:Dynamic):Dynamic;
	function _getActiveStateProgressForTime(time:Dynamic):Float;
	function _findTransitionsFromState(stateName:Dynamic):Dynamic;
	function _findTransitionsBetweenStates(sourceStateName:Dynamic, destinationStateName:Dynamic):Dynamic;
	function _transitionHasConditionsMet(transition:Dynamic):Bool;
	function _findTransition(from:Dynamic, to:Dynamic):Dynamic;
	function updateStateFromTransition(transition:Dynamic):Void;
	function _transitionToState(newStateName:Dynamic):Void;
	function assignAnimation(pathString:Dynamic, animTrack:Dynamic, speed:Dynamic, loop:Dynamic):Void;
	function removeNodeAnimations(nodeName:Dynamic):Bool;
	function play(stateName:Dynamic):Void;
	function pause():Void;
	function reset():Void;
	function rebind():Void;
	function update(dt:Dynamic):Void;
	function findParameter(name:Dynamic):Dynamic;
	static var prototype : AnimController;
}