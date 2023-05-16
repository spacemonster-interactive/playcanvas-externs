package global.pc;

/**
	Manages creation of {@link SoundComponent}s.
**/
@:native("pc.SoundComponentSystem") extern class SoundComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : SoundComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.SoundComponentData;
	};
	/**
		Gets / sets the sound manager.
	**/
	var manager : SoundManager;
	/**
		Sets / gets the volume for the entire Sound system. All sounds will have their volume
		multiplied by this value. Valid between [0, 1].
	**/
	var volume : Float;
	/**
		Gets the AudioContext currently used by the sound manager. Requires Web Audio API support.
		Returns null if the device does not support the Web Audio API.
	**/
	final context : js.html.audio.AudioContext;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onUpdate(dt:Dynamic):Void;
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	static var prototype : SoundComponentSystem;
}