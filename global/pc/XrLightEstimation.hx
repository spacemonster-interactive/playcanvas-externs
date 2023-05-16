package global.pc;

/**
	Light Estimation provides illumination data from the real world, which is estimated by the
	underlying AR system. It provides a reflection Cube Map, that represents the reflection
	estimation from the viewer position. A more simplified approximation of light is provided by L2
	Spherical Harmonics data. And the most simple level of light estimation is the most prominent
	directional light, its rotation, intensity and color.
**/
@:native("pc.XrLightEstimation") extern class XrLightEstimation extends EventHandler {
	/**
		Create a new XrLightEstimation instance.
	**/
	function new(manager:XrManager);
	private var _manager : Dynamic;
	private var _supported : Dynamic;
	private var _available : Dynamic;
	private var _lightProbeRequested : Dynamic;
	private var _lightProbe : Dynamic;
	private var _intensity : Dynamic;
	private var _rotation : Dynamic;
	private var _color : Dynamic;
	private var _sphericalHarmonics : Dynamic;
	private var _onSessionStart : Dynamic;
	private var _onSessionEnd : Dynamic;
	/**
		Start estimation of illumination data. Availability of such data will come later and an
		`available` event will be fired. If it failed to start estimation, an `error` event will be
		fired.
	**/
	function start():Void;
	/**
		End estimation of illumination data.
	**/
	function end():Void;
	function update(frame:Dynamic):Void;
	/**
		True if Light Estimation is supported. This information is available only during an active AR
		session.
	**/
	final supported : Bool;
	/**
		True if estimated light information is available.
	**/
	final available : Bool;
	/**
		Intensity of what is estimated to be the most prominent directional light. Or null if data
		is not available.
	**/
	final intensity : Float;
	/**
		Color of what is estimated to be the most prominent directional light. Or null if data is
		not available.
	**/
	final color : Color;
	/**
		Rotation of what is estimated to be the most prominent directional light. Or null if data is
		not available.
	**/
	final rotation : Quat;
	/**
		Spherical harmonics coefficients of what is estimated to be the most prominent directional
		light. Or null if data is not available.
	**/
	final sphericalHarmonics : js.lib.Float32Array;
	static var prototype : XrLightEstimation;
}