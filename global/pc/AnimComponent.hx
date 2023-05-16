package global.pc;

/**
	The Anim Component allows an Entity to playback animations on models and entity properties.
**/
@:native("pc.AnimComponent") extern class AnimComponent extends Component {
	/**
		Create a new AnimComponent instance.
	**/
	function new(system:AnimComponentSystem, entity:Entity);
	var _stateGraphAsset : Dynamic;
	var _animationAssets : { };
	var _speed : Float;
	var _activate : Bool;
	var _playing : Bool;
	var _rootBone : Dynamic;
	var _stateGraph : Dynamic;
	var _layers : Array<Dynamic>;
	var _layerIndices : { };
	var _parameters : { };
	var _targets : { };
	var _consumedTriggers : js.lib.Set<Dynamic>;
	var _normalizeWeights : Bool;
	var stateGraphAsset : Dynamic;
	/**
		If true the animation component will normalize the weights of its layers by their sum total.
	**/
	var normalizeWeights : Bool;
	var animationAssets : { };
	/**
		Speed multiplier for animation play back speed. 1.0 is playback at normal speed, 0.0 pauses
		the animation.
	**/
	var speed : Float;
	/**
		If true the first animation will begin playing when the scene is loaded.
	**/
	var activate : Bool;
	/**
		Plays or pauses all animations in the component.
	**/
	var playing : Bool;
	/**
		The entity that this anim component should use as the root of the animation hierarchy.
	**/
	var rootBone : Dynamic;
	var stateGraph : Dynamic;
	/**
		Returns the animation layers available in this anim component.
	**/
	final layers : Array<AnimComponentLayer>;
	var layerIndices : { };
	var parameters : { };
	var targets : { };
	/**
		Returns whether all component layers are currently playable.
	**/
	final playable : Bool;
	/**
		Returns the base layer of the state graph.
	**/
	final baseLayer : AnimComponentLayer;
	function _onStateGraphAssetChangeEvent(asset:Dynamic):Void;
	function dirtifyTargets():Void;
	function _addLayer(__0:{ var name : Dynamic; var states : Dynamic; var transitions : Dynamic; var weight : Dynamic; var mask : Dynamic; var blendType : Dynamic; }):Dynamic;
	/**
		Adds a new anim component layer to the anim component.
	**/
	function addLayer(name:String, ?weight:Float, ?mask:Array<Dynamic>, ?blendType:String):AnimComponentLayer;
	/**
		Initializes component animation controllers using the provided state graph.
	**/
	function loadStateGraph(stateGraph:Dynamic):Void;
	function setupAnimationAssets():Void;
	function loadAnimationAssets():Void;
	function onAnimationAssetLoaded(layerName:Dynamic, stateName:Dynamic, asset:Dynamic):Void;
	/**
		Removes all layers from the anim component.
	**/
	function removeStateGraph():Void;
	/**
		Reset all of the components layers and parameters to their initial states. If a layer was
		playing before it will continue playing.
	**/
	function reset():Void;
	function unbind():Void;
	/**
		Rebind all of the components layers.
	**/
	function rebind():Void;
	/**
		Finds a {@link AnimComponentLayer} in this component.
	**/
	function findAnimationLayer(name:String):AnimComponentLayer;
	function addAnimationState(nodeName:Dynamic, animTrack:Dynamic, ?speed:Float, ?loop:Bool, ?layerName:String):Void;
	/**
		Associates an animation with a state or blend tree node in the loaded state graph. If all
		states are linked and the {@link AnimComponent#activate} value was set to true then the
		component will begin playing. If no state graph is loaded, a default state graph will be
		created with a single state based on the provided nodePath parameter.
	**/
	function assignAnimation(nodePath:String, animTrack:Dynamic, ?layerName:String, ?speed:Float, ?loop:Bool):Void;
	/**
		Removes animations from a node in the loaded state graph.
	**/
	function removeNodeAnimations(nodeName:String, ?layerName:String):Void;
	function getParameterValue(name:Dynamic, type:Dynamic):Dynamic;
	function setParameterValue(name:Dynamic, type:Dynamic, value:Dynamic):Void;
	/**
		Returns a float parameter value by name.
	**/
	function getFloat(name:String):Float;
	/**
		Sets the value of a float parameter that was defined in the animation components state graph.
	**/
	function setFloat(name:String, value:Float):Void;
	/**
		Returns an integer parameter value by name.
	**/
	function getInteger(name:String):Float;
	/**
		Sets the value of an integer parameter that was defined in the animation components state
		graph.
	**/
	function setInteger(name:String, value:Float):Void;
	/**
		Returns a boolean parameter value by name.
	**/
	function getBoolean(name:String):Bool;
	/**
		Sets the value of a boolean parameter that was defined in the animation components state
		graph.
	**/
	function setBoolean(name:String, value:Bool):Void;
	/**
		Returns a trigger parameter value by name.
	**/
	function getTrigger(name:String):Bool;
	/**
		Sets the value of a trigger parameter that was defined in the animation components state
		graph to true.
	**/
	function setTrigger(name:String, ?singleFrame:Bool):Void;
	/**
		Resets the value of a trigger parameter that was defined in the animation components state
		graph to false.
	**/
	function resetTrigger(name:String):Void;
	function onBeforeRemove():Void;
	function update(dt:Dynamic):Void;
	function resolveDuplicatedEntityReferenceProperties(oldAnim:Dynamic, duplicatedIdsMap:Dynamic):Void;
	static var prototype : AnimComponent;
}