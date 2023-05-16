package playcanvas;

@jsInaccessible extern class Immediate {
	function new(device:Dynamic);
	var device : Dynamic;
	var quadMesh : Mesh;
	var textureShader : Dynamic;
	var depthTextureShader : Dynamic;
	var cubeLocalPos : Dynamic;
	var cubeWorldPos : Dynamic;
	var batchesMap : js.lib.Map<Dynamic, Dynamic>;
	var allBatches : js.lib.Set<Dynamic>;
	var updatedLayers : js.lib.Set<Dynamic>;
	var _materialDepth : BasicMaterial;
	var _materialNoDepth : BasicMaterial;
	var layerMeshInstances : js.lib.Map<Dynamic, Dynamic>;
	function createMaterial(depthTest:Dynamic):BasicMaterial;
	final materialDepth : BasicMaterial;
	final materialNoDepth : BasicMaterial;
	function getBatch(layer:Dynamic, depthTest:Dynamic):Dynamic;
	function getShader(id:Dynamic, fragment:Dynamic):Dynamic;
	function getTextureShader():Dynamic;
	function getUnfilterableTextureShader():Dynamic;
	function getDepthTextureShader():Dynamic;
	function getQuadMesh():Mesh;
	function drawMesh(material:Dynamic, matrix:Dynamic, mesh:Dynamic, meshInstance:Dynamic, layer:Dynamic):Void;
	function drawWireAlignedBox(min:Dynamic, max:Dynamic, color:Dynamic, depthTest:Dynamic, layer:Dynamic):Void;
	function drawWireSphere(center:Dynamic, radius:Dynamic, color:Dynamic, numSegments:Dynamic, depthTest:Dynamic, layer:Dynamic):Void;
	function getGraphNode(matrix:Dynamic):GraphNode;
	function onPreRenderLayer(layer:Dynamic, visibleList:Dynamic, transparent:Dynamic):Void;
	function onPostRender():Void;
	static var prototype : Immediate;
}