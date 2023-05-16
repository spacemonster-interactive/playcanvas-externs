package playcanvas;

/**
	Manages creation of {@link SpriteComponent}s.
**/
@:jsRequire("playcanvas", "SpriteComponentSystem") extern class SpriteComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : SpriteComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : SpriteComponentData;
	};
	var _defaultTexture : Texture;
	var _defaultMaterial : Dynamic;
	var _default9SlicedMaterialSlicedMode : Dynamic;
	var _default9SlicedMaterialTiledMode : Dynamic;
	var defaultMaterial : Dynamic;
	var default9SlicedMaterialSlicedMode : Dynamic;
	var default9SlicedMaterialTiledMode : Dynamic;
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
	static var prototype : SpriteComponentSystem;
}