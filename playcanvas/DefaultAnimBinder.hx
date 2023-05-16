package playcanvas;

/**
	Implementation of {@link AnimBinder} for animating a skeleton in the graph-node hierarchy.
**/
@:jsRequire("playcanvas", "DefaultAnimBinder") extern class DefaultAnimBinder {
	function new(graph:Dynamic);
	var graph : Dynamic;
	var _mask : Dynamic;
	var nodes : { };
	var targetCache : { };
	var visitedFallbackGraphPaths : { };
	var nodeCounts : { };
	var activeNodes : Array<Dynamic>;
	var handlers : {
		dynamic function localPosition(node:Dynamic):AnimTarget;
		dynamic function localRotation(node:Dynamic):AnimTarget;
		dynamic function localScale(node:Dynamic):AnimTarget;
		dynamic function weight(node:Dynamic, weightName:Dynamic):AnimTarget;
		dynamic function materialTexture(node:Dynamic, textureName:Dynamic):AnimTarget;
	};
	dynamic function _isPathInMask(path:Dynamic, checkMaskValue:Dynamic):Bool;
	function _isPathActive(path:Dynamic):Bool;
	function findNode(path:Dynamic):Dynamic;
	/**
		Resolve the provided target path and return an instance of {@link AnimTarget} which will
		handle setting the value, or return null if no such target exists.
	**/
	function resolve(path:Dynamic):Dynamic;
	/**
		Called when the {@link AnimEvaluator} no longer has a curve driving the given key.
	**/
	function unresolve(path:Dynamic):Void;
	/**
		Called by {@link AnimEvaluator} once a frame after animation updates are done.
	**/
	function update(deltaTime:Dynamic):Void;
	function assignMask(mask:Dynamic):Bool;
	static var prototype : DefaultAnimBinder;
	static function createAnimTarget(func:Dynamic, type:Dynamic, valueCount:Dynamic, node:Dynamic, propertyPath:Dynamic, componentType:Dynamic):AnimTarget;
}