package playcanvas;

/**
	AnimEvaluator blends multiple sets of animation clips together.
**/
@:jsRequire("playcanvas", "AnimEvaluator") extern class AnimEvaluator {
	/**
		Create a new animation evaluator.
	**/
	function new(binder:AnimBinder);
	var _binder : AnimBinder;
	var _clips : Array<Dynamic>;
	var _inputs : Array<Dynamic>;
	var _outputs : Array<Dynamic>;
	var _targets : { };
	/**
		The list of animation clips.
	**/
	final clips : Array<AnimClip>;
	/**
		Add a clip to the evaluator.
	**/
	function addClip(clip:AnimClip):Void;
	/**
		Remove a clip from the evaluator.
	**/
	function removeClip(index:Float):Void;
	/**
		Remove all clips from the evaluator.
	**/
	function removeClips():Void;
	function updateClipTrack(name:Dynamic, animTrack:Dynamic):Void;
	/**
		Returns the first clip which matches the given name, or null if no such clip was found.
	**/
	function findClip(name:String):Null<AnimClip>;
	function rebind():Void;
	function assignMask(mask:Dynamic):Dynamic;
	/**
		Evaluator frame update function. All the attached {@link AnimClip}s are evaluated, blended
		and the results set on the {@link AnimTarget}.
	**/
	function update(deltaTime:Float, ?outputAnimation:Float):Void;
	static var prototype : AnimEvaluator;
}