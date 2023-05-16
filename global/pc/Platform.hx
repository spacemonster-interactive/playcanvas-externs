package global.pc;

@:native("pc.platform") @valueModuleOnly extern class Platform {
	static final environment : String;
	static final global : Dynamic;
	static final browser : Bool;
	static var desktop : Bool;
	static var mobile : Bool;
	static var ios : Bool;
	static var android : Bool;
	static var windows : Bool;
	static var xbox : Bool;
	static var gamepads : Bool;
	static var touch : Bool;
	static var workers : Bool;
	static var passiveEvents : Bool;
}