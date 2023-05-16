package global.pc;

@:native("pc.time") @valueModuleOnly extern class Time {
	/**
		Get current time in milliseconds. Use it to measure time difference. Reference time may differ
		on different platforms.
	**/
	static final now : Dynamic;
}