package global.pc;

/**
	The SoundManager is used to load and play audio. It also applies system-wide settings like
	global volume, suspend and resume.
**/
@:native("pc.SoundManager") extern class SoundManager extends EventHandler {
	/**
		The underlying AudioContext, lazy loaded in the 'context' property.
	**/
	private var _context : Dynamic;
	var AudioContext : Dynamic;
	var _unlockHandlerFunc : Dynamic;
	var _userSuspended : Bool;
	var listener : global.pc.audio.Listener;
	var _volume : Float;
	/**
		Global volume for the manager. All {@link SoundInstance}s will scale their volume with this
		volume. Valid between [0, 1].
	**/
	var volume : Float;
	final suspended : Bool;
	/**
		Get the Web Audio API context.
	**/
	final context : js.html.audio.AudioContext;
	function suspend():Void;
	function resume():Void;
	function destroy():Void;
	/**
		Create a new {@link Channel} and begin playback of the sound.
	**/
	private var playSound : Dynamic;
	/**
		Create a new {@link Channel3d} and begin playback of the sound at the position specified.
	**/
	private var playSound3d : Dynamic;
	function _resume():Void;
	function _suspend():Void;
	function _unlockHandler():Void;
	function _registerUnlockListeners():Void;
	function _removeUnlockListeners():Void;
	static var prototype : SoundManager;
}