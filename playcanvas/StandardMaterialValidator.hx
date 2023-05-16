package playcanvas;

@jsInaccessible extern class StandardMaterialValidator {
	function new();
	var removeInvalid : Bool;
	var valid : Bool;
	var enumValidators : {
		dynamic function occludeSpecular(value:Dynamic):Bool;
		dynamic function cull(value:Dynamic):Bool;
		dynamic function blendType(value:Dynamic):Bool;
		dynamic function depthFunc(value:Dynamic):Bool;
		dynamic function shadingModel(value:Dynamic):Bool;
	};
	function setInvalid(key:Dynamic, data:Dynamic):Void;
	function validate(data:Dynamic):Bool;
	function _createEnumValidator(values:Dynamic):(value:Dynamic) -> Bool;
	static var prototype : StandardMaterialValidator;
}