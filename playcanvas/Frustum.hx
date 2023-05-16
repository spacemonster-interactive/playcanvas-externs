package playcanvas;

/**
	A frustum is a shape that defines the viewing space of a camera. It can be used to determine
	visibility of points and bounding spheres. Typically, you would not create a Frustum shape
	directly, but instead query {@link CameraComponent#frustum}.
**/
@:jsRequire("playcanvas", "Frustum") extern class Frustum {
	function new();
	var planes : Array<Dynamic>;
	/**
		Updates the frustum shape based on the supplied 4x4 matrix.
	**/
	function setFromMat4(matrix:Mat4):Void;
	/**
		Tests whether a point is inside the frustum. Note that points lying in a frustum plane are
		considered to be outside the frustum.
	**/
	function containsPoint(point:Vec3):Bool;
	/**
		Tests whether a bounding sphere intersects the frustum. If the sphere is outside the
		frustum, zero is returned. If the sphere intersects the frustum, 1 is returned. If the
		sphere is completely inside the frustum, 2 is returned. Note that a sphere touching a
		frustum plane from the outside is considered to be outside the frustum.
	**/
	function containsSphere(sphere:BoundingSphere):Float;
	static var prototype : Frustum;
}