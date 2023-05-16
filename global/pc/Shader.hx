package global.pc;

/**
	A shader is a program that is responsible for rendering graphical primitives on a device's
	graphics processor. The shader is generated from a shader definition. This shader definition
	specifies the code for processing vertices and fragments processed by the GPU. The language of
	the code is GLSL (or more specifically ESSL, the OpenGL ES Shading Language). The shader
	definition also describes how the PlayCanvas engine should map vertex buffer elements onto the
	attributes specified in the vertex shader code.
**/
@:native("pc.Shader") extern class Shader {
	/**
		Creates a new Shader instance.
		
		Consider {@link createShaderFromCode} as a simpler and more powerful way to create
		a shader.
	**/
	function new(graphicsDevice:GraphicsDevice, definition:{ @:optional var name : String; @:optional var attributes : haxe.DynamicAccess<String>; var vshader : String; @:optional var fshader : String; @:optional var useTransformFeedback : Bool; @:optional var shaderLanguage : String; });
	/**
		Format of the uniform buffer for mesh bind group.
	**/
	var meshUniformBufferFormat : playcanvas.UniformBufferFormat;
	/**
		Format of the bind group for the mesh bind group.
	**/
	var meshBindGroupFormat : playcanvas.BindGroupFormat;
	var id : Float;
	var device : GraphicsDevice;
	var definition : {
		@:optional
		var name : String;
		@:optional
		var attributes : haxe.DynamicAccess<String>;
		var vshader : String;
		@:optional
		var fshader : String;
		@:optional
		var useTransformFeedback : Bool;
		@:optional
		var shaderLanguage : String;
	};
	var name : String;
	var impl : Dynamic;
	/**
		Initialize a shader back to its default state.
	**/
	private var init : Dynamic;
	var ready : Bool;
	var failed : Bool;
	final label : String;
	/**
		Frees resources associated with this shader.
	**/
	function destroy():Void;
	/**
		Called when the WebGL context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	function restoreContext():Void;
	static var prototype : Shader;
}