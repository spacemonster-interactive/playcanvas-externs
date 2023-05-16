package global.pc.audio;

/**
	3D audio channel.
**/
@:native("pc.audio.Channel3d") extern class Channel3d extends Channel {
	var position : global.pc.Vec3;
	var velocity : global.pc.Vec3;
	var panner : js.html.audio.PannerNode;
	var maxDistance : Float;
	var minDistance : Float;
	var rollOffFactor : Float;
	var distanceModel : String;
	function getPosition():global.pc.Vec3;
	function setPosition(position:Dynamic):Void;
	function getVelocity():global.pc.Vec3;
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