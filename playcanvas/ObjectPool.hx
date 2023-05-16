package playcanvas;

/**
	A pool of reusable objects of the same type. Designed to promote reuse of objects to reduce
	garbage collection.
**/
@jsInaccessible extern class ObjectPool {
	function new(constructorFunc:haxe.Constraints.Function, size:Float);
	/**
		Array of object instances.
	**/
	private var _pool : Dynamic;
	/**
		The number of object instances that are currently allocated.
	**/
	private var _count : Dynamic;
	var _constructor : haxe.Constraints.Function;
	private var _resize : Dynamic;
	/**
		Returns an object instance from the pool. If no instances are available, the pool will be
		doubled in size and a new instance will be returned.
	**/
	function allocate():Dynamic;
	/**
		All object instances in the pool will be available again. The pool itself will not be
		resized.
	**/
	function freeAll():Void;
	static var prototype : ObjectPool;
}