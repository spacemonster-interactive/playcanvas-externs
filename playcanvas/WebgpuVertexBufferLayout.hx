package playcanvas;

@jsInaccessible extern class WebgpuVertexBufferLayout {
	function new();
	private var cache : Dynamic;
	/**
		Obtain a vertex layout of one or two vertex formats.
	**/
	function get(vertexFormat0:VertexFormat, ?vertexFormat1:VertexFormat):Array<Dynamic>;
	function getKey(vertexFormat0:Dynamic, ?vertexFormat1:Dynamic):String;
	function create(vertexFormat0:VertexFormat, vertexFormat1:VertexFormat):Array<Dynamic>;
	static var prototype : WebgpuVertexBufferLayout;
}