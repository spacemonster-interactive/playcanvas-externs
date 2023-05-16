package global.pc;

/**
	AnimEvents stores a sorted array of animation events which should fire sequentially during the
	playback of an pc.AnimTrack.
**/
@:native("pc.AnimEvents") extern class AnimEvents {
	/**
		Create a new AnimEvents instance.
	**/
	function new(events:Array<Dynamic>);
	var _events : Array<Dynamic>;
	final events : Array<Dynamic>;
	static var prototype : AnimEvents;
}