package playcanvas.scene;

@:jsRequire("playcanvas", "scene.procedural") @valueModuleOnly extern class Procedural {
	/**
		Generates tangent information from the specified positions, normals, texture coordinates and
		triangle indices. See {@link createMesh}.
	**/
	static function calculateTangents(positions:Array<Float>, normals:Array<Float>, uvs:Array<Float>, indices:Array<Float>):Array<Float>;
	/**
		Creates a new mesh object from the supplied vertex information and topology.
	**/
	static function createMesh(device:playcanvas.GraphicsDevice, positions:Array<Float>, ?opts:{ @:optional var normals : Array<Float>; @:optional var tangents : Array<Float>; @:optional var colors : Array<Float>; @:optional var uvs : Array<Float>; @:optional var uvs1 : Array<Float>; @:optional var blendIndices : Array<Float>; @:optional var blendWeights : Array<Float>; @:optional var indices : Array<Float>; }):playcanvas.Mesh;
	/**
		Creates a procedural torus-shaped mesh.
		
		The size, shape and tesselation properties of the torus can be controlled via function
		parameters. By default, the function will create a torus in the XZ-plane with a tube radius of
		0.2, a ring radius of 0.3, 20 segments and 30 sides.
		
		Note that the torus is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the torus's mesh.
	**/
	static function createTorus(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var tubeRadius : Float; @:optional var ringRadius : Float; @:optional var segments : Float; @:optional var sides : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural cylinder-shaped mesh.
		
		The size, shape and tesselation properties of the cylinder can be controlled via function
		parameters. By default, the function will create a cylinder standing vertically centered on the
		XZ-plane with a radius of 0.5, a height of 1.0, 1 height segment and 20 cap segments.
		
		Note that the cylinder is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the cylinder's mesh.
	**/
	static function createCylinder(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var capSegments : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural capsule-shaped mesh.
		
		The size, shape and tesselation properties of the capsule can be controlled via function
		parameters. By default, the function will create a capsule standing vertically centered on the
		XZ-plane with a radius of 0.25, a height of 1.0, 1 height segment and 10 cap segments.
		
		Note that the capsule is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the capsule's mesh.
	**/
	static function createCapsule(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var sides : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural cone-shaped mesh.
		
		The size, shape and tesselation properties of the cone can be controlled via function
		parameters. By default, the function will create a cone standing vertically centered on the
		XZ-plane with a base radius of 0.5, a height of 1.0, 5 height segments and 20 cap segments.
		
		Note that the cone is created with UVs in the range of 0 to 1. Additionally, tangent information
		is generated into the vertex buffer of the cone's mesh.
	**/
	static function createCone(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var baseRadius : Float; @:optional var peakRadius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var capSegments : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural sphere-shaped mesh.
		
		The size and tesselation properties of the sphere can be controlled via function parameters. By
		default, the function will create a sphere centered on the object space origin with a radius of
		0.5 and 16 segments in both longitude and latitude.
		
		Note that the sphere is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the sphere's mesh.
	**/
	static function createSphere(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var latitudeBands : Float; @:optional var longitudeBands : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural plane-shaped mesh.
		
		The size and tesselation properties of the plane can be controlled via function parameters. By
		default, the function will create a plane centered on the object space origin with a width and
		length of 1.0 and 5 segments in either axis (50 triangles). The normal vector of the plane is
		aligned along the positive Y axis.
		
		Note that the plane is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the plane's mesh.
	**/
	static function createPlane(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var halfExtents : playcanvas.Vec2; @:optional var widthSegments : Float; @:optional var lengthSegments : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
	/**
		Creates a procedural box-shaped mesh.
		
		The size, shape and tesselation properties of the box can be controlled via function parameters.
		By default, the function will create a box centered on the object space origin with a width,
		length and height of 1.0 unit and 10 segments in either axis (50 triangles per face).
		
		Note that the box is created with UVs in the range of 0 to 1 on each face. Additionally, tangent
		information is generated into the vertex buffer of the box's mesh.
	**/
	static function createBox(device:playcanvas.GraphicsDevice, ?opts:{ @:optional var halfExtents : playcanvas.Vec3; @:optional var widthSegments : Float; @:optional var lengthSegments : Float; @:optional var heightSegments : Float; @:optional var calculateTangents : Bool; }):playcanvas.Mesh;
}