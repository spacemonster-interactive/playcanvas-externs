package playcanvas;

/**
	A SoundInstance plays a {@link Sound}.
**/
@:jsRequire("playcanvas", "SoundInstance") extern class SoundInstance extends EventHandler {
	/**
		Create a new SoundInstance instance.
	**/
	function new(manager:SoundManager, sound:Sound, options:{ @:optional var volume : Float; @:optional var pitch : Float; @:optional var loop : Bool; @:optional var startTime : Float; @:optional var duration : Float; @:optional var onPlay : haxe.Constraints.Function; @:optional var onPause : haxe.Constraints.Function; @:optional var onResume : haxe.Constraints.Function; @:optional var onStop : haxe.Constraints.Function; @:optional var onEnd : haxe.Constraints.Function; });
	/**
		Gets the source that plays the sound resource. If the Web Audio API is not supported the
		type of source is [Audio](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio).
		Source is only available after calling play.
	**/
	var source : js.html.audio.AudioBufferSourceNode;
	private var _manager : Dynamic;
	private var _volume : Dynamic;
	private var _pitch : Dynamic;
	private var _loop : Dynamic;
	private var _sound : Dynamic;
	/**
		Start at 'stopped'.
	**/
	private var _state : Dynamic;
	/**
		True if the manager was suspended.
	**/
	private var _suspended : Dynamic;
	/**
		Greater than 0 if we want to suspend the event handled to the 'onended' event.
		When an 'onended' event is suspended, this counter is decremented by 1.
		When a future 'onended' event is to be suspended, this counter is incremented by 1.
	**/
	private var _suspendEndEvent : Dynamic;
	/**
		True if we want to suspend firing instance events.
	**/
	private var _suspendInstanceEvents : Dynamic;
	/**
		If true then the instance will start playing its source when its created.
	**/
	private var _playWhenLoaded : Dynamic;
	private var _startTime : Dynamic;
	private var _duration : Dynamic;
	private var _startOffset : Dynamic;
	private var _onPlayCallback : Dynamic;
	private var _onPauseCallback : Dynamic;
	private var _onResumeCallback : Dynamic;
	private var _onStopCallback : Dynamic;
	private var _onEndCallback : Dynamic;
	private var _startedAt : Dynamic;
	/**
		Manually keep track of the playback position because the Web Audio API does not
		provide a way to do this accurately if the playbackRate is not 1.
	**/
	private var _currentTime : Dynamic;
	private var _currentOffset : Dynamic;
	/**
		The input node is the one that is connected to the source.
	**/
	private var _inputNode : Dynamic;
	/**
		The connected node is the one that is connected to the destination (speakers). Any
		external nodes will be connected to this node.
	**/
	private var _connectorNode : Dynamic;
	/**
		The first external node set by a user.
	**/
	private var _firstNode : Dynamic;
	/**
		The last external node set by a user.
	**/
	private var _lastNode : Dynamic;
	/**
		Set to true if a play() request was issued when the AudioContext was still suspended,
		and will therefore wait until it is resumed to play the audio.
	**/
	private var _waitingContextSuspension : Dynamic;
	private var _endedHandler : Dynamic;
	private var _isReady : Dynamic;
	private var _loadedMetadataHandler : Dynamic;
	private var _timeUpdateHandler : Dynamic;
	/**
		Gets or sets the current time of the sound that is playing. If the value provided is bigger
		than the duration of the instance it will wrap from the beginning.
	**/
	var currentTime : Float;
	/**
		The duration of the sound that the instance will play starting from startTime.
	**/
	var duration : Float;
	/**
		Returns true if the instance is currently paused.
	**/
	final isPaused : Bool;
	/**
		Returns true if the instance is currently playing.
	**/
	final isPlaying : Bool;
	/**
		Returns true if the instance is currently stopped.
	**/
	final isStopped : Bool;
	/**
		Returns true if the instance is currently suspended because the window is not focused.
	**/
	final isSuspended : Bool;
	/**
		If true the instance will restart when it finishes playing.
	**/
	var loop : Bool;
	/**
		The pitch modifier to play the sound with. Must be larger than 0.01.
	**/
	var pitch : Float;
	/**
		The sound resource that the instance will play.
	**/
	var sound : Sound;
	/**
		The start time from which the sound will start playing.
	**/
	var startTime : Float;
	/**
		The volume modifier to play the sound with. In range 0-1.
	**/
	var volume : Float;
	private var _onPlay : Dynamic;
	private var _onPause : Dynamic;
	private var _onResume : Dynamic;
	private var _onStop : Dynamic;
	private var _onEnded : Dynamic;
	/**
		Handle the manager's 'volumechange' event.
	**/
	private var _onManagerVolumeChange : Dynamic;
	/**
		Handle the manager's 'suspend' event.
	**/
	private var _onManagerSuspend : Dynamic;
	/**
		Handle the manager's 'resume' event.
	**/
	private var _onManagerResume : Dynamic;
	/**
		Creates internal audio nodes and connects them.
	**/
	private var _initializeNodes : Dynamic;
	var gain : js.html.audio.GainNode;
	/**
		Attempt to begin playback the sound.
		If the AudioContext is suspended, the audio will only start once it's resumed.
		If the sound is already playing, this will restart the sound.
	**/
	function play():Bool;
	/**
		Immediately play the sound.
		This method assumes the AudioContext is ready (not suspended or locked).
	**/
	private var _playAudioImmediate : Dynamic;
	/**
		Pauses playback of sound. Call resume() to resume playback from the same position.
	**/
	function pause():Bool;
	/**
		Resumes playback of the sound. Playback resumes at the point that the audio was paused.
	**/
	function resume():Bool;
	/**
		Stops playback of sound. Calling play() again will restart playback from the beginning of
		the sound.
	**/
	function stop():Bool;
	/**
		Connects external Web Audio API nodes. You need to pass the first node of the node graph
		that you created externally and the last node of that graph. The first node will be
		connected to the audio source and the last node will be connected to the destination of the
		AudioContext (e.g. speakers). Requires Web Audio API support.
	**/
	function setExternalNodes(firstNode:js.html.audio.AudioNode, ?lastNode:js.html.audio.AudioNode):Void;
	/**
		Clears any external nodes set by {@link SoundInstance#setExternalNodes}.
	**/
	function clearExternalNodes():Void;
	/**
		Gets any external nodes set by {@link SoundInstance#setExternalNodes}.
	**/
	function getExternalNodes():Array<js.html.audio.AudioNode>;
	/**
		Creates the source for the instance.
	**/
	private var _createSource : Dynamic;
	/**
		Sets the current time taking into account the time the instance started playing, the current
		pitch and the current time offset.
	**/
	private var _updateCurrentTime : Dynamic;
	/**
		Handle the manager's 'destroy' event.
	**/
	private var _onManagerDestroy : Dynamic;
	static var prototype : SoundInstance;
}