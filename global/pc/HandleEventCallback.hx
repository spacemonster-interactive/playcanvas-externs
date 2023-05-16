package global.pc;

/**
	Callback used by {@link EventHandler } functions. Note the callback is limited to 8 arguments.
**/
typedef HandleEventCallback = ts.AnyOf9<() -> Dynamic, (arg1:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic, arg6:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic, arg6:Dynamic, arg7:Dynamic) -> Dynamic, (arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic, arg6:Dynamic, arg7:Dynamic, arg8:Dynamic) -> Dynamic>;