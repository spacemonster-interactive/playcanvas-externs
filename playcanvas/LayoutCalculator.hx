package playcanvas;

/**
	Used to manage layout calculations for {@link LayoutGroupComponent}s.
**/
@:jsRequire("playcanvas", "LayoutCalculator") extern class LayoutCalculator {
	function new();
	function calculateLayout(elements:Dynamic, options:Dynamic):Dynamic;
	static var prototype : LayoutCalculator;
}