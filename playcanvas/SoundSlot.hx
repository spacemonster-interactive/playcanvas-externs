package playcanvas;

/**
	The SoundSlot controls playback of an audio asset.
**/
@:jsRequire("playcanvas", "SoundSlot") extern class SoundSlot extends EventHandler {
	/**
		Create a new SoundSlot.
	**/
	function new(component:SoundComponent, ?name:String, ?options:{ @:optional var volume : Float; @:optional var pitch : Float; @:optional var loop : Bool; @:optional var startTime : Float; @:optional var duration : Float; @:optional var overlap : Bool; @:optional var autoPlay : Bool; @:optional var asset : Float; });
	/**
		The name of the slot.
	**/
	var name : String;
	/**
		An array that contains all the {@link SoundInstance}s currently being played by the slot.
	**/
	var instances : Array<SoundInstance>;
	var _component : SoundComponent;
	var _assets : AssetRegistry;
	var _manager : Dynamic;
	var _volume : Float;
	var _pitch : Float;
	var _loop : Bool;
	var _duration : Float;
	var _startTime : Float;
	var _overlap : Bool;
	var _autoPlay : Bool;
	var _firstNode : js.html.audio.AudioNode;
	var _lastNode : js.html.audio.AudioNode;
	var _asset : Float;
	var _onInstancePlayHandler : Dynamic;
	var _onInstancePauseHandler : Dynamic;
	var _onInstanceResumeHandler : Dynamic;
	var _onInstanceStopHandler : Dynamic;
	var _onInstanceEndHandler : Dynamic;
	/**
		Plays a sound. If {@link SoundSlot#overlap} is true the new sound instance will be played
		independently of any other instances already playing. Otherwise existing sound instances
		will stop before playing the new sound.
	**/
	function play():SoundInstance;
	/**
		Pauses all sound instances. To continue playback call {@link SoundSlot#resume}.
	**/
	function pause():Bool;
	/**
		Resumes playback of all paused sound instances.
	**/
	function resume():Bool;
	/**
		Stops playback of all sound instances.
	**/
	function stop():Bool;
	/**
		Loads the asset assigned to this slot.
	**/
	function load():Void;
	/**
		Connect external Web Audio API nodes. Any sound played by this slot will automatically
		attach the specified nodes to the source that plays the sound. You need to pass the first
		node of the node graph that you created externally and the last node of that graph. The
		first node will be connected to the audio source and the last node will be connected to the
		destination of the AudioContext (e.g. speakers).
	**/
	function setExternalNodes(firstNode:js.html.audio.AudioNode, ?lastNode:js.html.audio.AudioNode):Void;
	/**
		Clears any external nodes set by {@link SoundSlot#setExternalNodes}.
	**/
	function clearExternalNodes():Void;
	/**
		Gets an array that contains the two external nodes set by {@link SoundSlot#setExternalNodes}.
	**/
	function getExternalNodes():Array<js.html.audio.AudioNode>;
	/**
		Reports whether an asset is set on this slot.
	**/
	private var _hasAsset : Dynamic;
	/**
		Creates a new {@link SoundInstance} with the properties of the slot.
	**/
	private var _createInstance : Dynamic;
	function _onInstancePlay(instance:Dynamic):Void;
	function _onInstancePause(instance:Dynamic):Void;
	function _onInstanceResume(instance:Dynamic):Void;
	function _onInstanceStop(instance:Dynamic):Void;
	function _onInstanceEnd(instance:Dynamic):Void;
	function _onAssetAdd(asset:Dynamic):Void;
	function _onAssetLoad(asset:Dynamic):Void;
	function _onAssetRemoved(asset:Dynamic):Void;
	function updatePosition(position:Dynamic):Void;
	/**
		The asset id.
	**/
	var asset : Float;
	/**
		If true the slot will begin playing as soon as it is loaded.
	**/
	var autoPlay : Bool;
	/**
		The duration of the sound that the slot will play starting from startTime.
	**/
	var duration : Float;
	/**
		Returns true if the asset of the slot is loaded.
	**/
	final isLoaded : Bool;
	/**
		Returns true if the slot is currently paused.
	**/
	final isPaused : Bool;
	/**
		Returns true if the slot is currently playing.
	**/
	final isPlaying : Bool;
	/**
		Returns true if the slot is currently stopped.
	**/
	final isStopped : Bool;
	/**
		If true the slot will restart when it finishes playing.
	**/
	var loop : Bool;
	/**
		If true then sounds played from slot will be played independently of each other. Otherwise
		the slot will first stop the current sound before starting the new one.
	**/
	var overlap : Bool;
	/**
		The pitch modifier to play the sound with. Must be larger than 0.01.
	**/
	var pitch : Float;
	/**
		The start time from which the sound will start playing.
	**/
	var startTime : Float;
	/**
		The volume modifier to play the sound with. In range 0-1.
	**/
	var volume : Float;
	static var prototype : SoundSlot;
}