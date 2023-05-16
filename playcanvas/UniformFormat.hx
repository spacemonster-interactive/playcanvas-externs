package playcanvas;

/**
	A class storing description of an individual uniform, stored inside a uniform buffer.
**/
@jsInaccessible extern class UniformFormat {
	function new(name:Dynamic, type:Dynamic, ?count:Float);
	var name : String;
	var type : Float;
	var byteSize : Float;
	/**
		Index of the uniform in an array of 32bit values (Float32Array and similar)
	**/
	var offset : Float;
	var scopeId : ScopeId;
	/**
		Count of elements for arrays, otherwise 0.
	**/
	var count : Float;
	var shortName : Dynamic;
	var updateType : Dynamic;
	var invalid : Bool;
	function calculateOffset(offset:Dynamic):Void;
	static var prototype : UniformFormat;
}