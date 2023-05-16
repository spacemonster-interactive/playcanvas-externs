package playcanvas;

@jsInaccessible extern class WebgpuRenderPipeline {
	function new(device:Dynamic);
	var device : WebgpuGraphicsDevice;
	/**
		The cache of vertex buffer layouts
	**/
	var vertexBufferLayout : WebgpuVertexBufferLayout;
	/**
		The cache of render pipelines
	**/
	var cache : js.lib.Map<String, Dynamic>;
	function get(primitive:Dynamic, vertexFormat0:Dynamic, vertexFormat1:Dynamic, shader:Dynamic, renderTarget:Dynamic, bindGroupFormats:Dynamic, blendState:Dynamic, depthState:Dynamic, cullMode:Dynamic, stencilEnabled:Dynamic, stencilFront:Dynamic, stencilBack:Dynamic):Dynamic;
	/**
		Generate a unique key for the render pipeline. Keep this function as lean as possible,
		as it executes for each draw call.
	**/
	function getKey(primitive:Dynamic, vertexFormat0:Dynamic, vertexFormat1:Dynamic, shader:Dynamic, renderTarget:Dynamic, bindGroupFormats:Dynamic, blendState:Dynamic, depthState:Dynamic, cullMode:Dynamic, stencilEnabled:Dynamic, stencilFront:Dynamic, stencilBack:Dynamic):String;
	function getPipelineLayout(bindGroupFormats:Array<BindGroupFormat>):Dynamic;
	function getBlend(blendState:Dynamic):{
		var color : {
			var operation : String;
			var srcFactor : String;
			var dstFactor : String;
		};
		var alpha : {
			var operation : String;
			var srcFactor : String;
			var dstFactor : String;
		};
	};
	private var getDepthStencil : Dynamic;
	function create(primitiveTopology:Dynamic, shader:Dynamic, renderTarget:Dynamic, pipelineLayout:Dynamic, blendState:Dynamic, depthState:Dynamic, vertexBufferLayout:Dynamic, cullMode:Dynamic, stencilEnabled:Dynamic, stencilFront:Dynamic, stencilBack:Dynamic):Dynamic;
	static var prototype : WebgpuRenderPipeline;
}