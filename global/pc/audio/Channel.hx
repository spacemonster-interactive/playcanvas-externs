package global.pc.audio;

/**
	A channel is created when the {@link SoundManager} begins playback of a {@link Sound}. Usually
	created internally by {@link SoundManager#playSound} or {@link SoundManager#playSound3d}.
	Developers usually won't have to create Channels manually.
**/
@:native("pc.audio.Channel") extern class Channel {
	/**
		Create a new Channel instance.
	**/
	function new(manager:global.pc.SoundManager, sound:global.pc.Sound, ?options:{ @:optional var volume : Float; @:optional var pitch : Float; @:optional var loop : Bool; });
	var volume : Float;
	var loop : Bool;
	var pitch : Float;
	var sound : global.pc.Sound;
	var paused : Bool;
	var suspended : Bool;
	var manager : global.pc.SoundManager;
	var source : js.html.Node;
	var startTime : Float;
	var startOffset : Float;
	var gain : js.html.audio.GainNode;
	/**
		Get the current value for the volume. Between 0 and 1.
	**/
	function getVolume():Float;
	/**
		Get the current looping state of the Channel.
	**/
	function getLoop():Bool;
	/**
		Enable/disable the loop property to make the sound restart from the beginning when it
		reaches the end.
	**/
	function setLoop(loop:Bool):Void;
	/**
		Get the current pitch of the Channel.
	**/
	function getPitch():Float;
	/**
		Handle the manager's 'volumechange' event.
	**/
	function onManagerVolumeChange():Void;
	/**
		Handle the manager's 'suspend' event.
	**/
	function onManagerSuspend():Void;
	/**
		Handle the manager's 'resume' event.
	**/
	function onManagerResume():Void;
	/**
		Begin playback of sound.
	**/
	function play():Void;
	/**
		Pause playback of sound. Call unpause() to resume playback from the same position.
	**/
	function pause():Void;
	/**
		Resume playback of the sound. Playback resumes at the point that the audio was paused.
	**/
	function unpause():Void;
	/**
		Stop playback of sound. Calling play() again will restart playback from the beginning of the
		sound.
	**/
	function stop():Void;
	/**
		Set the volume of playback between 0 and 1.
	**/
	function setVolume(volume:Float):Void;
	function setPitch(pitch:Dynamic):Void;
	function isPlaying():Bool;
	function getDuration():Dynamic;
	function _createSource():Void;
	static var prototype : Channel;
}