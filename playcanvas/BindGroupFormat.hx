package playcanvas;

@jsInaccessible extern class BindGroupFormat {
	function new(graphicsDevice:GraphicsDevice, ?bufferFormats:Array<BindBufferFormat>, ?textureFormats:Array<BindTextureFormat>);
	var id : Float;
	var device : GraphicsDevice;
	var bufferFormats : Array<BindBufferFormat>;
	var bufferFormatsMap : js.lib.Map<String, Float>;
	var textureFormats : Array<BindTextureFormat>;
	var textureFormatsMap : js.lib.Map<String, Float>;
	var impl : Dynamic;
	/**
		Frees resources associated with this bind group.
	**/
	function destroy():Void;
	/**
		Returns format of texture with specified name.
	**/
	function getTexture(name:String):BindTextureFormat;
	function getShaderDeclarationTextures(bindGroup:Dynamic):String;
	function loseContext():Void;
	static var prototype : BindGroupFormat;
}