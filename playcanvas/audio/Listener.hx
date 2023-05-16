package playcanvas.audio;

/**
	Represents an audio listener - used internally.
**/
@:jsRequire("playcanvas", "audio.Listener") extern class Listener {
	/**
		Create a new listener instance.
	**/
	function new(manager:playcanvas.SoundManager);
	private var _manager : Dynamic;
	private var position : Dynamic;
	private var velocity : Dynamic;
	private var orientation : Dynamic;
	/**
		Get the position of the listener.
	**/
	function getPosition():playcanvas.Vec3;
	/**
		Set the position of the listener.
	**/
	function setPosition(position:playcanvas.Vec3):Void;
	/**
		Get the velocity of the listener.
	**/
	function getVelocity():playcanvas.Vec3;
	/**
		Set the velocity of the listener.
	**/
	function setVelocity(velocity:playcanvas.Vec3):Void;
	/**
		Set the orientation matrix of the listener.
	**/
	function setOrientation(orientation:playcanvas.Mat4):Void;
	/**
		Get the orientation matrix of the listener.
	**/
	function getOrientation():playcanvas.Mat4;
	/**
		Get the listener.
	**/
	final listener : js.html.audio.AudioListener;
	static var prototype : Listener;
}