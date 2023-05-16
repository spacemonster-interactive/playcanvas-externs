package global.pc;

/**
	The Sound Component controls playback of {@link Sound}s.
**/
@:native("pc.SoundComponent") extern class SoundComponent extends Component {
	/**
		Create a new Sound Component.
	**/
	function new(system:SoundComponentSystem, entity:Entity);
	private var _volume : Dynamic;
	private var _pitch : Dynamic;
	private var _positional : Dynamic;
	private var _refDistance : Dynamic;
	private var _maxDistance : Dynamic;
	private var _rollOffFactor : Dynamic;
	private var _distanceModel : Dynamic;
	private var _slots : Dynamic;
	private var _playingBeforeDisable : Dynamic;
	/**
		Update the specified property on all sound instances.
	**/
	private var _updateSoundInstances : Dynamic;
	/**
		Determines which algorithm to use to reduce the volume of the sound as it moves away from
		the listener. Can be:
		
		- {@link DISTANCE_LINEAR}
		- {@link DISTANCE_INVERSE}
		- {@link DISTANCE_EXPONENTIAL}
		
		Defaults to {@link DISTANCE_LINEAR}.
	**/
	var distanceModel : String;
	/**
		The maximum distance from the listener at which audio falloff stops. Note the volume of the
		audio is not 0 after this distance, but just doesn't fall off anymore. Defaults to 10000.
	**/
	var maxDistance : Float;
	/**
		The reference distance for reducing volume as the sound source moves further from the
		listener. Defaults to 1.
	**/
	var refDistance : Float;
	/**
		The factor used in the falloff equation. Defaults to 1.
	**/
	var rollOffFactor : Float;
	/**
		The pitch modifier to play the audio with. Must be larger than 0.01. Defaults to 1.
	**/
	var pitch : Float;
	/**
		The volume modifier to play the audio with. In range 0-1. Defaults to 1.
	**/
	var volume : Float;
	/**
		If true the audio will play back at the location of the Entity in space, so the audio will
		be affected by the position of the {@link AudioListenerComponent}. Defaults to true.
	**/
	var positional : Bool;
	/**
		A dictionary that contains the {@link SoundSlot}s managed by this SoundComponent.
	**/
	var slots : haxe.DynamicAccess<SoundSlot>;
	function onRemove():Void;
	/**
		Creates a new {@link SoundSlot} with the specified name.
	**/
	function addSlot(name:String, ?options:{ @:optional var volume : Float; @:optional var pitch : Float; @:optional var loop : Bool; @:optional var startTime : Float; @:optional var duration : Float; @:optional var overlap : Bool; @:optional var autoPlay : Bool; @:optional var asset : Float; }):Null<SoundSlot>;
	/**
		Removes the {@link SoundSlot} with the specified name.
	**/
	function removeSlot(name:String):Void;
	/**
		Returns the slot with the specified name.
	**/
	function slot(name:String):Null<SoundSlot>;
	/**
		Return a property from the slot with the specified name.
	**/
	private var _getSlotProperty : Dynamic;
	/**
		Returns true if the slot with the specified name is currently playing.
	**/
	function isPlaying(name:String):Bool;
	/**
		Returns true if the asset of the slot with the specified name is loaded..
	**/
	function isLoaded(name:String):Bool;
	/**
		Returns true if the slot with the specified name is currently paused.
	**/
	function isPaused(name:String):Bool;
	/**
		Returns true if the slot with the specified name is currently stopped.
	**/
	function isStopped(name:String):Bool;
	/**
		Begins playing the sound slot with the specified name. The slot will restart playing if it
		is already playing unless the overlap field is true in which case a new sound will be
		created and played.
	**/
	function play(name:String):Null<SoundInstance>;
	/**
		Pauses playback of the slot with the specified name. If the name is undefined then all slots
		currently played will be paused. The slots can be resumed by calling {@link SoundComponent#resume}.
	**/
	function pause(?name:String):Void;
	/**
		Resumes playback of the sound slot with the specified name if it's paused. If no name is
		specified all slots will be resumed.
	**/
	function resume(?name:String):Void;
	/**
		Stops playback of the sound slot with the specified name if it's paused. If no name is
		specified all slots will be stopped.
	**/
	function stop(?name:String):Void;
	static var prototype : SoundComponent;
}