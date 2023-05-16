package playcanvas;

/**
	A WebGL implementation of the Shader.
**/
@jsInaccessible extern class WebglShader {
	function new(shader:Dynamic);
	var compileDuration : Float;
	/**
		Free the WebGL resources associated with a shader.
	**/
	function destroy(shader:Shader):Void;
	var glProgram : js.html.webgl.Program;
	function init():Void;
	var uniforms : Array<Dynamic>;
	var samplers : Array<Dynamic>;
	var attributes : Array<Dynamic>;
	var glVertexShader : js.html.webgl.Shader;
	var glFragmentShader : js.html.webgl.Shader;
	/**
		Dispose the shader when the context has been lost.
	**/
	function loseContext():Void;
	/**
		Restore shader after the context has been obtained.
	**/
	function restoreContext(device:WebglGraphicsDevice, shader:Shader):Void;
	/**
		Compile shader programs.
	**/
	function compile(device:WebglGraphicsDevice, shader:Shader):Void;
	/**
		Link shader programs. This is called at a later stage, to allow many shaders to compile in parallel.
	**/
	function link(device:WebglGraphicsDevice, shader:Shader):Void;
	/**
		Compiles an individual shader.
	**/
	private var _compileShaderSource : Dynamic;
	/**
		Link the shader, and extract its attributes and uniform information.
	**/
	function finalize(device:WebglGraphicsDevice, shader:Shader):Bool;
	/**
		Check the compilation status of a shader.
	**/
	private var _isCompiled : Dynamic;
	/**
		Truncate the WebGL shader compilation log to just include the error line plus the 5 lines
		before and after it.
	**/
	private var _processError : Dynamic;
	static var prototype : WebglShader;
	static function getBatchShaders(device:Dynamic):Dynamic;
	static function endShaderBatch(device:Dynamic):Void;
}