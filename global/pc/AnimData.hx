package global.pc;

/**
	Wraps a set of data used in animation.
**/
@:native("pc.AnimData") extern class AnimData {
	/**
		Create a new animation AnimData instance.
	**/
	function new(components:Float, data:ts.AnyOf2<Array<Float>, js.lib.Float32Array>);
	var _components : Float;
	var _data : ts.AnyOf2<Array<Float>, js.lib.Float32Array>;
	/**
		Gets the number of components that make up an element.
	**/
	final components : Float;
	/**
		Gets the data.
	**/
	final data : ts.AnyOf2<Array<Float>, js.lib.Float32Array>;
	static var prototype : AnimData;
}