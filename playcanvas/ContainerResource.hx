package playcanvas;

@:jsRequire("playcanvas", "ContainerResource") extern class ContainerResource {
	function new();
	/**
		Instantiates an entity with a model component.
	**/
	function instantiateModelEntity(?options:Dynamic):Entity;
	/**
		Instantiates an entity with a render component.
	**/
	function instantiateRenderEntity(?options:Dynamic):Entity;
	/**
		Queries the list of available material variants.
	**/
	function getMaterialVariants():Array<String>;
	/**
		Applies a material variant to an entity hierarchy.
	**/
	function applyMaterialVariant(entity:Entity, ?name:String):Void;
	/**
		Applies a material variant to a set of mesh instances. Compared to the applyMaterialVariant,
		this method allows for setting the variant on a specific set of mesh instances instead of the
		whole entity.
	**/
	function applyMaterialVariantInstances(instances:Array<MeshInstance>, ?name:String):Void;
	static var prototype : ContainerResource;
}