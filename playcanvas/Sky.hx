package playcanvas;

/**
	A visual representation of the sky.
**/
@jsInaccessible extern class Sky {
	function new(device:GraphicsDevice, scene:Scene, texture:Texture);
	/**
		Mesh instance representing the visuals of the sky.
	**/
	var meshInstance : MeshInstance;
	var skyLayer : Layer;
	function destroy():Void;
	static var prototype : Sky;
}