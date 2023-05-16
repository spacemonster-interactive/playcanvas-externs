package playcanvas;

/**
	Axis-Aligned Bounding Box.
**/
@:jsRequire("playcanvas", "BoundingBox") extern class BoundingBox {
	/**
		Create a new BoundingBox instance. The bounding box is axis-aligned.
	**/
	function new(?center:Vec3, ?halfExtents:Vec3);
	/**
		Center of box.
	**/
	var center : Vec3;
	/**
		Half the distance across the box in each axis.
	**/
	var halfExtents : Vec3;
	private var _min : Dynamic;
	private var _max : Dynamic;
	/**
		Combines two bounding boxes into one, enclosing both.
	**/
	function add(other:BoundingBox):Void;
	/**
		Copies the contents of a source AABB.
	**/
	function copy(src:BoundingBox):Void;
	/**
		Returns a clone of the AABB.
	**/
	function clone():BoundingBox;
	/**
		Test whether two axis-aligned bounding boxes intersect.
	**/
	function intersects(other:BoundingBox):Bool;
	function _intersectsRay(ray:Dynamic, point:Dynamic):Bool;
	function _fastIntersectsRay(ray:Dynamic):Bool;
	/**
		Test if a ray intersects with the AABB.
	**/
	function intersectsRay(ray:Ray, ?point:Vec3):Bool;
	/**
		Sets the minimum and maximum corner of the AABB. Using this function is faster than
		assigning min and max separately.
	**/
	function setMinMax(min:Vec3, max:Vec3):Void;
	/**
		Return the minimum corner of the AABB.
	**/
	function getMin():Vec3;
	/**
		Return the maximum corner of the AABB.
	**/
	function getMax():Vec3;
	/**
		Test if a point is inside a AABB.
	**/
	function containsPoint(point:Vec3):Bool;
	/**
		Set an AABB to enclose the specified AABB if it were to be transformed by the specified 4x4
		matrix.
	**/
	function setFromTransformedAabb(aabb:BoundingBox, m:Mat4, ?ignoreScale:Bool):Void;
	/**
		Compute the size of the AABB to encapsulate all specified vertices.
	**/
	function compute(vertices:ts.AnyOf2<Array<Float>, js.lib.Float32Array>, ?numVerts:Float):Void;
	/**
		Test if a Bounding Sphere is overlapping, enveloping, or inside this AABB.
	**/
	function intersectsBoundingSphere(sphere:BoundingSphere):Bool;
	function _distanceToBoundingSphereSq(sphere:Dynamic):Float;
	function _expand(expandMin:Dynamic, expandMax:Dynamic):Void;
	static var prototype : BoundingBox;
	/**
		Compute the min and max bounding values to encapsulate all specified vertices.
	**/
	static function computeMinMax(vertices:ts.AnyOf2<Array<Float>, js.lib.Float32Array>, min:Vec3, max:Vec3, ?numVerts:Float):Void;
}