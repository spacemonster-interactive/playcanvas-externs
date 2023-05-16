package playcanvas;

/**
	Creates and manages physics joint components.
**/
@:jsRequire("playcanvas", "JointComponentSystem") extern class JointComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : JointComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : JointComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	static var prototype : JointComponentSystem;
}