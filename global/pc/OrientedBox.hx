package global.pc;

/**
	Oriented Box.
**/
@:native("pc.OrientedBox") extern class OrientedBox {
	/**
		Create a new OrientedBox instance.
	**/
	function new(?worldTransform:Mat4, ?halfExtents:Vec3);
	var halfExtents : Vec3;
	private var _modelTransform : Dynamic;
	private var _worldTransform : Dynamic;
	private var _aabb : Dynamic;
	/**
		The world transform of the OBB.
	**/
	var worldTransform : Mat4;
	/**
		Test if a ray intersects with the OBB.
	**/
	function intersectsRay(ray:Ray, ?point:Vec3):Bool;
	/**
		Test if a point is inside a OBB.
	**/
	function containsPoint(point:Vec3):Bool;
	/**
		Test if a Bounding Sphere is overlapping, enveloping, or inside this OBB.
	**/
	function intersectsBoundingSphere(sphere:BoundingSphere):Bool;
	static var prototype : OrientedBox;
}