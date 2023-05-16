package playcanvas;

/**
	A WebGPU implementation of the Shader.
**/
@jsInaccessible extern class WebgpuShader {
	function new(shader:Shader);
	/**
		Transpiled vertex shader code.
	**/
	var _vertexCode : ts.AnyOf2<String, js.lib.Uint32Array>;
	/**
		Transpiled fragment shader code.
	**/
	var _fragmentCode : ts.AnyOf2<String, js.lib.Uint32Array>;
	/**
		Name of the vertex entry point function.
	**/
	var vertexEntryPoint : String;
	/**
		Name of the fragment entry point function.
	**/
	var fragmentEntryPoint : String;
	var shader : Shader;
	/**
		Free the WebGPU resources associated with a shader.
	**/
	function destroy(shader:Shader):Void;
	function createShaderModule(code:Dynamic, shaderType:Dynamic):Dynamic;
	function getVertexShaderModule():Dynamic;
	function getFragmentShaderModule():Dynamic;
	function process():Void;
	var processed : Dynamic;
	function transpile(src:Dynamic, shaderType:Dynamic, originalSrc:Dynamic):Dynamic;
	final vertexCode : ts.AnyOf2<String, js.lib.Uint32Array>;
	final fragmentCode : ts.AnyOf2<String, js.lib.Uint32Array>;
	/**
		Dispose the shader when the context has been lost.
	**/
	function loseContext():Void;
	/**
		Restore shader after the context has been obtained.
	**/
	function restoreContext(device:GraphicsDevice, shader:Shader):Void;
	static var prototype : WebgpuShader;
}