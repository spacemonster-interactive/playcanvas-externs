package playcanvas;

/**
	AnimSnapshot stores the state of an animation track at a particular time.
**/
@:jsRequire("playcanvas", "AnimSnapshot") extern class AnimSnapshot {
	/**
		Create a new animation snapshot.
	**/
	function new(animTrack:AnimTrack);
	var _name : String;
	var _time : Float;
	var _cache : Array<AnimCache>;
	var _results : Array<Array<Float>>;
	static var prototype : AnimSnapshot;
}