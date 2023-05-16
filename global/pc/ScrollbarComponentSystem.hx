package global.pc;

/**
	Manages creation of {@link ScrollbarComponent}s.
**/
@:native("pc.ScrollbarComponentSystem") extern class ScrollbarComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ScrollbarComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ScrollbarComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function _onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	static var prototype : ScrollbarComponentSystem;
}