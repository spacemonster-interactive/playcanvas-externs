package playcanvas;

/**
	Represents the audio listener in the 3D world, so that 3D positioned audio sources are heard
	correctly.
**/
@:jsRequire("playcanvas", "AudioListenerComponent") extern class AudioListenerComponent extends Component {
	/**
		Create a new AudioListenerComponent instance.
	**/
	function new(system:AudioListenerComponentSystem, entity:Entity);
	function setCurrentListener():Void;
	static var prototype : AudioListenerComponent;
}