package playcanvas;

@:jsRequire("playcanvas", "gfx") @valueModuleOnly extern class Gfx {
	/**
		Clamps texture coordinate to the range 0 to 1.
	**/
	static final ADDRESS_CLAMP_TO_EDGE : Float;
	/**
		Texture coordinate to be set to the fractional part if the integer part is even. If the integer
		part is odd, then the texture coordinate is set to 1 minus the fractional part.
	**/
	static final ADDRESS_MIRRORED_REPEAT : Float;
	/**
		Ignores the integer part of texture coordinates, using only the fractional part.
	**/
	static final ADDRESS_REPEAT : Float;
	/**
		Multiply all fragment components by zero.
	**/
	static final BLENDMODE_ZERO : Float;
	/**
		Multiply all fragment components by one.
	**/
	static final BLENDMODE_ONE : Float;
	/**
		Multiply all fragment components by the components of the source fragment.
	**/
	static final BLENDMODE_SRC_COLOR : Float;
	/**
		Multiply all fragment components by one minus the components of the source fragment.
	**/
	static final BLENDMODE_ONE_MINUS_SRC_COLOR : Float;
	/**
		Multiply all fragment components by the components of the destination fragment.
	**/
	static final BLENDMODE_DST_COLOR : Float;
	/**
		Multiply all fragment components by one minus the components of the destination fragment.
	**/
	static final BLENDMODE_ONE_MINUS_DST_COLOR : Float;
	/**
		Multiply all fragment components by the alpha value of the source fragment.
	**/
	static final BLENDMODE_SRC_ALPHA : Float;
	/**
		Multiply all fragment components by the alpha value of the source fragment.
	**/
	static final BLENDMODE_SRC_ALPHA_SATURATE : Float;
	/**
		Multiply all fragment components by one minus the alpha value of the source fragment.
	**/
	static final BLENDMODE_ONE_MINUS_SRC_ALPHA : Float;
	/**
		Multiply all fragment components by the alpha value of the destination fragment.
	**/
	static final BLENDMODE_DST_ALPHA : Float;
	/**
		Multiply all fragment components by one minus the alpha value of the destination fragment.
	**/
	static final BLENDMODE_ONE_MINUS_DST_ALPHA : Float;
	/**
		The data store contents will be modified once and used many times.
	**/
	static final BUFFER_STATIC : Float;
	/**
		The data store contents will be modified repeatedly and used many times.
	**/
	static final BUFFER_DYNAMIC : Float;
	/**
		The data store contents will be modified once and used at most a few times.
	**/
	static final BUFFER_STREAM : Float;
	/**
		No triangles are culled.
	**/
	static final CULLFACE_NONE : Float;
	/**
		Triangles facing away from the view direction are culled.
	**/
	static final CULLFACE_BACK : Float;
	/**
		Triangles facing the view direction are culled.
	**/
	static final CULLFACE_FRONT : Float;
	/**
		Triangles are culled regardless of their orientation with respect to the view direction. Note
		that point or line primitives are unaffected by this render state.
	**/
	static final CULLFACE_FRONTANDBACK : Float;
	/**
		Signed byte vertex element type.
	**/
	static final ELEMENTTYPE_INT8 : Float;
	/**
		Unsigned byte vertex element type.
	**/
	static final ELEMENTTYPE_UINT8 : Float;
	/**
		Signed short vertex element type.
	**/
	static final ELEMENTTYPE_INT16 : Float;
	/**
		Unsigned short vertex element type.
	**/
	static final ELEMENTTYPE_UINT16 : Float;
	/**
		Signed integer vertex element type.
	**/
	static final ELEMENTTYPE_INT32 : Float;
	/**
		Unsigned integer vertex element type.
	**/
	static final ELEMENTTYPE_UINT32 : Float;
	/**
		Floating point vertex element type.
	**/
	static final ELEMENTTYPE_FLOAT32 : Float;
	/**
		Point sample filtering.
	**/
	static final FILTER_NEAREST : Float;
	/**
		Bilinear filtering.
	**/
	static final FILTER_LINEAR : Float;
	/**
		Use the nearest neighbor in the nearest mipmap level.
	**/
	static final FILTER_NEAREST_MIPMAP_NEAREST : Float;
	/**
		Linearly interpolate in the nearest mipmap level.
	**/
	static final FILTER_NEAREST_MIPMAP_LINEAR : Float;
	/**
		Use the nearest neighbor after linearly interpolating between mipmap levels.
	**/
	static final FILTER_LINEAR_MIPMAP_NEAREST : Float;
	/**
		Linearly interpolate both the mipmap levels and between texels.
	**/
	static final FILTER_LINEAR_MIPMAP_LINEAR : Float;
	/**
		8-bit unsigned vertex indices (0 to 255).
	**/
	static final INDEXFORMAT_UINT8 : Float;
	/**
		16-bit unsigned vertex indices (0 to 65,535).
	**/
	static final INDEXFORMAT_UINT16 : Float;
	/**
		32-bit unsigned vertex indices (0 to 4,294,967,295).
	**/
	static final INDEXFORMAT_UINT32 : Float;
	/**
		16-bit RGB (5-bits for red channel, 6 for green and 5 for blue).
	**/
	static final PIXELFORMAT_RGB565 : Float;
	/**
		24-bit RGB (8-bits for red channel, 8 for green and 8 for blue).
	**/
	static final PIXELFORMAT_RGB8 : Float;
	/**
		32-bit RGBA (8-bits for red channel, 8 for green, 8 for blue with 8-bit alpha).
	**/
	static final PIXELFORMAT_RGBA8 : Float;
	/**
		List of distinct points.
	**/
	static final PRIMITIVE_POINTS : Float;
	/**
		Discrete list of line segments.
	**/
	static final PRIMITIVE_LINES : Float;
	/**
		List of points that are linked sequentially by line segments, with a closing line segment
		between the last and first points.
	**/
	static final PRIMITIVE_LINELOOP : Float;
	/**
		List of points that are linked sequentially by line segments.
	**/
	static final PRIMITIVE_LINESTRIP : Float;
	/**
		Discrete list of triangles.
	**/
	static final PRIMITIVE_TRIANGLES : Float;
	/**
		Connected strip of triangles where a specified vertex forms a triangle using the previous two.
	**/
	static final PRIMITIVE_TRISTRIP : Float;
	/**
		Connected fan of triangles where the first vertex forms triangles with the following pairs of vertices.
	**/
	static final PRIMITIVE_TRIFAN : Float;
	/**
		Vertex attribute to be treated as a position.
	**/
	static final SEMANTIC_POSITION : String;
	/**
		Vertex attribute to be treated as a normal.
	**/
	static final SEMANTIC_NORMAL : String;
	/**
		Vertex attribute to be treated as a color.
	**/
	static final SEMANTIC_COLOR : String;
	static final SEMANTIC_TEXCOORD : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 0).
	**/
	static final SEMANTIC_TEXCOORD0 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 1).
	**/
	static final SEMANTIC_TEXCOORD1 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR0 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR1 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR2 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR3 : String;
	/**
		Read only. Any changes to the locked mip level's pixels will not update the texture.
	**/
	static final TEXTURELOCK_READ : Float;
	/**
		Write only. The contents of the specified mip level will be entirely replaced.
	**/
	static final TEXTURELOCK_WRITE : Float;
	/**
		Draws a screen-space quad using a specific shader.
	**/
	static function drawQuadWithShader(device:GraphicsDevice, target:Null<RenderTarget>, shader:Shader, ?rect:Vec4, ?scissorRect:Vec4, args:haxe.extern.Rest<Dynamic>):Void;
	static final shaderChunks : Dynamic;
	static function ContextCreationError(message:Dynamic):Void;
	static function UnsupportedBrowserError(message:Dynamic):Void;
}