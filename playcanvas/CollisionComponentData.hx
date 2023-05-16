package playcanvas;

@jsInaccessible extern class CollisionComponentData {
	function new();
	var enabled : Bool;
	var type : String;
	var halfExtents : Vec3;
	var linearOffset : Vec3;
	var angularOffset : Quat;
	var radius : Float;
	var axis : Float;
	var height : Float;
	var asset : Dynamic;
	var renderAsset : Dynamic;
	var shape : Dynamic;
	var model : Dynamic;
	var render : Dynamic;
	var initialized : Bool;
	static var prototype : CollisionComponentData;
}