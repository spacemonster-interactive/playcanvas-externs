package global.pc;

/**
	A skin contains data about the bones in a hierarchy that drive a skinned mesh animation.
	Specifically, the skin stores the bone name and inverse bind matrix and for each bone. Inverse
	bind matrices are instrumental in the mathematics of vertex skinning.
**/
@:native("pc.Skin") extern class Skin {
	/**
		Create a new Skin instance.
	**/
	function new(graphicsDevice:GraphicsDevice, ibp:Array<Mat4>, boneNames:Array<String>);
	var device : GraphicsDevice;
	var inverseBindPose : Array<Mat4>;
	var boneNames : Array<String>;
	static var prototype : Skin;
}