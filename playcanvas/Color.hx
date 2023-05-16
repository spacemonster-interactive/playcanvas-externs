package playcanvas;

/**
	Representation of an RGBA color.
**/
@:jsRequire("playcanvas", "Color") extern class Color {
	/**
		Create a new Color object.
	**/
	function new(?r:ts.AnyOf2<Float, Array<Float>>, ?g:Float, ?b:Float, ?a:Float);
	/**
		The red component of the color.
	**/
	var r : Float;
	/**
		The green component of the color.
	**/
	var g : Float;
	/**
		The blue component of the color.
	**/
	var b : Float;
	/**
		The alpha component of the color.
	**/
	var a : Float;
	/**
		Returns a clone of the specified color.
	**/
	function clone():Color;
	/**
		Copies the contents of a source color to a destination color.
	**/
	function copy(rhs:Color):Color;
	/**
		Reports whether two colors are equal.
	**/
	function equals(rhs:Color):Bool;
	/**
		Assign values to the color components, including alpha.
	**/
	function set(r:Float, g:Float, b:Float, ?a:Float):Color;
	/**
		Returns the result of a linear interpolation between two specified colors.
	**/
	function lerp(lhs:Color, rhs:Color, alpha:Float):Color;
	/**
		Set the values of the color from a string representation '#11223344' or '#112233'.
	**/
	function fromString(hex:String):Color;
	/**
		Converts the color to string form. The format is '#RRGGBBAA', where RR, GG, BB, AA are the
		red, green, blue and alpha values. When the alpha value is not included (the default), this
		is the same format as used in HTML/CSS.
	**/
	function toString(alpha:Bool):String;
	static var prototype : Color;
	/**
		A constant color set to black [0, 0, 0, 1].
	**/
	static final BLACK : Color;
	/**
		A constant color set to blue [0, 0, 1, 1].
	**/
	static final BLUE : Color;
	/**
		A constant color set to cyan [0, 1, 1, 1].
	**/
	static final CYAN : Color;
	/**
		A constant color set to gray [0.5, 0.5, 0.5, 1].
	**/
	static final GRAY : Color;
	/**
		A constant color set to green [0, 1, 0, 1].
	**/
	static final GREEN : Color;
	/**
		A constant color set to magenta [1, 0, 1, 1].
	**/
	static final MAGENTA : Color;
	/**
		A constant color set to red [1, 0, 0, 1].
	**/
	static final RED : Color;
	/**
		A constant color set to white [1, 1, 1, 1].
	**/
	static final WHITE : Color;
	/**
		A constant color set to yellow [1, 1, 0, 1].
	**/
	static final YELLOW : Color;
}