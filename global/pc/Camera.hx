package global.pc;

/**
	A camera.
**/
@:native("pc.Camera") extern class Camera {
	function new();
	var shaderPassInfo : Null<playcanvas.ShaderPassInfo>;
	var _aspectRatio : Float;
	var _aspectRatioMode : Float;
	var _calculateProjection : Dynamic;
	var _calculateTransform : Dynamic;
	var _clearColor : Color;
	var _clearColorBuffer : Bool;
	var _clearDepth : Float;
	var _clearDepthBuffer : Bool;
	var _clearStencil : Float;
	var _clearStencilBuffer : Bool;
	var _cullingMask : Float;
	var _cullFaces : Bool;
	var _farClip : Float;
	var _flipFaces : Bool;
	var _fov : Float;
	var _frustumCulling : Bool;
	var _horizontalFov : Bool;
	var _layers : Array<Float>;
	var _layersSet : js.lib.Set<Float>;
	var _nearClip : Float;
	var _node : Dynamic;
	var _orthoHeight : Float;
	var _projection : Float;
	var _rect : Vec4;
	var _renderTarget : Dynamic;
	var _scissorRect : Vec4;
	var _scissorRectClear : Bool;
	var _aperture : Float;
	var _shutter : Float;
	var _sensitivity : Float;
	var _projMat : Mat4;
	var _projMatDirty : Bool;
	var _projMatSkybox : Mat4;
	var _viewMat : Mat4;
	var _viewMatDirty : Bool;
	var _viewProjMat : Mat4;
	var _viewProjMatDirty : Bool;
	var frustum : Frustum;
	var _xr : Dynamic;
	var _xrProperties : {
		var horizontalFov : Bool;
		var fov : Float;
		var aspectRatio : Float;
		var farClip : Float;
		var nearClip : Float;
	};
	/**
		True if the camera clears the full render target. (viewport / scissor are full size)
	**/
	final fullSizeClearRect : Bool;
	var aspectRatio : Float;
	var aspectRatioMode : Float;
	var calculateProjection : Dynamic;
	var calculateTransform : Dynamic;
	var clearColor : Color;
	var clearColorBuffer : Bool;
	var clearDepth : Float;
	var clearDepthBuffer : Bool;
	var clearStencil : Float;
	var clearStencilBuffer : Bool;
	var cullingMask : Float;
	var cullFaces : Bool;
	var farClip : Float;
	var flipFaces : Bool;
	var fov : Float;
	var frustumCulling : Bool;
	var horizontalFov : Bool;
	var layers : Array<Float>;
	final layersSet : js.lib.Set<Float>;
	var nearClip : Float;
	var node : Dynamic;
	var orthoHeight : Float;
	var projection : Float;
	final projectionMatrix : Mat4;
	var rect : Vec4;
	var renderTarget : Dynamic;
	var scissorRect : Vec4;
	final viewMatrix : Mat4;
	var aperture : Float;
	var sensitivity : Float;
	var shutter : Float;
	var xr : Dynamic;
	/**
		Creates a duplicate of the camera.
	**/
	function clone():Camera;
	/**
		Copies one camera to another.
	**/
	function copy(other:Camera):Camera;
	function _updateViewProjMat():Void;
	/**
		Convert a point from 3D world space to 2D canvas pixel space.
	**/
	function worldToScreen(worldCoord:Vec3, cw:Float, ch:Float, ?screenCoord:Vec3):Vec3;
	/**
		Convert a point from 2D canvas pixel space to 3D world space.
	**/
	function screenToWorld(x:Float, y:Float, z:Float, cw:Float, ch:Float, ?worldCoord:Vec3):Vec3;
	function _evaluateProjectionMatrix():Void;
	function getProjectionMatrixSkybox():Mat4;
	function getExposure():Float;
	function getScreenSize(sphere:Dynamic):Float;
	/**
		Returns an array of corners of the frustum of the camera in the local coordinate system of the camera.
	**/
	function getFrustumCorners(?near:Float, ?far:Float):Array<Vec3>;
	/**
		Sets XR camera properties that should be derived physical camera in {@link XrManager}.
	**/
	function setXrProperties(?properties:{ @:optional var aspectRatio : Float; @:optional var farClip : Float; @:optional var fov : Float; @:optional var horizontalFov : Bool; @:optional var nearClip : Float; }):Void;
	static var prototype : Camera;
}