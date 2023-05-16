package global.pc.audio;

/**
	Represents an audio listener - used internally.
**/
@:native("pc.audio.Listener") extern class Listener {
	/**
		Create a new listener instance.
	**/
	function new(manager:global.pc.SoundManager);
	private var _manager : Dynamic;
	private var position : Dynamic;
	private var velocity : Dynamic;
	private var orientation : Dynamic;
	/**
		Get the position of the listener.
	**/
	function getPosition():global.pc.Vec3;
	/**
		Set the position of the listener.
	**/
	function setPosition(position:global.pc.Vec3):Void;
	/**
		Get the velocity of the listener.
	**/
	function getVelocity():global.pc.Vec3;
	/**
		Set the velocity of the listener.
	**/
	function setVelocity(velocity:global.pc.Vec3):Void;
	/**
		Set the orientation matrix of the listener.
	**/
	function setOrientation(orientation:global.pc.Mat4):Void;
	/**
		Get the orientation matrix of the listener.
	**/
	function getOrientation():global.pc.Mat4;
	/**
		Get the listener.
	**/
	final listener : js.html.audio.AudioListener;
	static var prototype : Listener;
}