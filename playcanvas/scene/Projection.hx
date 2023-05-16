package playcanvas.scene;

@:jsRequire("playcanvas", "scene.Projection") @valueModuleOnly extern class Projection {
	/**
		An orthographic camera projection where the frustum shape is essentially a cuboid.
	**/
	static final ORTHOGRAPHIC : Float;
	/**
		A perspective camera projection where the frustum shape is essentially pyramidal.
	**/
	static final PERSPECTIVE : Float;
}