package playcanvas;

/**
	This object allows you to configure and use the transform feedback feature (WebGL2 only). How to
	use:
	
	1. First, check that you're on WebGL2, by looking at the `app.graphicsDevice.webgl2`` value.
	2. Define the outputs in your vertex shader. The syntax is `out vec3 out_vertex_position`,
	note that there must be out_ in the name. You can then simply assign values to these outputs in
	VS. The order and size of shader outputs must match the output buffer layout.
	3. Create the shader using `TransformFeedback.createShader(device, vsCode, yourShaderName)`.
	4. Create/acquire the input vertex buffer. Can be any VertexBuffer, either manually created, or
	from a Mesh.
	5. Create the TransformFeedback object: `const tf = new TransformFeedback(inputBuffer)`. This
	object will internally create an output buffer.
	6. Run the shader: `tf.process(shader)`. Shader will take the input buffer, process it and write
	to the output buffer, then the input/output buffers will be automatically swapped, so you'll
	immediately see the result.
	
	```javascript
	// *** shader asset ***
	attribute vec3 vertex_position;
	attribute vec3 vertex_normal;
	attribute vec2 vertex_texCoord0;
	out vec3 out_vertex_position;
	out vec3 out_vertex_normal;
	out vec2 out_vertex_texCoord0;
	void main(void) {
	     // read position and normal, write new position (push away)
	     out_vertex_position = vertex_position + vertex_normal * 0.01;
	     // pass other attributes unchanged
	     out_vertex_normal = vertex_normal;
	     out_vertex_texCoord0 = vertex_texCoord0;
	}
	```
	
	```javascript
	// *** script asset ***
	var TransformExample = pc.createScript('transformExample');
	
	// attribute that references shader asset and material
	TransformExample.attributes.add('shaderCode', { type: 'asset', assetType: 'shader' });
	TransformExample.attributes.add('material', { type: 'asset', assetType: 'material' });
	
	TransformExample.prototype.initialize = function() {
	     const device = this.app.graphicsDevice;
	     const mesh = pc.createTorus(device, { tubeRadius: 0.01, ringRadius: 3 });
	     const meshInstance = new pc.MeshInstance(mesh, this.material.resource);
	     const entity = new pc.Entity();
	     entity.addComponent('render', {
	         type: 'asset',
	         meshInstances: [meshInstance]
	     });
	     app.root.addChild(entity);
	
	     // if webgl2 is not supported, transform-feedback is not available
	     if (!device.webgl2) return;
	     const inputBuffer = mesh.vertexBuffer;
	     this.tf = new pc.TransformFeedback(inputBuffer);
	     this.shader = pc.TransformFeedback.createShader(device, this.shaderCode.resource, "tfMoveUp");
	};
	
	TransformExample.prototype.update = function(dt) {
	     if (!this.app.graphicsDevice.webgl2) return;
	     this.tf.process(this.shader);
	};
	```
**/
@:jsRequire("playcanvas", "TransformFeedback") extern class TransformFeedback {
	/**
		Create a new TransformFeedback instance.
	**/
	function new(inputBuffer:VertexBuffer, ?usage:Float);
	var device : GraphicsDevice;
	var _inputBuffer : VertexBuffer;
	var _outputBuffer : VertexBuffer;
	/**
		Destroys the transform feedback helper object.
	**/
	function destroy():Void;
	/**
		Runs the specified shader on the input buffer, writes results into the new buffer, then
		optionally swaps input/output.
	**/
	function process(shader:Shader, ?swap:Bool):Void;
	/**
		The current input buffer.
	**/
	final inputBuffer : VertexBuffer;
	/**
		The current output buffer.
	**/
	final outputBuffer : VertexBuffer;
	static var prototype : TransformFeedback;
	/**
		Creates a transform feedback ready vertex shader from code.
	**/
	static function createShader(graphicsDevice:GraphicsDevice, vertexCode:String, name:String):Shader;
}