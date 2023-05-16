package global.pc;

/**
	Depth Sensing provides depth information which is reconstructed using the underlying AR system.
	It provides the ability to query depth values (CPU path) or access a depth texture (GPU path).
	Depth information can be used (not limited to) for reconstructing real world geometry, virtual
	object placement, occlusion of virtual objects by real world geometry and more.
	
	```javascript
	// CPU path
	const depthSensing = app.xr.depthSensing;
	if (depthSensing.available) {
	     // get depth in the middle of the screen, value is in meters
	     const depth = depthSensing.getDepth(depthSensing.width / 2, depthSensing.height / 2);
	}
	```
	
	```javascript
	// GPU path, attaching texture to material
	material.diffuseMap = depthSensing.texture;
	material.setParameter('matrix_depth_uv', depthSensing.uvMatrix.data);
	material.setParameter('depth_raw_to_meters', depthSensing.rawValueToMeters);
	material.update();
	
	// update UV transformation matrix on depth texture resize
	depthSensing.on('resize', function () {
	     material.setParameter('matrix_depth_uv', depthSensing.uvMatrix.data);
	     material.setParameter('depth_raw_to_meters', depthSensing.rawValueToMeters);
	});
	```
	
	```javascript
	// GLSL shader to unpack depth texture
	varying vec2 vUv0;
	
	uniform sampler2D texture_depthSensingMap;
	uniform mat4 matrix_depth_uv;
	uniform float depth_raw_to_meters;
	
	void main(void) {
	     // transform UVs using depth matrix
	     vec2 texCoord = (matrix_depth_uv * vec4(vUv0.xy, 0.0, 1.0)).xy;
	
	     // get luminance alpha components from depth texture
	     vec2 packedDepth = texture2D(texture_depthSensingMap, texCoord).ra;
	
	     // unpack into single value in millimeters
	     float depth = dot(packedDepth, vec2(255.0, 256.0 * 255.0)) * depth_raw_to_meters; // m
	
	     // normalize: 0m to 8m distance
	     depth = min(depth / 8.0, 1.0); // 0..1 = 0..8
	
	     // paint scene from black to white based on distance
	     gl_FragColor = vec4(depth, depth, depth, 1.0);
	}
	```
**/
@:native("pc.XrDepthSensing") extern class XrDepthSensing extends EventHandler {
	/**
		Create a new XrDepthSensing instance.
	**/
	function new(manager:XrManager);
	private var _manager : Dynamic;
	private var _available : Dynamic;
	private var _depthInfoCpu : Dynamic;
	private var _depthInfoGpu : Dynamic;
	private var _usage : Dynamic;
	private var _dataFormat : Dynamic;
	private var _matrixDirty : Dynamic;
	private var _matrix : Dynamic;
	private var _emptyBuffer : Dynamic;
	private var _depthBuffer : Dynamic;
	private var _texture : Dynamic;
	function destroy():Void;
	private var _onSessionStart : Dynamic;
	private var _onSessionEnd : Dynamic;
	private var _updateTexture : Dynamic;
	function update(frame:Dynamic, view:Dynamic):Void;
	/**
		Get depth value from depth information in meters. UV is in range of 0..1, with origin in
		top-left corner of a texture.
	**/
	function getDepth(u:Float, v:Float):Null<Float>;
	/**
		True if Depth Sensing is supported.
	**/
	final supported : Bool;
	/**
		True if depth sensing information is available.
	**/
	final available : Bool;
	/**
		Whether the usage is CPU or GPU.
	**/
	final usage : String;
	/**
		The depth sensing data format.
	**/
	final dataFormat : String;
	/**
		Width of depth texture or 0 if not available.
	**/
	final width : Float;
	/**
		Height of depth texture or 0 if not available.
	**/
	final height : Float;
	/**
		Texture that contains packed depth information. The format of this texture is
		{@link PIXELFORMAT_LA8}. It is UV transformed based on the underlying AR system which can
		be normalized using {@link XrDepthSensing#uvMatrix}.
	**/
	final texture : Texture;
	/**
		4x4 matrix that should be used to transform depth texture UVs to normalized UVs in a shader.
		It is updated when the depth texture is resized. Refer to {@link XrDepthSensing#resize}.
	**/
	final uvMatrix : Mat4;
	/**
		Multiply this coefficient number by raw depth value to get depth in meters.
	**/
	final rawValueToMeters : Float;
	static var prototype : XrDepthSensing;
}