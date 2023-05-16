package global.pc;

/**
	DepthState is a descriptor that defines how the depth value of the fragment is used by the
	rendering pipeline. A depth state can be set on a material using {@link Material#depthState},
	or in some cases on the graphics device using {@link GraphicsDevice#setDepthState}.
	
	For the best performance, do not modify depth state after it has been created, but create
	multiple depth states and assign them to the material or graphics device as needed.
**/
@:native("pc.DepthState") extern class DepthState {
	/**
		Create a new Depth State instance.
	**/
	function new(?func:Float, ?write:Bool);
	/**
		Bitfield representing the depth state.
	**/
	private var data : Dynamic;
	/**
		Controls how the depth of the fragment is compared against the current depth contained in
		the depth buffer. Can be:
		
		- {@link FUNC_NEVER}: don't draw
		- {@link FUNC_LESS}: draw if new depth < depth buffer
		- {@link FUNC_EQUAL}: draw if new depth == depth buffer
		- {@link FUNC_LESSEQUAL}: draw if new depth <= depth buffer
		- {@link FUNC_GREATER}: draw if new depth > depth buffer
		- {@link FUNC_NOTEQUAL}: draw if new depth != depth buffer
		- {@link FUNC_GREATEREQUAL}: draw if new depth >= depth buffer
		- {@link FUNC_ALWAYS}: always draw
	**/
	var func : Float;
	/**
		If true, shader write a depth value to the depth buffer of the currently active render
		target. If false, no depth value is written.
	**/
	var write : Bool;
	/**
		If true, a shader fragment is only written to the current render target if it passes the depth
		test. If false, it is written regardless of what is in the depth buffer. Note that when depth
		testing is disabled, writes to the depth buffer are also disabled. Defaults to true.
	**/
	var test : Bool;
	/**
		Copies the contents of a source depth state to this depth state.
	**/
	function copy(rhs:DepthState):DepthState;
	/**
		Returns an identical copy of the specified depth state.
	**/
	function clone():DepthState;
	final key : Float;
	/**
		Reports whether two DepthStates are equal.
	**/
	function equals(rhs:DepthState):Bool;
	static var prototype : DepthState;
	/**
		A default depth state that has the depth testing function set to {@link FUNC_LESSEQUAL} and depth writes enabled.
	**/
	static final DEFAULT : DepthState;
	/**
		A depth state that always passes the fragment but does not write depth to the depth buffer.
	**/
	static final NODEPTH : DepthState;
	/**
		A depth state that always passes the fragment and writes depth to the depth buffer.
	**/
	static final WRITEDEPTH : DepthState;
}