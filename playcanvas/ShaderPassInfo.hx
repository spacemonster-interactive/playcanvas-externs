package playcanvas;

/**
	Info about a shader pass. Shader pass is represented by a unique index and a name, and the
	index is used to access the shader required for the pass, from an array stored in the
	material or mesh instance.
**/
@jsInaccessible extern class ShaderPassInfo {
	function new(name:Dynamic, index:Dynamic, ?options:{ });
	var index : Float;
	var name : String;
	var shaderDefine : String;
	function initShaderDefines():Void;
	var shaderDefines : String;
	static var prototype : ShaderPassInfo;
}