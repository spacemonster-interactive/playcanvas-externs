package global.pc;

/**
	A SoundInstance3d plays a {@link Sound} in 3D.
**/
@:native("pc.SoundInstance3d") extern class SoundInstance3d extends SoundInstance {
	/**
		Create a new SoundInstance3d instance.
	**/
	function new(manager:SoundManager, sound:Sound, ?options:{ @:optional var volume : Float; @:optional var pitch : Float; @:optional var loop : Bool; @:optional var startTime : Float; @:optional var duration : Float; @:optional var position : Vec3; @:optional var distanceModel : String; @:optional var refDistance : Float; @:optional var maxDistance : Float; @:optional var rollOffFactor : Float; });
	private var _position : Dynamic;
	private var _velocity : Dynamic;
	/**
		The position of the sound in 3D space.
	**/
	var position : Vec3;
	/**
		The maximum distance from the listener at which audio falloff stops. Note the volume of the
		audio is not 0 after this distance, but just doesn't fall off anymore.
	**/
	var maxDistance : Float;
	/**
		The reference distance for reducing volume as the sound source moves further from the
		listener.
	**/
	var refDistance : Float;
	/**
		The factor used in the falloff equation.
	**/
	var rollOffFactor : Float;
	/**
		Determines which algorithm to use to reduce the volume of the audio as it moves away from
		the listener. Can be:
		
		- {@link DISTANCE_LINEAR}
		- {@link DISTANCE_INVERSE}
		- {@link DISTANCE_EXPONENTIAL}
		
		Default is {@link DISTANCE_LINEAR}.
	**/
	var distanceModel : js.html.audio.DistanceModelType;
	var panner : js.html.audio.PannerNode;
	/**
		The velocity of the sound.
	**/
	var velocity : Vec3;
	static var prototype : SoundInstance3d;
}