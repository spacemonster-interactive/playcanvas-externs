package global.pc;

/**
	A graphical primitive. The mesh is defined by a {@link VertexBuffer} and an optional
	{@link IndexBuffer}. It also contains a primitive definition which controls the type of the
	primitive and the portion of the vertex or index buffer to use.
	
	## Mesh APIs
	There are two ways a mesh can be generated or updated.
	
	### Simple Mesh API
	{@link Mesh} class provides interfaces such as {@link Mesh#setPositions} and {@link Mesh#setUvs}
	that provide a simple way to provide vertex and index data for the Mesh, and hiding the
	complexity of creating the {@link VertexFormat}. This is the recommended interface to use.
	
	A simple example which creates a Mesh with 3 vertices, containing position coordinates only, to
	form a single triangle.
	
	```javascript
	const mesh = new pc.Mesh(device);
	const positions = [
	     0, 0, 0, // pos 0
	     1, 0, 0, // pos 1
	     1, 1, 0  // pos 2
	];
	mesh.setPositions(positions);
	mesh.update();
	```
	
	An example which creates a Mesh with 4 vertices, containing position and uv coordinates in
	channel 0, and an index buffer to form two triangles. Float32Array is used for positions and uvs.
	
	```javascript
	const mesh = new pc.Mesh(device);
	const positions = new Float32Array([
	     0, 0, 0, // pos 0
	     1, 0, 0, // pos 1
	     1, 1, 0, // pos 2
	     0, 1, 0  // pos 3
	]);
	const uvs = new Float32Array([
	     0, 0, // uv 0
	     1, 0, // uv 1
	     1, 1, // uv 2
	     0, 1  // uv 3
	]);
	const indices = [
	     0, 1, 2, // triangle 0
	     0, 2, 3  // triangle 1
	];
	mesh.setPositions(positions);
	mesh.setUvs(0, uvs);
	mesh.setIndices(indices);
	mesh.update();
	```
	
	This example demonstrates that vertex attributes such as position and normals, and also indices
	can be provided using Arrays ([]) and also Typed Arrays (Float32Array and similar). Note that
	typed arrays have higher performance, and are generally recommended for per-frame operations or
	larger meshes, but their construction using new operator is costly operation. If you only need
	to operate on a small number of vertices or indices, consider using Arrays to avoid the overhead
	associated with allocating Typed Arrays.
	
	Follow these links for more complex examples showing the functionality.
	
	- {@link http://playcanvas.github.io/#graphics/mesh-decals}
	- {@link http://playcanvas.github.io/#graphics/mesh-deformation}
	- {@link http://playcanvas.github.io/#graphics/mesh-generation}
	- {@link http://playcanvas.github.io/#graphics/point-cloud-simulation}
	
	### Update Vertex and Index buffers
	This allows greater flexibility, but is more complex to use. It allows more advanced setups, for
	example sharing a Vertex or Index Buffer between multiple meshes. See {@link VertexBuffer},
	{@link IndexBuffer} and {@link VertexFormat} for details.
**/
@:native("pc.Mesh") extern class Mesh extends playcanvas.RefCountedObject {
	/**
		Create a new Mesh instance.
	**/
	function new(?graphicsDevice:GraphicsDevice);
	var id : Float;
	var device : Dynamic;
	/**
		The vertex buffer holding the vertex data of the mesh.
	**/
	var vertexBuffer : VertexBuffer;
	/**
		An array of index buffers. For unindexed meshes, this array can be empty. The first
		index buffer in the array is used by {@link MeshInstance}s with a renderStyle property
		set to {@link RENDERSTYLE_SOLID}. The second index buffer in the array is used if
		renderStyle is set to {@link RENDERSTYLE_WIREFRAME}.
	**/
	var indexBuffer : Array<IndexBuffer>;
	/**
		Array of primitive objects defining how vertex (and index) data in the mesh should be
		interpreted by the graphics device.
		
		- `type` is the type of primitive to render. Can be:
		
		   - {@link PRIMITIVE_POINTS}
		   - {@link PRIMITIVE_LINES}
		   - {@link PRIMITIVE_LINELOOP}
		   - {@link PRIMITIVE_LINESTRIP}
		   - {@link PRIMITIVE_TRIANGLES}
		   - {@link PRIMITIVE_TRISTRIP}
		   - {@link PRIMITIVE_TRIFAN}
		
		- `base` is the offset of the first index or vertex to dispatch in the draw call.
		- `count` is the number of indices or vertices to dispatch in the draw call.
		- `indexed` specifies whether to interpret the primitive as indexed, thereby using the
		currently set index buffer.
	**/
	var primitive : Array<{
		var type : Float;
		var base : Float;
		var count : Float;
		var indexed : Null<Bool>;
	}>;
	/**
		The skin data (if any) that drives skinned mesh animations for this mesh.
	**/
	var skin : Null<Skin>;
	var _morph : Dynamic;
	var _geometryData : playcanvas.GeometryData;
	var _aabb : BoundingBox;
	var boneAabb : Array<Dynamic>;
	/**
		The morph data (if any) that drives morph target animations for this mesh.
	**/
	var morph : Dynamic;
	/**
		The axis-aligned bounding box for the object space vertices of this mesh.
	**/
	var aabb : BoundingBox;
	/**
		Destroys {@link VertexBuffer} and {@link IndexBuffer} associate with the mesh. This is
		normally called by {@link Model#destroy} and does not need to be called manually.
	**/
	function destroy():Void;
	function _destroyIndexBuffer(index:Dynamic):Void;
	function _initBoneAabbs(morphTargets:Dynamic):Void;
	var boneUsed : Array<Dynamic>;
	function _initGeometryData():Void;
	/**
		Clears the mesh of existing vertices and indices and resets the {@link VertexFormat}
		associated with the mesh. This call is typically followed by calls to methods such as
		{@link Mesh#setPositions}, {@link Mesh#setVertexStream} or {@link Mesh#setIndices} and
		finally {@link Mesh#update} to rebuild the mesh, allowing different {@link VertexFormat}.
	**/
	function clear(?verticesDynamic:Bool, ?indicesDynamic:Bool, ?maxVertices:Float, ?maxIndices:Float):Void;
	/**
		Sets the vertex data for any supported semantic.
	**/
	function setVertexStream(semantic:String, data:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, componentCount:Float, ?numVertices:Float, ?dataType:Float, ?dataTypeNormalize:Bool):Void;
	/**
		Gets the vertex data corresponding to a semantic.
	**/
	function getVertexStream(semantic:String, data:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	/**
		Sets the vertex positions array. Vertices are stored using {@link TYPE_FLOAT32} format.
	**/
	function setPositions(positions:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, ?componentCount:Float, ?numVertices:Float):Void;
	/**
		Sets the vertex normals array. Normals are stored using {@link TYPE_FLOAT32} format.
	**/
	function setNormals(normals:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, ?componentCount:Float, ?numVertices:Float):Void;
	/**
		Sets the vertex uv array. Uvs are stored using {@link TYPE_FLOAT32} format.
	**/
	function setUvs(channel:Float, uvs:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, ?componentCount:Float, ?numVertices:Float):Void;
	/**
		Sets the vertex color array. Colors are stored using {@link TYPE_FLOAT32} format, which is
		useful for HDR colors.
	**/
	function setColors(colors:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, ?componentCount:Float, ?numVertices:Float):Void;
	/**
		Sets the vertex color array. Colors are stored using {@link TYPE_UINT8} format, which is
		useful for LDR colors. Values in the array are expected in [0..255] range, and are mapped to
		[0..1] range in the shader.
	**/
	function setColors32(colors:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, ?numVertices:Float):Void;
	/**
		Sets the index array. Indices are stored using 16-bit format by default, unless more than
		65535 vertices are specified, in which case 32-bit format is used.
	**/
	function setIndices(indices:ts.AnyOf4<Array<Float>, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array>, ?numIndices:Float):Void;
	/**
		Gets the vertex positions data.
	**/
	function getPositions(positions:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	/**
		Gets the vertex normals data.
	**/
	function getNormals(normals:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	/**
		Gets the vertex uv data.
	**/
	function getUvs(channel:Float, uvs:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	/**
		Gets the vertex color data.
	**/
	function getColors(colors:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	/**
		Gets the index data.
	**/
	function getIndices(indices:ts.AnyOf4<Array<Float>, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array>):Float;
	/**
		Applies any changes to vertex stream and indices to mesh. This allocates or reallocates
		{@link vertexBuffer} or {@link IndexBuffer} to fit all provided vertices and indices, and
		fills them with data.
	**/
	function update(?primitiveType:Float, ?updateBoundingBox:Bool):Void;
	function _buildVertexFormat(vertexCount:Dynamic):VertexFormat;
	function _updateVertexBuffer():Void;
	function _updateIndexBuffer():Void;
	function prepareRenderState(renderStyle:Dynamic):Void;
	function updateRenderStates():Void;
	function generateWireframe():Void;
	static var prototype : Mesh;
}