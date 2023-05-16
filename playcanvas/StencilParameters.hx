package playcanvas;

/**
	Holds stencil test settings.
**/
@:jsRequire("playcanvas", "StencilParameters") extern class StencilParameters {
	/**
		Create a new StencilParameters instance.
	**/
	function new(?options:Dynamic);
	/**
		A comparison function that decides if the pixel should be written, based on the current
		stencil buffer value, reference value, and mask value. Can be:
		
		- {@link FUNC_NEVER}: never pass
		- {@link FUNC_LESS}: pass if (ref & mask) < (stencil & mask)
		- {@link FUNC_EQUAL}: pass if (ref & mask) == (stencil & mask)
		- {@link FUNC_LESSEQUAL}: pass if (ref & mask) <= (stencil & mask)
		- {@link FUNC_GREATER}: pass if (ref & mask) > (stencil & mask)
		- {@link FUNC_NOTEQUAL}: pass if (ref & mask) != (stencil & mask)
		- {@link FUNC_GREATEREQUAL}: pass if (ref & mask) >= (stencil & mask)
		- {@link FUNC_ALWAYS}: always pass
	**/
	var func : Float;
	/**
		Sets stencil test reference value used in comparisons.
	**/
	var ref : Float;
	/**
		Operation to perform if stencil test is failed. Can be:
		
		- {@link STENCILOP_KEEP}: don't change the stencil buffer value
		- {@link STENCILOP_ZERO}: set value to zero
		- {@link STENCILOP_REPLACE}: replace value with the reference value.
		- {@link STENCILOP_INCREMENT}: increment the value
		- {@link STENCILOP_INCREMENTWRAP}: increment the value, but wrap it to zero when it's larger
		than a maximum representable value
		- {@link STENCILOP_DECREMENT}: decrement the value
		- {@link STENCILOP_DECREMENTWRAP}: decrement the value, but wrap it to a maximum
		representable value, if the current value is 0
		- {@link STENCILOP_INVERT}: invert the value bitwise
	**/
	var fail : Float;
	/**
		Operation to perform if depth test is failed. Accepts the same values as `fail`.
	**/
	var zfail : Float;
	/**
		Operation to perform if both stencil and depth test are passed. Accepts the same values as
		`fail`.
	**/
	var zpass : Float;
	/**
		Mask applied to stencil buffer value and reference value before comparison.
	**/
	var readMask : Float;
	/**
		A bit mask applied to the stencil value, when written.
	**/
	var writeMask : Float;
	final key : String;
	/**
		Copies the contents of a source stencil parameters to this stencil parameters.
	**/
	function copy(rhs:StencilParameters):StencilParameters;
	/**
		Clone the stencil parameters.
	**/
	function clone():StencilParameters;
	static var prototype : StencilParameters;
	/**
		A default stencil state.
	**/
	static final DEFAULT : StencilParameters;
}