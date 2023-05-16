package playcanvas.gfx;

/**
	Representation of a shader uniform.
**/
@:jsRequire("playcanvas", "gfx.ShaderInput") extern class ShaderInput {
	/**
		Create a new WebglShaderInput instance.
	**/
	function new(graphicsDevice:playcanvas.GraphicsDevice, name:String, type:Float, locationId:ts.AnyOf2<Float, js.html.webgl.UniformLocation>);
	var locationId : ts.AnyOf2<Float, js.html.webgl.UniformLocation>;
	var scopeId : playcanvas.ScopeId;
	var version : playcanvas.Version;
	var dataType : Float;
	var value : Array<Dynamic>;
	var array : Array<Dynamic>;
	static var prototype : ShaderInput;
}