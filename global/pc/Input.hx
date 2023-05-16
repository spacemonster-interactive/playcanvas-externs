package global.pc;

@:native("pc.input") @valueModuleOnly extern class Input {
	/**
		This function takes a browser Touch object and returns the coordinates of the touch relative to
		the target element.
	**/
	static function getTouchTargetCoords(touch:js.html.Touch):Dynamic;
}