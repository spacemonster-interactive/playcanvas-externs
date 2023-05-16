package global.pc;

/**
	Used to manage multiple post effects for a camera.
**/
@:native("pc.PostEffectQueue") extern class PostEffectQueue {
	/**
		Create a new PostEffectQueue instance.
	**/
	function new(app:AppBase, camera:CameraComponent);
	var app : AppBase;
	var camera : CameraComponent;
	/**
		Render target where the postprocessed image needs to be rendered to. Defaults to null
		which is main framebuffer.
	**/
	var destinationRenderTarget : RenderTarget;
	/**
		All of the post effects in the queue.
	**/
	var effects : Array<playcanvas.PostEffect__>;
	/**
		If the queue is enabled it will render all of its effects, otherwise it will not render
		anything.
	**/
	var enabled : Bool;
	var depthTarget : Dynamic;
	/**
		Allocate a color buffer texture.
	**/
	private var _allocateColorBuffer : Dynamic;
	/**
		Creates a render target with the dimensions of the canvas, with an optional depth buffer.
	**/
	private var _createOffscreenTarget : Dynamic;
	function _resizeOffscreenTarget(rt:Dynamic):Void;
	function _destroyOffscreenTarget(rt:Dynamic):Void;
	/**
		Adds a post effect to the queue. If the queue is disabled adding a post effect will
		automatically enable the queue.
	**/
	function addEffect(effect:playcanvas.PostEffect__):Void;
	var _sourceTarget : Dynamic;
	var _newPostEffect : playcanvas.PostEffect__;
	/**
		Removes a post effect from the queue. If the queue becomes empty it will be disabled
		automatically.
	**/
	function removeEffect(effect:playcanvas.PostEffect__):Void;
	function _requestDepthMaps():Void;
	function _releaseDepthMaps():Void;
	function _requestDepthMap():Void;
	function _releaseDepthMap():Void;
	/**
		Removes all the effects from the queue and disables it.
	**/
	function destroy():Void;
	/**
		Enables the queue and all of its effects. If there are no effects then the queue will not be
		enabled.
	**/
	function enable():Void;
	/**
		Disables the queue and all of its effects.
	**/
	function disable():Void;
	/**
		Handler called when the application's canvas element is resized.
	**/
	private var _onCanvasResized : Dynamic;
	function resizeRenderTargets():Void;
	function onCameraRectChanged(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	static var prototype : PostEffectQueue;
}