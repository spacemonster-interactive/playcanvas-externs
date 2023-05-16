package playcanvas;

@jsInaccessible extern class AudioSourceComponentData {
	function new();
	var enabled : Bool;
	var assets : Array<Dynamic>;
	var activate : Bool;
	var volume : Float;
	var pitch : Float;
	var loop : Bool;
	@:native("3d")
	var ThreeD : Bool;
	var minDistance : Float;
	var maxDistance : Float;
	var rollOffFactor : Float;
	var distanceModel : String;
	var paused : Bool;
	var sources : { };
	var currentSource : Dynamic;
	var channel : Dynamic;
	static var prototype : AudioSourceComponentData;
}