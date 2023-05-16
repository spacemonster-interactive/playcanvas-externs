package playcanvas;

@jsInaccessible extern class GeometryData {
	function new();
	function initDefaults():Void;
	var recreate : Bool;
	var verticesUsage : Float;
	var indicesUsage : Float;
	var maxVertices : Float;
	var maxIndices : Float;
	var vertexCount : Dynamic;
	var indexCount : Float;
	var vertexStreamsUpdated : Bool;
	var indexStreamUpdated : Bool;
	var vertexStreamDictionary : { };
	var indices : Dynamic;
	function _changeVertexCount(count:Dynamic, semantic:Dynamic):Void;
	static var prototype : GeometryData;
	static var DEFAULT_COMPONENTS_POSITION : Float;
	static var DEFAULT_COMPONENTS_NORMAL : Float;
	static var DEFAULT_COMPONENTS_UV : Float;
	static var DEFAULT_COMPONENTS_COLORS : Float;
}