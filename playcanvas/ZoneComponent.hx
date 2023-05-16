package playcanvas;

/**
	The ZoneComponent allows you to define an area in world space of certain size. This can be used
	in various ways, such as affecting audio reverb when {@link AudioListenerComponent} is within
	zone. Or create culling system with portals between zones to hide whole indoor sections for
	performance reasons. And many other possible options. Zones are building blocks and meant to be
	used in many different ways.
**/
@:jsRequire("playcanvas", "ZoneComponent") extern class ZoneComponent extends Component {
	/**
		Create a new ZoneComponent instance.
	**/
	function new(system:ZoneComponentSystem, entity:Entity);
	var _oldState : Bool;
	var _size : Vec3;
	/**
		The size of the axis-aligned box of this ZoneComponent.
	**/
	var size : Vec3;
	function _onSetEnabled(prop:Dynamic, old:Dynamic, value:Dynamic):Void;
	function _checkState():Void;
	function _onBeforeRemove():Void;
	static var prototype : ZoneComponent;
}