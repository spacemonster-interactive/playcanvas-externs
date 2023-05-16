package global.pc;

/**
	Represents a XRInputSourceEvent fired on a {@link ElementComponent}.
**/
@:native("pc.ElementSelectEvent") extern class ElementSelectEvent extends ElementInputEvent {
	/**
		Create an instance of a ElementSelectEvent.
	**/
	function new(event:Dynamic, element:ElementComponent, camera:CameraComponent, inputSource:XrInputSource);
	/**
		The XR input source that this event was originally raised from.
	**/
	var inputSource : XrInputSource;
	static var prototype : ElementSelectEvent;
}