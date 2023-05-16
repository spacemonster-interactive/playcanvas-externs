package global.pc;

/**
	The AnimationComponentSystem manages creating and deleting AnimationComponents.
**/
@:native("pc.AnimationComponentSystem") extern class AnimationComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : AnimationComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.AnimationComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:AnimationComponent, data:Dynamic, properties:Array<ts.AnyOf2<String, { var name : String; var type : String; }>>):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Entity, clone:Entity):AnimationComponent;
	private var onBeforeRemove : Dynamic;
	private var onUpdate : Dynamic;
	static var prototype : AnimationComponentSystem;
}