package playcanvas;

/**
	Internal data structure used to store data used by hardware instancing.
**/
@jsInaccessible extern class InstancingData {
	function new(numObjects:Float);
	var vertexBuffer : Null<VertexBuffer>;
	var count : Float;
	static var prototype : InstancingData;
}