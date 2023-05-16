package global.pc;

/**
	Controls playback of an audio sample. This class will be deprecated in favor of
	{@link SoundComponentSystem}.
**/
@:native("pc.AudioSourceComponentSystem") extern class AudioSourceComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : AudioSourceComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.AudioSourceComponentData;
	};
	var manager : SoundManager;
	var initialized : Bool;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function onInitialize(root:Dynamic):Void;
	function onUpdate(dt:Dynamic):Void;
	function onRemove(entity:Dynamic, data:Dynamic):Void;
	/**
		Set the volume for the entire AudioSource system. All sources will have their volume
		multiplied by this value.
	**/
	function setVolume(volume:Float):Void;
	static var prototype : AudioSourceComponentSystem;
}