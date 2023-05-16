package playcanvas;

/**
	Manages creation of {@link CollisionComponent}s.
**/
@:jsRequire("playcanvas", "CollisionComponentSystem") extern class CollisionComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : CollisionComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : CollisionComponentData;
	};
	var implementations : { };
	var _triMeshCache : { };
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, _data:Dynamic, properties:Dynamic):Void;
	function _createImplementation(type:Dynamic):Dynamic;
	function _getImplementation(entity:Dynamic):Dynamic;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Dynamic;
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	function onRemove(entity:Dynamic, data:Dynamic):Void;
	function updateCompoundChildTransform(entity:Dynamic):Void;
	function _removeCompoundChild(collision:Dynamic, shape:Dynamic):Void;
	function onTransformChanged(component:Dynamic, position:Dynamic, rotation:Dynamic, scale:Dynamic):Void;
	function changeType(component:Dynamic, previousType:Dynamic, newType:Dynamic):Void;
	function recreatePhysicalShapes(component:Dynamic):Void;
	function _calculateNodeRelativeTransform(node:Dynamic, relative:Dynamic):Void;
	function _getNodeScaling(node:Dynamic):Dynamic;
	function _getNodeTransform(node:Dynamic, relative:Dynamic):Dynamic;
	static var prototype : CollisionComponentSystem;
}