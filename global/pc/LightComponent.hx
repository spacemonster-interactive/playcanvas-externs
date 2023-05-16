package global.pc;

/**
	The Light Component enables the Entity to light the scene. There are three types of light:
	directional, omni and spot. Directional lights are global in that they are considered to be
	infinitely far away and light the entire scene. Omni and spot lights are local in that they have
	a position and a range. A spot light is a specialization of an omni light where light is emitted
	in a cone rather than in all directions. Lights also have the ability to cast shadows to add
	realism to your scenes.
	
	```javascript
	// Add a pc.LightComponent to an entity
	const entity = new pc.Entity();
	entity.addComponent('light', {
	     type: "omni",
	     color: new pc.Color(1, 0, 0),
	     range: 10
	});
	
	// Get the pc.LightComponent on an entity
	const lightComponent = entity.light;
	
	// Update a property on a light component
	entity.light.range = 20;
	```
**/
@:native("pc.LightComponent") extern class LightComponent extends Component {
	/**
		Creates a new LightComponent instance.
	**/
	function new(system:LightComponentSystem, entity:Entity);
	var affectDynamic : Bool;
	var affectLightmapped : Bool;
	var bake : Bool;
	var bakeArea : Float;
	var bakeDir : Bool;
	var bakeNumSamples : Float;
	var cascadeDistribution : Float;
	var castShadows : Bool;
	var color : Color;
	var cookieAngle : Float;
	var cookieChannel : String;
	var cookieFalloff : Bool;
	var cookieIntensity : Float;
	var cookieOffset : Vec2;
	var cookieScale : Vec2;
	var falloffMode : Float;
	var innerConeAngle : Float;
	var intensity : Float;
	var luminance : Float;
	var isStatic : Bool;
	var layers : Array<Float>;
	var mask : Float;
	var normalOffsetBias : Float;
	var numCascades : Float;
	var outerConeAngle : Float;
	var range : Float;
	var shadowBias : Float;
	var shadowDistance : Float;
	var shadowIntensity : Float;
	var shadowResolution : Float;
	var shadowType : Float;
	var shadowUpdateMode : Float;
	var shape : Float;
	var type : String;
	var vsmBlurMode : Float;
	var vsmBlurSize : Float;
	var _cookieAsset : Dynamic;
	var _cookieAssetId : Dynamic;
	var _cookieAssetAdd : Bool;
	var _cookieMatrix : Dynamic;
	function addLightToLayers():Void;
	function removeLightFromLayers():Void;
	function onLayersChanged(oldComp:Dynamic, newComp:Dynamic):Void;
	function onLayerAdded(layer:Dynamic):Void;
	function onLayerRemoved(layer:Dynamic):Void;
	function refreshProperties():Void;
	function onCookieAssetSet():Void;
	function onCookieAssetAdd(asset:Dynamic):Void;
	function onCookieAssetLoad():Void;
	var cookie : Dynamic;
	function onCookieAssetRemove():Void;
	function onRemove():Void;
	var cookieAsset : Dynamic;
	/**
		Returns an array of SHADOWUPDATE_ settings per shadow cascade, or undefined if not used.
	**/
	var shadowUpdateOverrides : Dynamic;
	static var prototype : LightComponent;
}