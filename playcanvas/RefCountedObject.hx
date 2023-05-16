package playcanvas;

/**
	Base class that implements reference counting for objects.
**/
@jsInaccessible extern class RefCountedObject {
	function new();
	private var _refCount : Dynamic;
	/**
		Increments the reference counter.
	**/
	function incRefCount():Void;
	/**
		Decrements the reference counter.
	**/
	function decRefCount():Void;
	/**
		The current reference count.
	**/
	final refCount : Float;
	static var prototype : RefCountedObject;
}