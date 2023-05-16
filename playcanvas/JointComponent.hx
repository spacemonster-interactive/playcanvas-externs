package playcanvas;

/**
	The JointComponent adds a physics joint constraint linking two rigid bodies.
**/
@:jsRequire("playcanvas", "JointComponent") extern class JointComponent extends Component {
	/**
		Create a new JointComponent instance.
	**/
	function new(system:JointComponentSystem, entity:Entity);
	var _constraint : Dynamic;
	var _entityA : Dynamic;
	var _entityB : Dynamic;
	var _breakForce : Float;
	var _enableCollision : Bool;
	var _linearMotionX : String;
	var _linearLimitsX : Vec2;
	var _linearSpringX : Bool;
	var _linearStiffnessX : Float;
	var _linearDampingX : Float;
	var _linearEquilibriumX : Float;
	var _linearMotionY : String;
	var _linearLimitsY : Vec2;
	var _linearSpringY : Bool;
	var _linearStiffnessY : Float;
	var _linearDampingY : Float;
	var _linearEquilibriumY : Float;
	var _linearMotionZ : String;
	var _linearLimitsZ : Vec2;
	var _linearSpringZ : Bool;
	var _linearStiffnessZ : Float;
	var _linearDampingZ : Float;
	var _linearEquilibriumZ : Float;
	var _angularMotionX : String;
	var _angularLimitsX : Vec2;
	var _angularSpringX : Bool;
	var _angularStiffnessX : Float;
	var _angularDampingX : Float;
	var _angularEquilibriumX : Float;
	var _angularMotionY : String;
	var _angularLimitsY : Vec2;
	var _angularSpringY : Bool;
	var _angularStiffnessY : Float;
	var _angularDampingY : Float;
	var _angularEquilibriumY : Float;
	var _angularMotionZ : String;
	var _angularLimitsZ : Vec2;
	var _angularSpringZ : Bool;
	var _angularEquilibriumZ : Float;
	var _angularDampingZ : Float;
	var _angularStiffnessZ : Float;
	var entityA : Dynamic;
	var entityB : Dynamic;
	var breakForce : Float;
	var enableCollision : Bool;
	var angularLimitsX : Vec2;
	var angularMotionX : String;
	var angularLimitsY : Vec2;
	var angularMotionY : String;
	var angularLimitsZ : Vec2;
	var angularMotionZ : String;
	var linearLimitsX : Vec2;
	var linearMotionX : String;
	var linearLimitsY : Vec2;
	var linearMotionY : String;
	var linearLimitsZ : Vec2;
	var linearMotionZ : String;
	function _convertTransform(pcTransform:Dynamic, ammoTransform:Dynamic):Void;
	function _updateAngularLimits():Void;
	function _updateLinearLimits():Void;
	function _createConstraint():Void;
	function _destroyConstraint():Void;
	function initFromData(data:Dynamic):Void;
	function _onSetEnabled(prop:Dynamic, old:Dynamic, value:Dynamic):Void;
	function _onBeforeRemove():Void;
	static var prototype : JointComponent;
}