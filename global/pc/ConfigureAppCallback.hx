package global.pc;

/**
	Callback used by {@link AppBaseconfigure } when configuration file is loaded and parsed (or
	an error occurs).
**/
typedef ConfigureAppCallback = (err:Null<String>) -> Dynamic;