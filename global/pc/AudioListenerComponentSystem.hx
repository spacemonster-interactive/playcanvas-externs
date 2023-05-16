package global.pc;

/**
	Component System for adding and removing {@link AudioListenerComponent} objects to Entities.
**/
@:native("pc.AudioListenerComponentSystem") extern class AudioListenerComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : AudioListenerComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.AudioListenerComponentData;
	};
	var manager : SoundManager;
	var current : Dynamic;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function onUpdate(dt:Dynamic):Void;
	static var prototype : AudioListenerComponentSystem;
}