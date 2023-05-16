package global.pc;

/**
	Used to manage layout calculations for {@link LayoutGroupComponent}s.
**/
@:native("pc.LayoutCalculator") extern class LayoutCalculator {
	function new();
	function calculateLayout(elements:Dynamic, options:Dynamic):Dynamic;
	static var prototype : LayoutCalculator;
}