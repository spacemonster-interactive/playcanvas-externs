package global.pc;

/**
	Manages creation of {@link ButtonComponent}s.
**/
@:native("pc.ButtonComponentSystem") extern class ButtonComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ButtonComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ButtonComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function onUpdate(dt:Dynamic):Void;
	function _onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	static var prototype : ButtonComponentSystem;
}