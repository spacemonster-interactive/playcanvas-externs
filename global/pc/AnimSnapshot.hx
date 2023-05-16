package global.pc;

/**
	AnimSnapshot stores the state of an animation track at a particular time.
**/
@:native("pc.AnimSnapshot") extern class AnimSnapshot {
	/**
		Create a new animation snapshot.
	**/
	function new(animTrack:AnimTrack);
	var _name : String;
	var _time : Float;
	var _cache : Array<playcanvas.AnimCache>;
	var _results : Array<Array<Float>>;
	static var prototype : AnimSnapshot;
}