package playcanvas.audio;

/**
	3D audio channel.
**/
@:jsRequire("playcanvas", "audio.Channel3d") extern class Channel3d extends Channel {
	var position : playcanvas.Vec3;
	var velocity : playcanvas.Vec3;
	var panner : js.html.audio.PannerNode;
	var maxDistance : Float;
	var minDistance : Float;
	var rollOffFactor : Float;
	var distanceModel : String;
	function getPosition():playcanvas.Vec3;
	function setPosition(position:Dynamic):Void;
	function getVelocity():playcanvas.Vec3;
	function setVelocity(velocity:Dynamic):Void;
	function getMaxDistance():Float;
	function setMaxDistance(max:Dynamic):Void;
	function getMinDistance():Float;
	function setMinDistance(min:Dynamic):Void;
	function getRollOffFactor():Float;
	function setRollOffFactor(factor:Dynamic):Void;
	function getDistanceModel():js.html.audio.DistanceModelType;
	function setDistanceModel(distanceModel:Dynamic):Void;
	static var prototype : Channel3d;
}