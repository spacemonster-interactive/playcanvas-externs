package global.pc;

/**
	Allows an Entity to render a particle system.
**/
@:native("pc.ParticleSystemComponentSystem") extern class ParticleSystemComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ParticleSystemComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ParticleSystemComponentData;
	};
	var propertyTypes : {
		var emitterExtents : String;
		var emitterExtentsInner : String;
		var particleNormal : String;
		var wrapBounds : String;
		var localVelocityGraph : String;
		var localVelocityGraph2 : String;
		var velocityGraph : String;
		var velocityGraph2 : String;
		var colorGraph : String;
		var colorGraph2 : String;
		var alphaGraph : String;
		var alphaGraph2 : String;
		var rotationSpeedGraph : String;
		var rotationSpeedGraph2 : String;
		var radialSpeedGraph : String;
		var radialSpeedGraph2 : String;
		var scaleGraph : String;
		var scaleGraph2 : String;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, _data:Dynamic, properties:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onUpdate(dt:Dynamic):Void;
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	static var prototype : ParticleSystemComponentSystem;
}