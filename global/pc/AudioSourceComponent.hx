package global.pc;

/**
	The AudioSource Component controls playback of an audio sample. This class will be deprecated
	in favor of {@link SoundComponent}.
**/
@:native("pc.AudioSourceComponent") extern class AudioSourceComponent extends Component {
	/**
		Create a new AudioSource Component instance.
	**/
	function new(system:AudioSourceComponentSystem, entity:Entity);
	/**
		Begin playback of an audio asset in the component attached to an entity.
	**/
	function play(name:String):Void;
	/**
		Pause playback of the audio that is playing on the Entity. Playback can be resumed by
		calling {@link AudioSourceComponent#unpause}.
	**/
	function pause():Void;
	/**
		Resume playback of the audio if paused. Playback is resumed at the time it was paused.
	**/
	function unpause():Void;
	/**
		Stop playback on an Entity. Playback can not be resumed after being stopped.
	**/
	function stop():Void;
	var channel : Dynamic;
	function onSetAssets(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onAssetChanged(asset:Dynamic, attribute:Dynamic, newValue:Dynamic, oldValue:Dynamic):Void;
	function onAssetRemoved(asset:Dynamic):Void;
	function onSetLoop(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetVolume(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetPitch(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetMaxDistance(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetMinDistance(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetRollOffFactor(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetDistanceModel(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSet3d(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function loadAudioSourceAssets(ids:Dynamic):Void;
	static var prototype : AudioSourceComponent;
}