package global.pc;

/**
	An AnimTrack stores the curve data necessary to animate a set of target nodes. It can be linked
	to the nodes it should animate using the {@link AnimComponent#assignAnimation} method.
**/
@:native("pc.AnimTrack") extern class AnimTrack {
	/**
		Create a new AnimTrack instance.
	**/
	function new(name:String, duration:Float, inputs:Array<AnimData>, outputs:Array<AnimData>, curves:Array<AnimCurve>, ?animEvents:AnimEvents);
	var _name : String;
	var _duration : Float;
	var _inputs : Array<AnimData>;
	var _outputs : Array<AnimData>;
	var _curves : Array<AnimCurve>;
	var _animEvents : AnimEvents;
	/**
		Gets the name of the AnimTrack.
	**/
	final name : String;
	/**
		Gets the duration of the AnimTrack.
	**/
	final duration : Float;
	/**
		Gets the list of curve key data contained in the AnimTrack.
	**/
	final inputs : Array<AnimData>;
	/**
		Gets the list of curve values contained in the AnimTrack.
	**/
	final outputs : Array<AnimData>;
	/**
		Gets the list of curves contained in the AnimTrack.
	**/
	final curves : Array<AnimCurve>;
	/**
		The animation events that will fire during the playback of this anim track.
	**/
	var events : Array<Dynamic>;
	function eval(time:Dynamic, snapshot:Dynamic):Void;
	static var prototype : AnimTrack;
	/**
		This AnimTrack can be used as a placeholder track when creating a state graph before having all associated animation data available.
	**/
	static var EMPTY : AnimTrack;
}