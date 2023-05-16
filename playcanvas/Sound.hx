package playcanvas;

/**
	Represents the resource of an audio asset.
**/
@:jsRequire("playcanvas", "Sound") extern class Sound {
	/**
		Create a new Sound instance.
	**/
	function new(resource:ts.AnyOf2<js.html.AudioElement, js.html.audio.AudioBuffer>);
	/**
		If the Web Audio API is not supported this contains the audio data.
	**/
	var audio : js.html.AudioElement;
	/**
		If the Web Audio API is supported this contains the audio data.
	**/
	var buffer : js.html.audio.AudioBuffer;
	/**
		Gets the duration of the sound. If the sound is not loaded it returns 0.
	**/
	final duration : Float;
	static var prototype : Sound;
}