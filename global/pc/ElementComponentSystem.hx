package global.pc;

/**
	Manages creation of {@link ElementComponent}s.
**/
@:native("pc.ElementComponentSystem") extern class ElementComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ElementComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ElementComponentData;
	};
	var _unicodeConverter : Dynamic;
	var _rtlReorder : Dynamic;
	var _defaultTexture : Texture;
	var defaultImageMaterial : StandardMaterial;
	var defaultImage9SlicedMaterial : StandardMaterial;
	var defaultImage9TiledMaterial : StandardMaterial;
	var defaultImageMaskMaterial : StandardMaterial;
	var defaultImage9SlicedMaskMaterial : StandardMaterial;
	var defaultImage9TiledMaskMaterial : StandardMaterial;
	var defaultScreenSpaceImageMaterial : StandardMaterial;
	var defaultScreenSpaceImage9SlicedMaterial : StandardMaterial;
	var defaultScreenSpaceImage9TiledMaterial : StandardMaterial;
	var defaultScreenSpaceImageMask9SlicedMaterial : StandardMaterial;
	var defaultScreenSpaceImageMask9TiledMaterial : StandardMaterial;
	var defaultScreenSpaceImageMaskMaterial : StandardMaterial;
	var _defaultTextMaterials : { };
	var defaultImageMaterials : Array<Dynamic>;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function getTextElementMaterial(screenSpace:Dynamic, msdf:Dynamic, textAttibutes:Dynamic):Dynamic;
	function _createBaseImageMaterial():StandardMaterial;
	function getImageElementMaterial(screenSpace:Dynamic, mask:Dynamic, nineSliced:Dynamic, nineSliceTiled:Dynamic):StandardMaterial;
	function registerUnicodeConverter(func:Dynamic):Void;
	function registerRtlReorder(func:Dynamic):Void;
	function getUnicodeConverter():Dynamic;
	function getRtlReorder():Dynamic;
	static var prototype : ElementComponentSystem;
}