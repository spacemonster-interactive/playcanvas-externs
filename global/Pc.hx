package global;

@:native("pc") @valueModuleOnly extern class Pc {
	static final ABSOLUTE_URL : js.lib.RegExp;
	static final ACTION_GAMEPAD : String;
	static final ACTION_KEYBOARD : String;
	static final ACTION_MOUSE : String;
	/**
		Clamps texture coordinate to the range 0 to 1.
	**/
	static final ADDRESS_CLAMP_TO_EDGE : Float;
	/**
		Texture coordinate to be set to the fractional part if the integer part is even. If the integer
		part is odd, then the texture coordinate is set to 1 minus the fractional part.
	**/
	static final ADDRESS_MIRRORED_REPEAT : Float;
	/**
		Ignores the integer part of texture coordinates, using only the fractional part.
	**/
	static final ADDRESS_REPEAT : Float;
	static final ANIM_BLEND_1D : String;
	static final ANIM_BLEND_2D_CARTESIAN : String;
	static final ANIM_BLEND_2D_DIRECTIONAL : String;
	static final ANIM_BLEND_DIRECT : String;
	static final ANIM_CONTROL_STATES : Array<String>;
	/**
		Used to set an anim state graph transition condition predicate as '==='.
	**/
	static final ANIM_EQUAL_TO : String;
	/**
		Used to set an anim state graph transition condition predicate as '>'.
	**/
	static final ANIM_GREATER_THAN : String;
	/**
		Used to set an anim state graph transition condition predicate as '>='.
	**/
	static final ANIM_GREATER_THAN_EQUAL_TO : String;
	/**
		Used to set the anim state graph transition interruption source as the next state only.
	**/
	static final ANIM_INTERRUPTION_NEXT : String;
	/**
		Used to set the anim state graph transition interruption sources as the next state followed by
		the previous state.
	**/
	static final ANIM_INTERRUPTION_NEXT_PREV : String;
	/**
		Used to set the anim state graph transition interruption source to no state.
	**/
	static final ANIM_INTERRUPTION_NONE : String;
	/**
		Used to set the anim state graph transition interruption source as the previous state only.
	**/
	static final ANIM_INTERRUPTION_PREV : String;
	/**
		Used to set the anim state graph transition interruption sources as the previous state followed
		by the next state.
	**/
	static final ANIM_INTERRUPTION_PREV_NEXT : String;
	/**
		Used to indicate that a layers animations should blend additively with previous layers.
	**/
	static final ANIM_LAYER_ADDITIVE : String;
	/**
		Used to indicate that a layers animations should overwrite all previous layers.
	**/
	static final ANIM_LAYER_OVERWRITE : String;
	/**
		Used to set an anim state graph transition condition predicate as '<'.
	**/
	static final ANIM_LESS_THAN : String;
	/**
		Used to set an anim state graph transition condition predicate as '<='.
	**/
	static final ANIM_LESS_THAN_EQUAL_TO : String;
	/**
		Used to set an anim state graph transition condition predicate as '!=='.
	**/
	static final ANIM_NOT_EQUAL_TO : String;
	/**
		Used to set an anim state graph parameter as type boolean.
	**/
	static final ANIM_PARAMETER_BOOLEAN : String;
	/**
		Used to set an anim state graph parameter as type float.
	**/
	static final ANIM_PARAMETER_FLOAT : String;
	/**
		Used to set an anim state graph parameter as type integer.
	**/
	static final ANIM_PARAMETER_INTEGER : String;
	/**
		Used to set an anim state graph parameter as type trigger.
	**/
	static final ANIM_PARAMETER_TRIGGER : String;
	/**
		Used to indicate any state in an anim state graph layer.
	**/
	static final ANIM_STATE_ANY : String;
	/**
		The ending state in an anim state graph layer.
	**/
	static final ANIM_STATE_END : String;
	/**
		The starting state in an anim state graph layer.
	**/
	static final ANIM_STATE_START : String;
	/**
		Automatically set aspect ratio to current render target's width divided by height.
	**/
	static final ASPECT_AUTO : Float;
	/**
		Use the manual aspect ratio value.
	**/
	static final ASPECT_MANUAL : Float;
	/**
		Asset type name for animation.
	**/
	static final ASSET_ANIMATION : String;
	/**
		Asset type name for audio.
	**/
	static final ASSET_AUDIO : String;
	/**
		Asset type name for a container.
	**/
	static final ASSET_CONTAINER : String;
	/**
		Asset type name for CSS.
	**/
	static final ASSET_CSS : String;
	/**
		Asset type name for cubemap.
	**/
	static final ASSET_CUBEMAP : String;
	/**
		Asset type name for HTML.
	**/
	static final ASSET_HTML : String;
	/**
		Asset type name for image.
	**/
	static final ASSET_IMAGE : String;
	/**
		Asset type name for json.
	**/
	static final ASSET_JSON : String;
	/**
		Asset type name for material.
	**/
	static final ASSET_MATERIAL : String;
	/**
		Asset type name for model.
	**/
	static final ASSET_MODEL : String;
	/**
		Asset type name for script.
	**/
	static final ASSET_SCRIPT : String;
	/**
		Asset type name for shader.
	**/
	static final ASSET_SHADER : String;
	/**
		Asset type name for text.
	**/
	static final ASSET_TEXT : String;
	/**
		Asset type name for texture.
	**/
	static final ASSET_TEXTURE : String;
	/**
		Asset type name for textureatlas.
	**/
	static final ASSET_TEXTUREATLAS : String;
	static final AXIS_KEY : String;
	static final AXIS_MOUSE_X : String;
	static final AXIS_MOUSE_Y : String;
	static final AXIS_PAD_L_X : String;
	static final AXIS_PAD_L_Y : String;
	static final AXIS_PAD_R_X : String;
	static final AXIS_PAD_R_Y : String;
	/**
		Single color lightmap.
	**/
	static final BAKE_COLOR : Float;
	/**
		Single color lightmap + dominant light direction (used for bump/specular).
	**/
	static final BAKE_COLORDIR : Float;
	static final BINDGROUP_MESH : Int;
	static final BINDGROUP_VIEW : Int;
	/**
		Add the results of the source and destination fragment multiplies.
	**/
	static final BLENDEQUATION_ADD : Float;
	/**
		Use the largest value. Check app.graphicsDevice.extBlendMinmax for support.
	**/
	static final BLENDEQUATION_MAX : Float;
	/**
		Use the smallest value. Check app.graphicsDevice.extBlendMinmax for support.
	**/
	static final BLENDEQUATION_MIN : Float;
	/**
		Reverse and subtract the results of the source and destination fragment multiplies.
	**/
	static final BLENDEQUATION_REVERSE_SUBTRACT : Float;
	/**
		Subtract the results of the source and destination fragment multiplies.
	**/
	static final BLENDEQUATION_SUBTRACT : Float;
	/**
		Multiplies all fragment components by a constant.
	**/
	static final BLENDMODE_CONSTANT : Float;
	static final BLENDMODE_CONSTANT_ALPHA : Float;
	static final BLENDMODE_CONSTANT_COLOR : Float;
	/**
		Multiply all fragment components by the alpha value of the destination fragment.
	**/
	static final BLENDMODE_DST_ALPHA : Float;
	/**
		Multiply all fragment components by the components of the destination fragment.
	**/
	static final BLENDMODE_DST_COLOR : Float;
	/**
		Multiply all fragment components by one.
	**/
	static final BLENDMODE_ONE : Float;
	/**
		Multiplies all fragment components by 1 minus a constant.
	**/
	static final BLENDMODE_ONE_MINUS_CONSTANT : Float;
	static final BLENDMODE_ONE_MINUS_CONSTANT_ALPHA : Float;
	static final BLENDMODE_ONE_MINUS_CONSTANT_COLOR : Float;
	/**
		Multiply all fragment components by one minus the alpha value of the destination fragment.
	**/
	static final BLENDMODE_ONE_MINUS_DST_ALPHA : Float;
	/**
		Multiply all fragment components by one minus the components of the destination fragment.
	**/
	static final BLENDMODE_ONE_MINUS_DST_COLOR : Float;
	/**
		Multiply all fragment components by one minus the alpha value of the source fragment.
	**/
	static final BLENDMODE_ONE_MINUS_SRC_ALPHA : Float;
	/**
		Multiply all fragment components by one minus the components of the source fragment.
	**/
	static final BLENDMODE_ONE_MINUS_SRC_COLOR : Float;
	/**
		Multiply all fragment components by the alpha value of the source fragment.
	**/
	static final BLENDMODE_SRC_ALPHA : Float;
	/**
		Multiply all fragment components by the alpha value of the source fragment.
	**/
	static final BLENDMODE_SRC_ALPHA_SATURATE : Float;
	/**
		Multiply all fragment components by the components of the source fragment.
	**/
	static final BLENDMODE_SRC_COLOR : Float;
	/**
		Multiply all fragment components by zero.
	**/
	static final BLENDMODE_ZERO : Float;
	/**
		Add the color of the source fragment to the destination fragment and write the result to the
		frame buffer.
	**/
	static final BLEND_ADDITIVE : Float;
	/**
		Same as {@link BLEND_ADDITIVE} except the source RGB is multiplied by the source alpha.
	**/
	static final BLEND_ADDITIVEALPHA : Float;
	/**
		Maximum color. Check app.graphicsDevice.extBlendMinmax for support.
	**/
	static final BLEND_MAX : Float;
	/**
		Minimum color. Check app.graphicsDevice.extBlendMinmax for support.
	**/
	static final BLEND_MIN : Float;
	/**
		Multiply the color of the source fragment by the color of the destination fragment and write the
		result to the frame buffer.
	**/
	static final BLEND_MULTIPLICATIVE : Float;
	/**
		Multiplies colors and doubles the result.
	**/
	static final BLEND_MULTIPLICATIVE2X : Float;
	/**
		Disable blending.
	**/
	static final BLEND_NONE : Float;
	/**
		Enable simple translucency for materials such as glass. This is equivalent to enabling a source
		blend mode of {@link BLENDMODE_SRC_ALPHA} and a destination blend mode of
		{@link BLENDMODE_ONE_MINUS_SRC_ALPHA}.
	**/
	static final BLEND_NORMAL : Float;
	/**
		Similar to {@link BLEND_NORMAL} expect the source fragment is assumed to have already been
		multiplied by the source alpha value.
	**/
	static final BLEND_PREMULTIPLIED : Float;
	/**
		Softer version of additive.
	**/
	static final BLEND_SCREEN : Float;
	/**
		Subtract the color of the source fragment from the destination fragment and write the result to
		the frame buffer.
	**/
	static final BLEND_SUBTRACTIVE : Float;
	/**
		Box filter.
	**/
	static final BLUR_BOX : Float;
	/**
		Gaussian filter. May look smoother than box, but requires more samples.
	**/
	static final BLUR_GAUSSIAN : Float;
	static final BODYFLAG_KINEMATIC_OBJECT : Int;
	static final BODYFLAG_NORESPONSE_OBJECT : Int;
	static final BODYFLAG_STATIC_OBJECT : Int;
	static final BODYGROUP_DEFAULT : Int;
	static final BODYGROUP_DYNAMIC : Int;
	static final BODYGROUP_ENGINE_1 : Int;
	static final BODYGROUP_ENGINE_2 : Int;
	static final BODYGROUP_ENGINE_3 : Int;
	static final BODYGROUP_KINEMATIC : Int;
	static final BODYGROUP_NONE : Int;
	static final BODYGROUP_STATIC : Int;
	static final BODYGROUP_TRIGGER : Int;
	static final BODYGROUP_USER_1 : Int;
	static final BODYGROUP_USER_2 : Int;
	static final BODYGROUP_USER_3 : Int;
	static final BODYGROUP_USER_4 : Int;
	static final BODYGROUP_USER_5 : Int;
	static final BODYGROUP_USER_6 : Int;
	static final BODYGROUP_USER_7 : Int;
	static final BODYGROUP_USER_8 : Int;
	static final BODYMASK_ALL : Int;
	static final BODYMASK_NONE : Int;
	static final BODYMASK_NOT_STATIC : Float;
	static final BODYMASK_NOT_STATIC_KINEMATIC : Float;
	static final BODYMASK_STATIC : Int;
	static final BODYSTATE_ACTIVE_TAG : Int;
	static final BODYSTATE_DISABLE_DEACTIVATION : Int;
	static final BODYSTATE_DISABLE_SIMULATION : Int;
	static final BODYSTATE_ISLAND_SLEEPING : Int;
	static final BODYSTATE_WANTS_DEACTIVATION : Int;
	/**
		Rigid body is simulated according to applied forces.
	**/
	static final BODYTYPE_DYNAMIC : String;
	/**
		Rigid body has infinite mass and does not respond to forces but can still be moved by setting
		their velocity or position.
	**/
	static final BODYTYPE_KINEMATIC : String;
	/**
		Rigid body has infinite mass and cannot move.
	**/
	static final BODYTYPE_STATIC : String;
	/**
		The data store contents will be modified repeatedly and used many times.
	**/
	static final BUFFER_DYNAMIC : Float;
	/**
		The data store contents will be modified repeatedly on the GPU and used many times. Optimal for
		transform feedback usage (WebGL2 only).
	**/
	static final BUFFER_GPUDYNAMIC : Float;
	/**
		The data store contents will be modified once and used many times.
	**/
	static final BUFFER_STATIC : Float;
	/**
		The data store contents will be modified once and used at most a few times.
	**/
	static final BUFFER_STREAM : Float;
	/**
		Specifies different sprites for the hover, pressed and inactive states.
	**/
	static final BUTTON_TRANSITION_MODE_SPRITE_CHANGE : Float;
	/**
		Specifies different color tints for the hover, pressed and inactive states.
	**/
	static final BUTTON_TRANSITION_MODE_TINT : Float;
	/**
		Chunk API versions
	**/
	static final CHUNKAPI_1_51 : String;
	static final CHUNKAPI_1_55 : String;
	static final CHUNKAPI_1_56 : String;
	static final CHUNKAPI_1_57 : String;
	static final CHUNKAPI_1_58 : String;
	static final CHUNKAPI_1_60 : String;
	static final CHUNKAPI_1_62 : String;
	/**
		Clear the color buffer.
	**/
	static final CLEARFLAG_COLOR : Float;
	/**
		Clear the depth buffer.
	**/
	static final CLEARFLAG_DEPTH : Float;
	/**
		Clear the stencil buffer.
	**/
	static final CLEARFLAG_STENCIL : Float;
	static final COMPUPDATED_BLEND : Int;
	static final COMPUPDATED_CAMERAS : Int;
	static final COMPUPDATED_INSTANCES : Int;
	static final COMPUPDATED_LIGHTS : Int;
	/**
		The negative X face of a cubemap.
	**/
	static final CUBEFACE_NEGX : Float;
	/**
		The negative Y face of a cubemap.
	**/
	static final CUBEFACE_NEGY : Float;
	/**
		The negative Z face of a cubemap.
	**/
	static final CUBEFACE_NEGZ : Float;
	/**
		The positive X face of a cubemap.
	**/
	static final CUBEFACE_POSX : Float;
	/**
		The positive Y face of a cubemap.
	**/
	static final CUBEFACE_POSY : Float;
	/**
		The positive Z face of a cubemap.
	**/
	static final CUBEFACE_POSZ : Float;
	/**
		The cube map is box-projected based on a world space axis-aligned bounding box.
	**/
	static final CUBEPROJ_BOX : Float;
	/**
		The cube map is treated as if it is infinitely far away.
	**/
	static final CUBEPROJ_NONE : Float;
	/**
		Triangles facing away from the view direction are culled.
	**/
	static final CULLFACE_BACK : Float;
	/**
		Triangles facing the view direction are culled.
	**/
	static final CULLFACE_FRONT : Float;
	/**
		Triangles are culled regardless of their orientation with respect to the view direction. Note
		that point or line primitives are unaffected by this render state.
	**/
	static final CULLFACE_FRONTANDBACK : Float;
	/**
		No triangles are culled.
	**/
	static final CULLFACE_NONE : Float;
	/**
		A cardinal spline interpolation scheme. This interpolation scheme is deprecated. Use
		CURVE_SPLINE instead.
	**/
	static final CURVE_CARDINAL : Float;
	/**
		A Catmull-Rom spline interpolation scheme. This interpolation scheme is deprecated. Use
		CURVE_SPLINE instead.
	**/
	static final CURVE_CATMULL : Float;
	/**
		A linear interpolation scheme.
	**/
	static final CURVE_LINEAR : Float;
	/**
		A smooth step interpolation scheme.
	**/
	static final CURVE_SMOOTHSTEP : Float;
	/**
		Cardinal spline interpolation scheme. For Catmull-Rom, specify curve tension 0.5.
	**/
	static final CURVE_SPLINE : Float;
	/**
		A stepped interpolator, free from the shackles of blending.
	**/
	static final CURVE_STEP : Float;
	static function ContextCreationError(message:Dynamic):Void;
	/**
		Add together the primary and secondary colors.
	**/
	static final DETAILMODE_ADD : String;
	/**
		Select whichever of the primary and secondary colors is lighter, component-wise.
	**/
	static final DETAILMODE_MAX : String;
	/**
		Select whichever of the primary and secondary colors is darker, component-wise.
	**/
	static final DETAILMODE_MIN : String;
	/**
		Multiply together the primary and secondary colors.
	**/
	static final DETAILMODE_MUL : String;
	/**
		Multiplies or screens the colors, depending on the primary color.
	**/
	static final DETAILMODE_OVERLAY : String;
	/**
		Softer version of {@link DETAILMODE_ADD}.
	**/
	static final DETAILMODE_SCREEN : String;
	/**
		A WebGL 1 device type.
	**/
	static final DEVICETYPE_WEBGL1 : String;
	/**
		A WebGL 2 device type.
	**/
	static final DEVICETYPE_WEBGL2 : String;
	/**
		A WebGPU device type.
	**/
	static final DEVICETYPE_WEBGPU : String;
	/**
		Exponential distance model.
	**/
	static final DISTANCE_EXPONENTIAL : String;
	/**
		Inverse distance model.
	**/
	static final DISTANCE_INVERSE : String;
	/**
		Linear distance model.
	**/
	static final DISTANCE_LINEAR : String;
	static final ELEMENTTYPE_FLOAT32 : Float;
	/**
		A {@link ElementComponent} that contains child {@link ElementComponent}s.
	**/
	static final ELEMENTTYPE_GROUP : String;
	/**
		A {@link ElementComponent} that displays an image.
	**/
	static final ELEMENTTYPE_IMAGE : String;
	static final ELEMENTTYPE_INT16 : Float;
	static final ELEMENTTYPE_INT32 : Float;
	static final ELEMENTTYPE_INT8 : Float;
	/**
		A {@link ElementComponent} that displays text.
	**/
	static final ELEMENTTYPE_TEXT : String;
	static final ELEMENTTYPE_UINT16 : Float;
	static final ELEMENTTYPE_UINT32 : Float;
	static final ELEMENTTYPE_UINT8 : Float;
	/**
		Box shape parameterized by emitterExtents. Initial velocity is directed towards local Z axis.
	**/
	static final EMITTERSHAPE_BOX : Float;
	/**
		Sphere shape parameterized by emitterRadius. Initial velocity is directed outwards from the
		center.
	**/
	static final EMITTERSHAPE_SPHERE : Float;
	/**
		Name of event fired when a gamepad connects.
	**/
	static final EVENT_GAMEPADCONNECTED : String;
	/**
		Name of event fired when a gamepad disconnects.
	**/
	static final EVENT_GAMEPADDISCONNECTED : String;
	/**
		Name of event fired when a key is pressed.
	**/
	static final EVENT_KEYDOWN : String;
	/**
		Name of event fired when a key is released.
	**/
	static final EVENT_KEYUP : String;
	/**
		Name of event fired when a mouse button is pressed.
	**/
	static final EVENT_MOUSEDOWN : String;
	/**
		Name of event fired when the mouse is moved.
	**/
	static final EVENT_MOUSEMOVE : String;
	/**
		Name of event fired when a mouse button is released.
	**/
	static final EVENT_MOUSEUP : String;
	/**
		Name of event fired when the mouse wheel is rotated.
	**/
	static final EVENT_MOUSEWHEEL : String;
	/**
		Name of event fired when a new xr select occurs. For example, primary trigger was pressed.
	**/
	static final EVENT_SELECT : String;
	/**
		Name of event fired when xr select ends. For example, a primary trigger is now released.
	**/
	static final EVENT_SELECTEND : String;
	/**
		Name of event fired when a new xr select starts. For example, primary trigger is now pressed.
	**/
	static final EVENT_SELECTSTART : String;
	/**
		Name of event fired when a touch point is interrupted in some way. The exact reasons for
		canceling a touch can vary from device to device. For example, a modal alert pops up during the
		interaction; the touch point leaves the document area, or there are more touch points than the
		device supports, in which case the earliest touch point is canceled.
	**/
	static final EVENT_TOUCHCANCEL : String;
	/**
		Name of event fired when touch ends. For example, a finger is lifted off the device.
	**/
	static final EVENT_TOUCHEND : String;
	/**
		Name of event fired when a touch moves.
	**/
	static final EVENT_TOUCHMOVE : String;
	/**
		Name of event fired when a new touch occurs. For example, a finger is placed on the device.
	**/
	static final EVENT_TOUCHSTART : String;
	/**
		When resizing the window the size of the canvas will change to fill the window exactly.
	**/
	static final FILLMODE_FILL_WINDOW : String;
	/**
		When resizing the window the size of the canvas will change to fill the window as best it can,
		while maintaining the same aspect ratio.
	**/
	static final FILLMODE_KEEP_ASPECT : String;
	/**
		When resizing the window the size of the canvas will not change.
	**/
	static final FILLMODE_NONE : String;
	/**
		Bilinear filtering.
	**/
	static final FILTER_LINEAR : Float;
	/**
		Linearly interpolate both the mipmap levels and between texels.
	**/
	static final FILTER_LINEAR_MIPMAP_LINEAR : Float;
	/**
		Use the nearest neighbor after linearly interpolating between mipmap levels.
	**/
	static final FILTER_LINEAR_MIPMAP_NEAREST : Float;
	/**
		Point sample filtering.
	**/
	static final FILTER_NEAREST : Float;
	/**
		Linearly interpolate in the nearest mipmap level.
	**/
	static final FILTER_NEAREST_MIPMAP_LINEAR : Float;
	/**
		Use the nearest neighbor in the nearest mipmap level.
	**/
	static final FILTER_NEAREST_MIPMAP_NEAREST : Float;
	/**
		Fit the content within the Element's bounding box while preserving its Aspect Ratio.
	**/
	static final FITMODE_CONTAIN : String;
	/**
		Fit the content to cover the entire Element's bounding box while preserving its Aspect Ratio.
	**/
	static final FITMODE_COVER : String;
	/**
		Fit the content exactly to Element's bounding box.
	**/
	static final FITMODE_STRETCH : String;
	/**
		Apply both STRETCH and SHRINK fitting logic where applicable.
	**/
	static final FITTING_BOTH : Float;
	/**
		Disable all fitting logic.
	**/
	static final FITTING_NONE : Float;
	/**
		Shrink child elements to fit the parent container.
	**/
	static final FITTING_SHRINK : Float;
	/**
		Stretch child elements to fit the parent container.
	**/
	static final FITTING_STRETCH : Float;
	/**
		Fog rises according to an exponential curve controlled by a density value.
	**/
	static final FOG_EXP : String;
	/**
		Fog rises according to an exponential curve controlled by a density value.
	**/
	static final FOG_EXP2 : String;
	/**
		Fog rises linearly from zero to 1 between a start and end depth.
	**/
	static final FOG_LINEAR : String;
	/**
		No fog is applied to the scene.
	**/
	static final FOG_NONE : String;
	static final FONT_BITMAP : String;
	static final FONT_MSDF : String;
	/**
		No Fresnel.
	**/
	static final FRESNEL_NONE : Float;
	/**
		Schlick's approximation of Fresnel.
	**/
	static final FRESNEL_SCHLICK : Float;
	/**
		Always pass.
	**/
	static final FUNC_ALWAYS : Float;
	/**
		Pass if (ref & mask) == (stencil & mask).
	**/
	static final FUNC_EQUAL : Float;
	/**
		Pass if (ref & mask) > (stencil & mask).
	**/
	static final FUNC_GREATER : Float;
	/**
		Pass if (ref & mask) >= (stencil & mask).
	**/
	static final FUNC_GREATEREQUAL : Float;
	/**
		Pass if (ref & mask) < (stencil & mask).
	**/
	static final FUNC_LESS : Float;
	/**
		Pass if (ref & mask) <= (stencil & mask).
	**/
	static final FUNC_LESSEQUAL : Float;
	/**
		Never pass.
	**/
	static final FUNC_NEVER : Float;
	/**
		Pass if (ref & mask) != (stencil & mask).
	**/
	static final FUNC_NOTEQUAL : Float;
	/**
		No gamma correction.
	**/
	static final GAMMA_NONE : Float;
	/**
		Apply sRGB gamma correction.
	**/
	static final GAMMA_SRGB : Float;
	/**
		Apply sRGB (fast) gamma correction.
	**/
	static final GAMMA_SRGBFAST : Float;
	/**
		Apply sRGB (HDR) gamma correction.
	**/
	static final GAMMA_SRGBHDR : Float;
	/**
		16-bit unsigned vertex indices (0 to 65,535).
	**/
	static final INDEXFORMAT_UINT16 : Float;
	/**
		32-bit unsigned vertex indices (0 to 4,294,967,295).
	**/
	static final INDEXFORMAT_UINT32 : Float;
	/**
		8-bit unsigned vertex indices (0 to 255).
	**/
	static final INDEXFORMAT_UINT8 : Float;
	/**
		A cubic spline interpolation scheme.
	**/
	static final INTERPOLATION_CUBIC : Float;
	/**
		A linear interpolation scheme.
	**/
	static final INTERPOLATION_LINEAR : Float;
	/**
		A stepped interpolation scheme.
	**/
	static final INTERPOLATION_STEP : Float;
	static final KEY_0 : Float;
	static final KEY_1 : Float;
	static final KEY_2 : Float;
	static final KEY_3 : Float;
	static final KEY_4 : Float;
	static final KEY_5 : Float;
	static final KEY_6 : Float;
	static final KEY_7 : Float;
	static final KEY_8 : Float;
	static final KEY_9 : Float;
	static final KEY_A : Float;
	static final KEY_ADD : Float;
	static final KEY_ALT : Float;
	static final KEY_B : Float;
	static final KEY_BACKSPACE : Float;
	static final KEY_BACK_SLASH : Float;
	static final KEY_C : Float;
	static final KEY_CAPS_LOCK : Float;
	static final KEY_CLOSE_BRACKET : Float;
	static final KEY_COMMA : Float;
	static final KEY_CONTEXT_MENU : Float;
	static final KEY_CONTROL : Float;
	static final KEY_D : Float;
	static final KEY_DECIMAL : Float;
	static final KEY_DELETE : Float;
	static final KEY_DIVIDE : Float;
	static final KEY_DOWN : Float;
	static final KEY_E : Float;
	static final KEY_END : Float;
	static final KEY_ENTER : Float;
	static final KEY_EQUAL : Float;
	static final KEY_ESCAPE : Float;
	static final KEY_F : Float;
	static final KEY_F1 : Float;
	static final KEY_F10 : Float;
	static final KEY_F11 : Float;
	static final KEY_F12 : Float;
	static final KEY_F2 : Float;
	static final KEY_F3 : Float;
	static final KEY_F4 : Float;
	static final KEY_F5 : Float;
	static final KEY_F6 : Float;
	static final KEY_F7 : Float;
	static final KEY_F8 : Float;
	static final KEY_F9 : Float;
	static final KEY_G : Float;
	static final KEY_H : Float;
	static final KEY_HOME : Float;
	static final KEY_I : Float;
	static final KEY_INSERT : Float;
	static final KEY_J : Float;
	static final KEY_K : Float;
	static final KEY_L : Float;
	static final KEY_LEFT : Float;
	static final KEY_M : Float;
	static final KEY_META : Float;
	static final KEY_MULTIPLY : Float;
	static final KEY_N : Float;
	static final KEY_NUMPAD_0 : Float;
	static final KEY_NUMPAD_1 : Float;
	static final KEY_NUMPAD_2 : Float;
	static final KEY_NUMPAD_3 : Float;
	static final KEY_NUMPAD_4 : Float;
	static final KEY_NUMPAD_5 : Float;
	static final KEY_NUMPAD_6 : Float;
	static final KEY_NUMPAD_7 : Float;
	static final KEY_NUMPAD_8 : Float;
	static final KEY_NUMPAD_9 : Float;
	static final KEY_O : Float;
	static final KEY_OPEN_BRACKET : Float;
	static final KEY_P : Float;
	static final KEY_PAGE_DOWN : Float;
	static final KEY_PAGE_UP : Float;
	static final KEY_PAUSE : Float;
	static final KEY_PERIOD : Float;
	static final KEY_PRINT_SCREEN : Float;
	static final KEY_Q : Float;
	static final KEY_R : Float;
	static final KEY_RETURN : Float;
	static final KEY_RIGHT : Float;
	static final KEY_S : Float;
	static final KEY_SEMICOLON : Float;
	static final KEY_SEPARATOR : Float;
	static final KEY_SHIFT : Float;
	static final KEY_SLASH : Float;
	static final KEY_SPACE : Float;
	static final KEY_SUBTRACT : Float;
	static final KEY_T : Float;
	static final KEY_TAB : Float;
	static final KEY_U : Float;
	static final KEY_UP : Float;
	static final KEY_V : Float;
	static final KEY_W : Float;
	static final KEY_WINDOWS : Float;
	static final KEY_X : Float;
	static final KEY_Y : Float;
	static final KEY_Z : Float;
	/**
		The depth layer.
	**/
	static final LAYERID_DEPTH : Float;
	/**
		The immediate layer.
	**/
	static final LAYERID_IMMEDIATE : Float;
	/**
		The skybox layer.
	**/
	static final LAYERID_SKYBOX : Float;
	/**
		The UI layer.
	**/
	static final LAYERID_UI : Float;
	/**
		The world layer.
	**/
	static final LAYERID_WORLD : Float;
	static final LAYER_FX : Int;
	static final LAYER_GIZMO : Int;
	static final LAYER_HUD : Int;
	static final LAYER_WORLD : Int;
	/**
		Inverse squared distance falloff model for light attenuation.
	**/
	static final LIGHTFALLOFF_INVERSESQUARED : Float;
	/**
		Linear distance falloff model for light attenuation.
	**/
	static final LIGHTFALLOFF_LINEAR : Float;
	/**
		Disk shape of light source.
	**/
	static final LIGHTSHAPE_DISK : Float;
	/**
		Infinitesimally small point light source shape.
	**/
	static final LIGHTSHAPE_PUNCTUAL : Float;
	/**
		Rectangle shape of light source.
	**/
	static final LIGHTSHAPE_RECT : Float;
	/**
		Sphere shape of light source.
	**/
	static final LIGHTSHAPE_SPHERE : Float;
	static final LIGHTTYPE_COUNT : Int;
	/**
		Directional (global) light source.
	**/
	static final LIGHTTYPE_DIRECTIONAL : Float;
	/**
		Omni-directional (local) light source.
	**/
	static final LIGHTTYPE_OMNI : Float;
	/**
		Point (local) light source.
	**/
	static final LIGHTTYPE_POINT : Float;
	/**
		Spot (local) light source.
	**/
	static final LIGHTTYPE_SPOT : Float;
	static final LINEBATCH_GIZMO : Int;
	static final LINEBATCH_OVERLAY : Int;
	static final LINEBATCH_WORLD : Int;
	static final MASK_AFFECT_DYNAMIC : Int;
	static final MASK_AFFECT_LIGHTMAPPED : Int;
	static final MASK_BAKE : Int;
	/**
		Specified degree of freedom has free movement.
	**/
	static final MOTION_FREE : String;
	/**
		Specified degree of freedom has limited movement.
	**/
	static final MOTION_LIMITED : String;
	/**
		Specified degree of freedom is locked and allows no movement.
	**/
	static final MOTION_LOCKED : String;
	/**
		The left mouse button.
	**/
	static final MOUSEBUTTON_LEFT : Float;
	/**
		The middle mouse button.
	**/
	static final MOUSEBUTTON_MIDDLE : Float;
	/**
		No mouse buttons pressed.
	**/
	static final MOUSEBUTTON_NONE : Float;
	/**
		The right mouse button.
	**/
	static final MOUSEBUTTON_RIGHT : Float;
	/**
		Horizontal orientation.
	**/
	static final ORIENTATION_HORIZONTAL : Float;
	/**
		Vertical orientation.
	**/
	static final ORIENTATION_VERTICAL : Float;
	/**
		Index for pad 1.
	**/
	static final PAD_1 : Float;
	/**
		Index for pad 2.
	**/
	static final PAD_2 : Float;
	/**
		Index for pad 3.
	**/
	static final PAD_3 : Float;
	/**
		Index for pad 4.
	**/
	static final PAD_4 : Float;
	/**
		Direction pad down.
	**/
	static final PAD_DOWN : Float;
	/**
		The first face button, from bottom going clockwise.
	**/
	static final PAD_FACE_1 : Float;
	/**
		The second face button, from bottom going clockwise.
	**/
	static final PAD_FACE_2 : Float;
	/**
		The third face button, from bottom going clockwise.
	**/
	static final PAD_FACE_3 : Float;
	/**
		The fourth face button, from bottom going clockwise.
	**/
	static final PAD_FACE_4 : Float;
	/**
		Direction pad left.
	**/
	static final PAD_LEFT : Float;
	/**
		The first shoulder button on the left.
	**/
	static final PAD_L_SHOULDER_1 : Float;
	/**
		The second shoulder button on the left.
	**/
	static final PAD_L_SHOULDER_2 : Float;
	/**
		The button when depressing the left analogue stick.
	**/
	static final PAD_L_STICK_BUTTON : Float;
	/**
		Horizontal axis on the left analogue stick.
	**/
	static final PAD_L_STICK_X : Float;
	/**
		Vertical axis on the left analogue stick.
	**/
	static final PAD_L_STICK_Y : Float;
	/**
		Direction pad right.
	**/
	static final PAD_RIGHT : Float;
	/**
		The first shoulder button on the right.
	**/
	static final PAD_R_SHOULDER_1 : Float;
	/**
		The second shoulder button on the right.
	**/
	static final PAD_R_SHOULDER_2 : Float;
	/**
		The button when depressing the right analogue stick.
	**/
	static final PAD_R_STICK_BUTTON : Float;
	/**
		Horizontal axis on the right analogue stick.
	**/
	static final PAD_R_STICK_X : Float;
	/**
		Vertical axis on the right analogue stick.
	**/
	static final PAD_R_STICK_Y : Float;
	/**
		The select button.
	**/
	static final PAD_SELECT : Float;
	/**
		The start button.
	**/
	static final PAD_START : Float;
	/**
		Direction pad up.
	**/
	static final PAD_UP : Float;
	/**
		Vendor specific button.
	**/
	static final PAD_VENDOR : Float;
	static final PARTICLEMODE_CPU : Int;
	static final PARTICLEMODE_GPU : Int;
	/**
		Similar to previous, but the normal is affected by emitter(entity) transformation.
	**/
	static final PARTICLEORIENTATION_EMITTER : Float;
	/**
		Particles are facing camera.
	**/
	static final PARTICLEORIENTATION_SCREEN : Float;
	/**
		User defines world space normal (particleNormal) to set planes orientation.
	**/
	static final PARTICLEORIENTATION_WORLD : Float;
	/**
		Sorting based on distance to the camera. CPU only.
	**/
	static final PARTICLESORT_DISTANCE : Float;
	/**
		Newer particles are drawn first. CPU only.
	**/
	static final PARTICLESORT_NEWER_FIRST : Float;
	/**
		No sorting, particles are drawn in arbitrary order. Can be simulated on GPU.
	**/
	static final PARTICLESORT_NONE : Float;
	/**
		Older particles are drawn first. CPU only.
	**/
	static final PARTICLESORT_OLDER_FIRST : Float;
	/**
		A floating-point color-only format with 11 bits for red and green channels and 10 bits for the
		blue channel (WebGL2 only).
	**/
	static final PIXELFORMAT_111110F : Float;
	/**
		8-bit alpha.
	**/
	static final PIXELFORMAT_A8 : Float;
	/**
		ATC compressed format with alpha channel in blocks of 4x4.
	**/
	static final PIXELFORMAT_ASTC_4x4 : Float;
	/**
		ATC compressed format with no alpha channel.
	**/
	static final PIXELFORMAT_ATC_RGB : Float;
	/**
		ATC compressed format with alpha channel.
	**/
	static final PIXELFORMAT_ATC_RGBA : Float;
	/**
		32-bit BGRA (8-bits for blue channel, 8 for green, 8 for red with 8-bit alpha).
	**/
	static final PIXELFORMAT_BGRA8 : Float;
	/**
		A readable depth buffer format.
	**/
	static final PIXELFORMAT_DEPTH : Float;
	/**
		A readable depth/stencil buffer format (WebGL2 only).
	**/
	static final PIXELFORMAT_DEPTHSTENCIL : Float;
	/**
		Block compressed format storing 16 input pixels in 64 bits of output, consisting of two 16-bit
		RGB 5:6:5 color values and a 4x4 two bit lookup table.
	**/
	static final PIXELFORMAT_DXT1 : Float;
	/**
		Block compressed format storing 16 input pixels (corresponding to a 4x4 pixel block) into 128
		bits of output, consisting of 64 bits of alpha channel data (4 bits for each pixel) followed by
		64 bits of color data; encoded the same way as DXT1.
	**/
	static final PIXELFORMAT_DXT3 : Float;
	/**
		Block compressed format storing 16 input pixels into 128 bits of output, consisting of 64 bits
		of alpha channel data (two 8 bit alpha values and a 4x4 3 bit lookup table) followed by 64 bits
		of color data (encoded the same way as DXT1).
	**/
	static final PIXELFORMAT_DXT5 : Float;
	/**
		ETC1 compressed format.
	**/
	static final PIXELFORMAT_ETC1 : Float;
	/**
		ETC2 (RGB) compressed format.
	**/
	static final PIXELFORMAT_ETC2_RGB : Float;
	/**
		ETC2 (RGBA) compressed format.
	**/
	static final PIXELFORMAT_ETC2_RGBA : Float;
	/**
		8-bit luminance.
	**/
	static final PIXELFORMAT_L8 : Float;
	static final PIXELFORMAT_L8_A8 : Float;
	/**
		8-bit luminance with 8-bit alpha.
	**/
	static final PIXELFORMAT_LA8 : Float;
	/**
		PVRTC (2BPP RGBA) compressed format.
	**/
	static final PIXELFORMAT_PVRTC_2BPP_RGBA_1 : Float;
	/**
		PVRTC (2BPP RGB) compressed format.
	**/
	static final PIXELFORMAT_PVRTC_2BPP_RGB_1 : Float;
	/**
		PVRTC (4BPP RGBA) compressed format.
	**/
	static final PIXELFORMAT_PVRTC_4BPP_RGBA_1 : Float;
	/**
		PVRTC (4BPP RGB) compressed format.
	**/
	static final PIXELFORMAT_PVRTC_4BPP_RGB_1 : Float;
	/**
		32-bit floating point single channel format (WebGL2 only).
	**/
	static final PIXELFORMAT_R32F : Float;
	static final PIXELFORMAT_R4_G4_B4_A4 : Float;
	static final PIXELFORMAT_R5_G5_B5_A1 : Float;
	static final PIXELFORMAT_R5_G6_B5 : Float;
	static final PIXELFORMAT_R8_G8_B8 : Float;
	static final PIXELFORMAT_R8_G8_B8_A8 : Float;
	/**
		16-bit floating point RGB (16-bit float for each red, green and blue channels).
	**/
	static final PIXELFORMAT_RGB16F : Float;
	/**
		32-bit floating point RGB (32-bit float for each red, green and blue channels).
	**/
	static final PIXELFORMAT_RGB32F : Float;
	/**
		16-bit RGB (5-bits for red channel, 6 for green and 5 for blue).
	**/
	static final PIXELFORMAT_RGB565 : Float;
	/**
		24-bit RGB (8-bits for red channel, 8 for green and 8 for blue).
	**/
	static final PIXELFORMAT_RGB8 : Float;
	/**
		16-bit floating point RGBA (16-bit float for each red, green, blue and alpha channels).
	**/
	static final PIXELFORMAT_RGBA16F : Float;
	/**
		32-bit floating point RGBA (32-bit float for each red, green, blue and alpha channels).
	**/
	static final PIXELFORMAT_RGBA32F : Float;
	/**
		16-bit RGBA (4-bits for red channel, 4 for green, 4 for blue with 4-bit alpha).
	**/
	static final PIXELFORMAT_RGBA4 : Float;
	/**
		16-bit RGBA (5-bits for red channel, 5 for green, 5 for blue with 1-bit alpha).
	**/
	static final PIXELFORMAT_RGBA5551 : Float;
	/**
		32-bit RGBA (8-bits for red channel, 8 for green, 8 for blue with 8-bit alpha).
	**/
	static final PIXELFORMAT_RGBA8 : Float;
	/**
		Color-only sRGB format (WebGL2 only).
	**/
	static final PIXELFORMAT_SRGB : Float;
	/**
		Color sRGB format with additional alpha channel (WebGL2 only).
	**/
	static final PIXELFORMAT_SRGBA : Float;
	/**
		List of points that are linked sequentially by line segments, with a closing line segment
		between the last and first points.
	**/
	static final PRIMITIVE_LINELOOP : Float;
	/**
		Discrete list of line segments.
	**/
	static final PRIMITIVE_LINES : Float;
	/**
		List of points that are linked sequentially by line segments.
	**/
	static final PRIMITIVE_LINESTRIP : Float;
	/**
		List of distinct points.
	**/
	static final PRIMITIVE_POINTS : Float;
	/**
		Discrete list of triangles.
	**/
	static final PRIMITIVE_TRIANGLES : Float;
	/**
		Connected fan of triangles where the first vertex forms triangles with the following pairs of vertices.
	**/
	static final PRIMITIVE_TRIFAN : Float;
	/**
		Connected strip of triangles where a specified vertex forms a triangle using the previous two.
	**/
	static final PRIMITIVE_TRISTRIP : Float;
	/**
		An orthographic camera projection where the frustum shape is essentially a cuboid.
	**/
	static final PROJECTION_ORTHOGRAPHIC : Float;
	/**
		A perspective camera projection where the frustum shape is essentially pyramidal.
	**/
	static final PROJECTION_PERSPECTIVE : Float;
	/**
		Render mesh instance as points.
	**/
	static final RENDERSTYLE_POINTS : Float;
	/**
		Render mesh instance as solid geometry.
	**/
	static final RENDERSTYLE_SOLID : Float;
	/**
		Render mesh instance as wireframe.
	**/
	static final RENDERSTYLE_WIREFRAME : Float;
	/**
		When the canvas is resized the resolution of the canvas will change to match the size of the
		canvas.
	**/
	static final RESOLUTION_AUTO : String;
	/**
		When the canvas is resized the resolution of the canvas will remain at the same value and the
		output will just be scaled to fit the canvas.
	**/
	static final RESOLUTION_FIXED : String;
	static final RIGIDBODY_ACTIVE_TAG : Int;
	static final RIGIDBODY_CF_KINEMATIC_OBJECT : Int;
	static final RIGIDBODY_CF_NORESPONSE_OBJECT : Int;
	static final RIGIDBODY_CF_STATIC_OBJECT : Int;
	static final RIGIDBODY_DISABLE_DEACTIVATION : Int;
	static final RIGIDBODY_DISABLE_SIMULATION : Int;
	static final RIGIDBODY_ISLAND_SLEEPING : Int;
	static final RIGIDBODY_TYPE_DYNAMIC : String;
	static final RIGIDBODY_TYPE_KINEMATIC : String;
	static final RIGIDBODY_TYPE_STATIC : String;
	static final RIGIDBODY_WANTS_DEACTIVATION : Int;
	static final SAMPLETYPE_DEPTH : Int;
	static final SAMPLETYPE_FLOAT : Int;
	static final SAMPLETYPE_UNFILTERABLE_FLOAT : Int;
	/**
		Scale the {@link ScreenComponent} when the application's resolution is different than the
		ScreenComponent's referenceResolution.
	**/
	static final SCALEMODE_BLEND : String;
	/**
		Always use the application's resolution as the resolution for the {@link ScreenComponent}.
	**/
	static final SCALEMODE_NONE : String;
	/**
		The scrollbar will be visible all the time.
	**/
	static final SCROLLBAR_VISIBILITY_SHOW_ALWAYS : Float;
	/**
		The scrollbar will be visible only when content exceeds the size of the viewport.
	**/
	static final SCROLLBAR_VISIBILITY_SHOW_WHEN_REQUIRED : Float;
	/**
		Content scrolls past its bounds and then gently bounces back.
	**/
	static final SCROLL_MODE_BOUNCE : Float;
	/**
		Content does not scroll any further than its bounds.
	**/
	static final SCROLL_MODE_CLAMP : Float;
	/**
		Content can scroll forever.
	**/
	static final SCROLL_MODE_INFINITE : Float;
	static final SEMANTIC_ATTR : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR0 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR1 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR10 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR11 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR12 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR13 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR14 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR15 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR2 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR3 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR4 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR5 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR6 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR7 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR8 : String;
	/**
		Vertex attribute with a user defined semantic.
	**/
	static final SEMANTIC_ATTR9 : String;
	/**
		Vertex attribute to be treated as skin blend indices.
	**/
	static final SEMANTIC_BLENDINDICES : String;
	/**
		Vertex attribute to be treated as skin blend weights.
	**/
	static final SEMANTIC_BLENDWEIGHT : String;
	/**
		Vertex attribute to be treated as a color.
	**/
	static final SEMANTIC_COLOR : String;
	/**
		Vertex attribute to be treated as a normal.
	**/
	static final SEMANTIC_NORMAL : String;
	/**
		Vertex attribute to be treated as a position.
	**/
	static final SEMANTIC_POSITION : String;
	/**
		Vertex attribute to be treated as a tangent.
	**/
	static final SEMANTIC_TANGENT : String;
	static final SEMANTIC_TEXCOORD : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 0).
	**/
	static final SEMANTIC_TEXCOORD0 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 1).
	**/
	static final SEMANTIC_TEXCOORD1 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 2).
	**/
	static final SEMANTIC_TEXCOORD2 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 3).
	**/
	static final SEMANTIC_TEXCOORD3 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 4).
	**/
	static final SEMANTIC_TEXCOORD4 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 5).
	**/
	static final SEMANTIC_TEXCOORD5 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 6).
	**/
	static final SEMANTIC_TEXCOORD6 : String;
	/**
		Vertex attribute to be treated as a texture coordinate (set 7).
	**/
	static final SEMANTIC_TEXCOORD7 : String;
	static final SHADERDEF_DIRLM : Int;
	static final SHADERDEF_INSTANCING : Int;
	static final SHADERDEF_LM : Int;
	static final SHADERDEF_LMAMBIENT : Int;
	static final SHADERDEF_MORPH_NORMAL : Int;
	static final SHADERDEF_MORPH_POSITION : Int;
	static final SHADERDEF_MORPH_TEXTURE_BASED : Int;
	static final SHADERDEF_NOSHADOW : Int;
	static final SHADERDEF_SCREENSPACE : Int;
	static final SHADERDEF_SKIN : Int;
	static final SHADERDEF_TANGENTS : Int;
	static final SHADERDEF_UV0 : Int;
	static final SHADERDEF_UV1 : Int;
	static final SHADERDEF_VCOLOR : Int;
	/**
		Shader source code uses GLSL language.
	**/
	static final SHADERLANGUAGE_GLSL : String;
	/**
		Shader source code uses WGSL language.
	**/
	static final SHADERLANGUAGE_WGSL : String;
	/**
		Shader used for debug rendering of albedo.
	**/
	static final SHADERPASS_ALBEDO : String;
	/**
		Shader used for debug rendering of ao.
	**/
	static final SHADERPASS_AO : String;
	/**
		Shader used for debug rendering of emission.
	**/
	static final SHADERPASS_EMISSION : String;
	/**
		Shader that performs forward rendering.
	**/
	static final SHADERPASS_FORWARD : String;
	/**
		Shader used for debug rendering of gloss.
	**/
	static final SHADERPASS_GLOSS : String;
	/**
		Shader used for debug rendering of lighting.
	**/
	static final SHADERPASS_LIGHTING : String;
	/**
		Shader used for debug rendering of metalness.
	**/
	static final SHADERPASS_METALNESS : String;
	/**
		Shader used for debug rendering of opacity.
	**/
	static final SHADERPASS_OPACITY : String;
	/**
		Shader used for debug rendering of specularity.
	**/
	static final SHADERPASS_SPECULARITY : String;
	/**
		Shader used for debug rendering of UV0 texture coordinates.
	**/
	static final SHADERPASS_UV0 : String;
	/**
		Shader used for debug rendering of world normal.
	**/
	static final SHADERPASS_WORLDNORMAL : String;
	static final SHADERSTAGE_COMPUTE : Int;
	static final SHADERSTAGE_FRAGMENT : Int;
	static final SHADERSTAGE_VERTEX : Int;
	static final SHADERTAG_MATERIAL : Int;
	/**
		Render RGBA-encoded depth value.
	**/
	static final SHADER_DEPTH : Float;
	/**
		Render shaded materials with gamma correction and tonemapping.
	**/
	static final SHADER_FORWARD : Float;
	/**
		Render shaded materials without gamma correction and tonemapping.
	**/
	static final SHADER_FORWARDHDR : Float;
	static final SHADER_PICK : Int;
	static final SHADER_SHADOW : Int;
	/**
		The shadow map is not to be updated.
	**/
	static final SHADOWUPDATE_NONE : Float;
	/**
		The shadow map is regenerated every frame.
	**/
	static final SHADOWUPDATE_REALTIME : Float;
	/**
		The shadow map is regenerated this frame and not on subsequent frames.
	**/
	static final SHADOWUPDATE_THISFRAME : Float;
	static final SHADOW_COUNT : Int;
	static final SHADOW_DEPTH : Int;
	/**
		Render depth (color-packed on WebGL 1.0), can be used for PCF 1x1 sampling.
	**/
	static final SHADOW_PCF1 : Float;
	/**
		Render depth (color-packed on WebGL 1.0), can be used for PCF 3x3 sampling.
	**/
	static final SHADOW_PCF3 : Float;
	/**
		Render depth buffer only, can be used for hardware-accelerated PCF 5x5 sampling. Requires
		WebGL 2. Falls back to {@link SHADOW_PCF3} on WebGL 1.
	**/
	static final SHADOW_PCF5 : Float;
	/**
		Render 16-bit exponential variance shadow map. Requires OES_texture_half_float extension. Falls
		back to {@link SHADOW_VSM8}, if not supported.
	**/
	static final SHADOW_VSM16 : Float;
	/**
		Render 32-bit exponential variance shadow map. Requires OES_texture_float extension. Falls back
		to {@link SHADOW_VSM16}, if not supported.
	**/
	static final SHADOW_VSM32 : Float;
	/**
		Render packed variance shadow map. All shadow receivers must also cast shadows for this mode to
		work correctly.
	**/
	static final SHADOW_VSM8 : Float;
	static final SORTKEY_DEPTH : Int;
	static final SORTKEY_FORWARD : Int;
	/**
		Mesh instances are sorted back to front. This is the way to properly render many
		semi-transparent objects on different depth, one is blended on top of another.
	**/
	static final SORTMODE_BACK2FRONT : Float;
	/**
		Provide custom functions for sorting drawcalls and calculating distance.
	**/
	static final SORTMODE_CUSTOM : Float;
	/**
		Mesh instances are sorted front to back. Depending on GPU and the scene, this option may give
		better performance than {@link SORTMODE_MATERIALMESH} due to reduced overdraw.
	**/
	static final SORTMODE_FRONT2BACK : Float;
	/**
		Mesh instances are sorted based on {@link MeshInstance#drawOrder}.
	**/
	static final SORTMODE_MANUAL : Float;
	/**
		Mesh instances are sorted to minimize switching between materials and meshes to improve
		rendering performance.
	**/
	static final SORTMODE_MATERIALMESH : Float;
	/**
		No sorting is applied. Mesh instances are rendered in the same order they were added to a layer.
	**/
	static final SORTMODE_NONE : Float;
	/**
		Use AO directly to occlude specular.
	**/
	static final SPECOCC_AO : Float;
	/**
		Modify AO based on material glossiness/view angle to occlude specular.
	**/
	static final SPECOCC_GLOSSDEPENDENT : Float;
	/**
		No specular occlusion.
	**/
	static final SPECOCC_NONE : Float;
	/**
		Energy-conserving Blinn-Phong.
	**/
	static final SPECULAR_BLINN : Float;
	/**
		Phong without energy conservation. You should only use it as a backwards compatibility with
		older projects.
	**/
	static final SPECULAR_PHONG : Float;
	/**
		A {@link SpriteComponent} that renders sprite animations.
	**/
	static final SPRITETYPE_ANIMATED : String;
	/**
		A {@link SpriteComponent} that displays a single frame from a sprite asset.
	**/
	static final SPRITETYPE_SIMPLE : String;
	/**
		This mode renders a sprite as a simple quad.
	**/
	static final SPRITE_RENDERMODE_SIMPLE : Float;
	/**
		This mode renders a sprite using 9-slicing in 'sliced' mode. Sliced mode stretches the top and
		bottom regions of the sprite horizontally, the left and right regions vertically and the middle
		region both horizontally and vertically.
	**/
	static final SPRITE_RENDERMODE_SLICED : Float;
	/**
		This mode renders a sprite using 9-slicing in 'tiled' mode. Tiled mode tiles the top and bottom
		regions of the sprite horizontally, the left and right regions vertically and the middle region
		both horizontally and vertically.
	**/
	static final SPRITE_RENDERMODE_TILED : Float;
	/**
		Decrement the value.
	**/
	static final STENCILOP_DECREMENT : Float;
	/**
		Decrement the value but wrap it to a maximum representable value if the current value is 0.
	**/
	static final STENCILOP_DECREMENTWRAP : Float;
	/**
		Increment the value.
	**/
	static final STENCILOP_INCREMENT : Float;
	/**
		Increment the value but wrap it to zero when it's larger than a maximum representable value.
	**/
	static final STENCILOP_INCREMENTWRAP : Float;
	/**
		Invert the value bitwise.
	**/
	static final STENCILOP_INVERT : Float;
	/**
		Don't change the stencil buffer value.
	**/
	static final STENCILOP_KEEP : Float;
	/**
		Replace value with the reference value (see {@link StencilParameters}).
	**/
	static final STENCILOP_REPLACE : Float;
	/**
		Set value to zero.
	**/
	static final STENCILOP_ZERO : Float;
	static final TEXHINT_ASSET : Int;
	static final TEXHINT_LIGHTMAP : Int;
	static final TEXHINT_NONE : Int;
	static final TEXHINT_SHADOWMAP : Int;
	static final TEXTUREDIMENSION_1D : String;
	static final TEXTUREDIMENSION_2D : String;
	static final TEXTUREDIMENSION_2D_ARRAY : String;
	static final TEXTUREDIMENSION_3D : String;
	static final TEXTUREDIMENSION_CUBE : String;
	static final TEXTUREDIMENSION_CUBE_ARRAY : String;
	/**
		Read only. Any changes to the locked mip level's pixels will not update the texture.
	**/
	static final TEXTURELOCK_READ : Float;
	/**
		Write only. The contents of the specified mip level will be entirely replaced.
	**/
	static final TEXTURELOCK_WRITE : Float;
	/**
		Texture data is stored in cubemap projection format.
	**/
	static final TEXTUREPROJECTION_CUBE : String;
	/**
		Texture data is stored in equirectangular projection format.
	**/
	static final TEXTUREPROJECTION_EQUIRECT : String;
	/**
		Texture data is not stored a specific projection format.
	**/
	static final TEXTUREPROJECTION_NONE : String;
	/**
		Texture data is stored in octahedral projection format.
	**/
	static final TEXTUREPROJECTION_OCTAHEDRAL : String;
	/**
		Texture is a default type.
	**/
	static final TEXTURETYPE_DEFAULT : String;
	/**
		Texture stores high dynamic range data in RGBE format.
	**/
	static final TEXTURETYPE_RGBE : String;
	/**
		Texture stores high dynamic range data in RGBM format.
	**/
	static final TEXTURETYPE_RGBM : String;
	/**
		Texture stores high dynamic range data in RGBP encoding.
	**/
	static final TEXTURETYPE_RGBP : String;
	/**
		Texture stores normalmap data swizzled in GGGR format. This is used for tangent space normal
		maps. The R component is stored in alpha and G is stored in RGB. This packing can result in
		higher quality when the texture data is compressed.
	**/
	static final TEXTURETYPE_SWIZZLEGGGR : String;
	/**
		ACES filmic tonemapping curve.
	**/
	static final TONEMAP_ACES : Float;
	/**
		ACES v2 filmic tonemapping curve.
	**/
	static final TONEMAP_ACES2 : Float;
	/**
		Filmic tonemapping curve.
	**/
	static final TONEMAP_FILMIC : Float;
	/**
		Hejl filmic tonemapping curve.
	**/
	static final TONEMAP_HEJL : Float;
	/**
		Linear tonemapping.
	**/
	static final TONEMAP_LINEAR : Float;
	/**
		Logs the creation of bind group formats.
	**/
	static final TRACEID_BINDGROUPFORMAT_ALLOC : String;
	/**
		Logs the creation of bind groups.
	**/
	static final TRACEID_BINDGROUP_ALLOC : String;
	/**
		Logs the creation of pipeline layouts. WebBPU only.
	**/
	static final TRACEID_PIPELINELAYOUT_ALLOC : String;
	/**
		Logs the creation of render pipelines. WebBPU only.
	**/
	static final TRACEID_RENDERPIPELINE_ALLOC : String;
	/**
		Logs render actions created by the layer composition. Only executes when the
		layer composition changes.
	**/
	static final TRACEID_RENDER_ACTION : String;
	/**
		Logs a frame number.
	**/
	static final TRACEID_RENDER_FRAME : String;
	/**
		Logs a frame time.
	**/
	static final TRACEID_RENDER_FRAME_TIME : String;
	/**
		Logs basic information about generated render passes.
	**/
	static final TRACEID_RENDER_PASS : String;
	/**
		Logs additional detail for render passes.
	**/
	static final TRACEID_RENDER_PASS_DETAIL : String;
	/**
		Logs the allocation of render targets.
	**/
	static final TRACEID_RENDER_TARGET_ALLOC : String;
	/**
		Logs the creation of shaders.
	**/
	static final TRACEID_SHADER_ALLOC : String;
	/**
		Logs the compilation time of shaders.
	**/
	static final TRACEID_SHADER_COMPILE : String;
	/**
		Logs the allocation of textures.
	**/
	static final TRACEID_TEXTURE_ALLOC : String;
	/**
		Logs the vram use by the index buffers.
	**/
	static final TRACEID_VRAM_IB : String;
	/**
		Logs the vram use by the textures.
	**/
	static final TRACEID_VRAM_TEXTURE : String;
	/**
		Logs the vram use by the vertex buffers.
	**/
	static final TRACEID_VRAM_VB : String;
	/**
		Logs the internal debug information for Elements.
	**/
	static final TRACE_ID_ELEMENT : String;
	/**
		Floating point vertex element type.
	**/
	static final TYPE_FLOAT32 : Float;
	/**
		Signed short vertex element type.
	**/
	static final TYPE_INT16 : Float;
	/**
		Signed integer vertex element type.
	**/
	static final TYPE_INT32 : Float;
	/**
		Signed byte vertex element type.
	**/
	static final TYPE_INT8 : Float;
	/**
		Unsigned short vertex element type.
	**/
	static final TYPE_UINT16 : Float;
	/**
		Unsigned integer vertex element type.
	**/
	static final TYPE_UINT32 : Float;
	/**
		Unsigned byte vertex element type.
	**/
	static final TYPE_UINT8 : Float;
	static final UNIFORMTYPE_BOOL : Int;
	static final UNIFORMTYPE_BVEC2 : Int;
	static final UNIFORMTYPE_BVEC3 : Int;
	static final UNIFORMTYPE_BVEC4 : Int;
	static final UNIFORMTYPE_FLOAT : Int;
	static final UNIFORMTYPE_FLOATARRAY : Int;
	static final UNIFORMTYPE_INT : Int;
	static final UNIFORMTYPE_IVEC2 : Int;
	static final UNIFORMTYPE_IVEC3 : Int;
	static final UNIFORMTYPE_IVEC4 : Int;
	static final UNIFORMTYPE_MAT2 : Int;
	static final UNIFORMTYPE_MAT3 : Int;
	static final UNIFORMTYPE_MAT4 : Int;
	static final UNIFORMTYPE_MAT4ARRAY : Int;
	static final UNIFORMTYPE_TEXTURE2D : Int;
	static final UNIFORMTYPE_TEXTURE2D_SHADOW : Int;
	static final UNIFORMTYPE_TEXTURE3D : Int;
	static final UNIFORMTYPE_TEXTURECUBE : Int;
	static final UNIFORMTYPE_TEXTURECUBE_SHADOW : Int;
	static final UNIFORMTYPE_VEC2 : Int;
	static final UNIFORMTYPE_VEC2ARRAY : Int;
	static final UNIFORMTYPE_VEC3 : Int;
	static final UNIFORMTYPE_VEC3ARRAY : Int;
	static final UNIFORMTYPE_VEC4 : Int;
	static final UNIFORMTYPE_VEC4ARRAY : Int;
	static final UNIFORM_BUFFER_DEFAULT_SLOT_NAME : String;
	static function UnsupportedBrowserError(message:Dynamic):Void;
	/**
		Center of view.
	**/
	static final VIEW_CENTER : Float;
	/**
		Left of view. Only used in stereo rendering.
	**/
	static final VIEW_LEFT : Float;
	/**
		Right of view. Only used in stereo rendering.
	**/
	static final VIEW_RIGHT : Float;
	/**
		Float 32 - indicates that depth sensing preferred raw data format is Float 32.
	**/
	static final XRDEPTHSENSINGFORMAT_F32 : String;
	/**
		Luminance Alpha - indicates that depth sensing preferred raw data format is Luminance Alpha.
		This format is guaranteed to be supported.
	**/
	static final XRDEPTHSENSINGFORMAT_L8A8 : String;
	/**
		CPU - indicates that depth sensing preferred usage is CPU. This usage path is guaranteed to be
		supported.
	**/
	static final XRDEPTHSENSINGUSAGE_CPU : String;
	/**
		GPU - indicates that depth sensing preferred usage is GPU.
	**/
	static final XRDEPTHSENSINGUSAGE_GPU : String;
	/**
		Left - indicates that input source is meant to be held in left hand.
	**/
	static final XRHAND_LEFT : String;
	/**
		None - input source is not meant to be held in hands.
	**/
	static final XRHAND_NONE : String;
	/**
		Right - indicates that input source is meant to be held in right hand.
	**/
	static final XRHAND_RIGHT : String;
	/**
		The A button from XR pad.
	**/
	static final XRPAD_A : Float;
	/**
		The B button from XR pad.
	**/
	static final XRPAD_B : Float;
	/**
		The squeeze button from XR pad.
	**/
	static final XRPAD_SQUEEZE : Float;
	/**
		The button when pressing the XR pad's stick.
	**/
	static final XRPAD_STICK_BUTTON : Float;
	/**
		Horizontal axis on the stick of a XR pad.
	**/
	static final XRPAD_STICK_X : Float;
	/**
		Vertical axis on the stick of a XR pad.
	**/
	static final XRPAD_STICK_Y : Float;
	/**
		The button when pressing the XR pad's touchpad.
	**/
	static final XRPAD_TOUCHPAD_BUTTON : Float;
	/**
		Horizontal axis on the touchpad of a XR pad.
	**/
	static final XRPAD_TOUCHPAD_X : Float;
	/**
		Vertical axis on the thouchpad of a XR pad.
	**/
	static final XRPAD_TOUCHPAD_Y : Float;
	/**
		The trigger button from XR pad.
	**/
	static final XRPAD_TRIGGER : Float;
	/**
		Bounded Floor - represents a tracking space with its native origin at the floor, where the user
		is expected to move within a pre-established boundary. Tracking in a bounded-floor reference
		space is optimized for keeping the native origin and bounds geometry stable relative to the
		user's environment.
	**/
	static final XRSPACE_BOUNDEDFLOOR : String;
	/**
		Local - represents a tracking space with a native origin near the viewer at the time of
		creation. The exact position and orientation will be initialized based on the conventions of the
		underlying platform. When using this reference space the user is not expected to move beyond
		their initial position much, if at all, and tracking is optimized for that purpose. For devices
		with 6DoF tracking, local reference spaces should emphasize keeping the origin stable relative
		to the user's environment.
	**/
	static final XRSPACE_LOCAL : String;
	/**
		Local Floor - represents a tracking space with a native origin at the floor in a safe position
		for the user to stand. The y axis equals 0 at floor level, with the x and z position and
		orientation initialized based on the conventions of the underlying platform. Floor level value
		might be estimated by the underlying platform. When using this reference space, the user is not
		expected to move beyond their initial position much, if at all, and tracking is optimized for
		that purpose. For devices with 6DoF tracking, local-floor reference spaces should emphasize
		keeping the origin stable relative to the user's environment.
	**/
	static final XRSPACE_LOCALFLOOR : String;
	/**
		Unbounded - represents a tracking space where the user is expected to move freely around their
		environment, potentially even long distances from their starting point. Tracking in an unbounded
		reference space is optimized for stability around the user's current position, and as such the
		native origin may drift over time.
	**/
	static final XRSPACE_UNBOUNDED : String;
	/**
		Viewer - always supported space with some basic tracking capabilities.
	**/
	static final XRSPACE_VIEWER : String;
	/**
		Gaze - indicates the target ray will originate at the viewer and follow the direction it is
		facing. This is commonly referred to as a "gaze input" device in the context of head-mounted
		displays.
	**/
	static final XRTARGETRAY_GAZE : String;
	/**
		Tracked Pointer - indicates that the target ray originates from either a handheld device or
		other hand-tracking mechanism and represents that the user is using their hands or the held
		device for pointing.
	**/
	static final XRTARGETRAY_POINTER : String;
	/**
		Screen - indicates that the input source was an interaction with the canvas element associated
		with an inline session's output context, such as a mouse click or touch event.
	**/
	static final XRTARGETRAY_SCREEN : String;
	/**
		Mesh - indicates that the hit test results will be computed based on the meshes detected by the
		underlying Augmented Reality system.
	**/
	static final XRTRACKABLE_MESH : String;
	/**
		Plane - indicates that the hit test results will be computed based on the planes detected by the
		underlying Augmented Reality system.
	**/
	static final XRTRACKABLE_PLANE : String;
	/**
		Point - indicates that the hit test results will be computed based on the feature points
		detected by the underlying Augmented Reality system.
	**/
	static final XRTRACKABLE_POINT : String;
	/**
		Immersive AR - session that provides exclusive access to VR/AR device that is intended to be
		blended with real-world environment.
	**/
	static final XRTYPE_AR : String;
	/**
		Inline - always available type of session. It has limited features availability and is rendered
		into HTML element.
	**/
	static final XRTYPE_INLINE : String;
	/**
		Immersive VR - session that provides exclusive access to VR device with best available tracking
		features.
	**/
	static final XRTYPE_VR : String;
	/**
		Callback used by {@link AppBase#preload} when all assets (marked as 'preload') are loaded.
	**/
	static var app : Dynamic;
	static final apps : { };
	/**
		Initialize the Basis transcode worker.
	**/
	static function basisInitialize(?config:{ @:optional var glueUrl : String; @:optional var wasmUrl : String; @:optional var fallbackUrl : String; @:optional var lazyInit : Bool; @:optional var numWorkers : Float; @:optional var eagerWorkers : Bool; @:optional var rgbPriority : Array<String>; @:optional var rgbaPriority : Array<String>; @:optional var maxRetries : Float; }):Void;
	static function basisSetDownloadConfig(glueUrl:Dynamic, wasmUrl:Dynamic, fallbackUrl:Dynamic):Void;
	static final bindGroupNames : Array<String>;
	/**
		Generates normal information from the specified positions and triangle indices. See
		{@link createMesh}.
	**/
	static function calculateNormals(positions:Array<Float>, indices:Array<Float>):Array<Float>;
	/**
		Generates tangent information from the specified positions, normals, texture coordinates and
		triangle indices. See {@link createMesh}.
	**/
	static function calculateTangents(positions:Array<Float>, normals:Array<Float>, uvs:Array<Float>, indices:Array<Float>):Array<Float>;
	static final common : { };
	static final config : { };
	/**
		Creates a procedural box-shaped mesh.
		
		The size, shape and tesselation properties of the box can be controlled via function parameters.
		By default, the function will create a box centered on the object space origin with a width,
		length and height of 1.0 unit and 10 segments in either axis (50 triangles per face).
		
		Note that the box is created with UVs in the range of 0 to 1 on each face. Additionally, tangent
		information is generated into the vertex buffer of the box's mesh.
	**/
	static function createBox(device:global.pc.GraphicsDevice, ?opts:{ @:optional var halfExtents : global.pc.Vec3; @:optional var widthSegments : Float; @:optional var lengthSegments : Float; @:optional var heightSegments : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Creates a procedural capsule-shaped mesh.
		
		The size, shape and tesselation properties of the capsule can be controlled via function
		parameters. By default, the function will create a capsule standing vertically centered on the
		XZ-plane with a radius of 0.25, a height of 1.0, 1 height segment and 10 cap segments.
		
		Note that the capsule is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the capsule's mesh.
	**/
	static function createCapsule(device:global.pc.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var sides : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Creates a procedural cone-shaped mesh.
		
		The size, shape and tesselation properties of the cone can be controlled via function
		parameters. By default, the function will create a cone standing vertically centered on the
		XZ-plane with a base radius of 0.5, a height of 1.0, 5 height segments and 20 cap segments.
		
		Note that the cone is created with UVs in the range of 0 to 1. Additionally, tangent information
		is generated into the vertex buffer of the cone's mesh.
	**/
	static function createCone(device:global.pc.GraphicsDevice, ?opts:{ @:optional var baseRadius : Float; @:optional var peakRadius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var capSegments : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Creates a procedural cylinder-shaped mesh.
		
		The size, shape and tesselation properties of the cylinder can be controlled via function
		parameters. By default, the function will create a cylinder standing vertically centered on the
		XZ-plane with a radius of 0.5, a height of 1.0, 1 height segment and 20 cap segments.
		
		Note that the cylinder is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the cylinder's mesh.
	**/
	static function createCylinder(device:global.pc.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var height : Float; @:optional var heightSegments : Float; @:optional var capSegments : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Creates a graphics device.
	**/
	static function createGraphicsDevice(canvas:js.html.CanvasElement, ?options:{ @:optional var deviceTypes : Array<String>; @:optional var antialias : Bool; @:optional var depth : Bool; @:optional var stencil : Bool; @:optional var glslangUrl : String; @:optional var twgslUrl : String; }):js.lib.Promise<Dynamic>;
	/**
		Creates a new mesh object from the supplied vertex information and topology.
	**/
	static function createMesh(device:global.pc.GraphicsDevice, positions:Array<Float>, ?opts:{ @:optional var normals : Array<Float>; @:optional var tangents : Array<Float>; @:optional var colors : Array<Float>; @:optional var uvs : Array<Float>; @:optional var uvs1 : Array<Float>; @:optional var blendIndices : Array<Float>; @:optional var blendWeights : Array<Float>; @:optional var indices : Array<Float>; }):global.pc.Mesh;
	/**
		Creates a procedural plane-shaped mesh.
		
		The size and tesselation properties of the plane can be controlled via function parameters. By
		default, the function will create a plane centered on the object space origin with a width and
		length of 1.0 and 5 segments in either axis (50 triangles). The normal vector of the plane is
		aligned along the positive Y axis.
		
		Note that the plane is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the plane's mesh.
	**/
	static function createPlane(device:global.pc.GraphicsDevice, ?opts:{ @:optional var halfExtents : global.pc.Vec2; @:optional var widthSegments : Float; @:optional var lengthSegments : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Create and register a new {@link ScriptType}. It returns new class type (constructor function),
		which is auto-registered to {@link ScriptRegistry} using its name. This is the main interface to
		create Script Types, to define custom logic using JavaScript, that is used to create interaction
		for entities.
	**/
	static function createScript(name:String, ?app:global.pc.AppBase):Null<{
		var prototype : global.pc.ScriptType;
		/**
			Name of a Script Type.
		**/
		var __name : Dynamic;
		var __getScriptName : Dynamic;
		/**
			Name of a Script Type.
		**/
		final scriptName : String;
		/**
			The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}.
		**/
		final attributes : global.pc.ScriptAttributes;
		/**
			Shorthand function to extend Script Type prototype with list of methods.
		**/
		function extend(methods:Dynamic):Void;
	}>;
	/**
		Create a shader from named shader chunks.
	**/
	static function createShader(device:global.pc.GraphicsDevice, vsName:String, fsName:String, ?useTransformFeedback:Bool):global.pc.Shader;
	/**
		Create a shader from the supplied source code. Note that this function adds additional shader
		blocks to both vertex and fragment shaders, which allow the shader to use more features and
		compile on both WebGL and WebGPU. Specifically, these blocks are added, and should not be
		part of provided vsCode and fsCode: shader version, shader precision, commonly used extensions.
	**/
	static function createShaderFromCode(device:global.pc.GraphicsDevice, vsCode:String, fsCode:String, uniqueName:String, ?attributes:haxe.DynamicAccess<String>, ?useTransformFeedback:Bool):global.pc.Shader;
	/**
		Creates a procedural sphere-shaped mesh.
		
		The size and tesselation properties of the sphere can be controlled via function parameters. By
		default, the function will create a sphere centered on the object space origin with a radius of
		0.5 and 16 segments in both longitude and latitude.
		
		Note that the sphere is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the sphere's mesh.
	**/
	static function createSphere(device:global.pc.GraphicsDevice, ?opts:{ @:optional var radius : Float; @:optional var latitudeBands : Float; @:optional var longitudeBands : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	static function createStyle(cssString:Dynamic):js.html.StyleElement;
	/**
		Creates a procedural torus-shaped mesh.
		
		The size, shape and tesselation properties of the torus can be controlled via function
		parameters. By default, the function will create a torus in the XZ-plane with a tube radius of
		0.2, a ring radius of 0.3, 20 segments and 30 sides.
		
		Note that the torus is created with UVs in the range of 0 to 1. Additionally, tangent
		information is generated into the vertex buffer of the torus's mesh.
	**/
	static function createTorus(device:global.pc.GraphicsDevice, ?opts:{ @:optional var tubeRadius : Float; @:optional var ringRadius : Float; @:optional var segments : Float; @:optional var sides : Float; @:optional var calculateTangents : Bool; }):global.pc.Mesh;
	/**
		Create a URI object from constituent parts.
	**/
	static function createURI(options:{ @:optional var scheme : String; @:optional var authority : String; @:optional var host : String; @:optional var path : String; @:optional var hostpath : String; @:optional var query : String; @:optional var fragment : String; }):String;
	static final data : { };
	/**
		Initialize the Draco mesh decoder.
	**/
	static function dracoInitialize(?config:{ @:optional var jsUrl : String; @:optional var wasmUrl : String; @:optional var numWorkers : Float; @:optional var lazyInit : Bool; }):Void;
	static function drawFullscreenQuad(device:Dynamic, target:Dynamic, vertexBuffer:Dynamic, shader:Dynamic, rect:Dynamic):Void;
	/**
		Draws a screen-space quad using a specific shader.
	**/
	static function drawQuadWithShader(device:global.pc.GraphicsDevice, target:Null<global.pc.RenderTarget>, shader:global.pc.Shader, ?rect:global.pc.Vec4, ?scissorRect:global.pc.Vec4, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Draws a texture in screen-space. Mostly used by post-effects.
	**/
	static function drawTexture(device:global.pc.GraphicsDevice, texture:global.pc.Texture, ?target:global.pc.RenderTarget, ?shader:global.pc.Shader, ?rect:global.pc.Vec4, ?scissorRect:global.pc.Vec4, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Merge the contents of two objects into a single object.
	**/
	static function extend(target:Dynamic, ex:Dynamic):Dynamic;
	static function getReservedScriptNames():js.lib.Set<String>;
	/**
		This function takes a browser Touch object and returns the coordinates of the touch relative to
		the target element.
	**/
	static function getTouchTargetCoords(touch:js.html.Touch):Dynamic;
	static final http : global.pc.Http;
	static function inherits(Self:Dynamic, Super:Dynamic):{
		@:selfCall
		function call(arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic, arg6:Dynamic, arg7:Dynamic, arg8:Dynamic):Void;
		var _super : Dynamic;
		var prototype : Dynamic;
	};
	static function isCompressedPixelFormat(format:Dynamic):Bool;
	static function makeArray(arr:Dynamic):Dynamic;
	/**
		Get current time in milliseconds. Use it to measure time difference. Reference time may differ
		on different platforms.
	**/
	static final now : Dynamic;
	static final pixelFormatByteSizes : Array<Dynamic>;
	static function prefilterCubemap(options:Dynamic):Void;
	/**
		Register a existing class type as a Script Type to {@link ScriptRegistry}. Useful when defining
		a ES6 script class that extends {@link ScriptType} (see example).
	**/
	static function registerScript(script:{ var prototype : global.pc.ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : global.pc.ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }, ?name:String, ?app:global.pc.AppBase):Void;
	/**
		This function reprojects textures between cubemap, equirectangular and octahedral formats. The
		function can read and write textures with pixel data in RGBE, RGBM, linear and sRGB formats.
		When specularPower is specified it will perform a phong-weighted convolution of the source (for
		generating a gloss maps).
	**/
	static function reprojectTexture(source:global.pc.Texture, target:global.pc.Texture, ?options:{ @:optional var specularPower : Float; @:optional var numSamples : Float; @:optional var face : Float; @:optional var distribution : String; @:optional var rect : global.pc.Vec4; @:optional var seamPixels : Float; }, args:haxe.extern.Rest<Dynamic>):Void;
	static final revision : String;
	/**
		Map of engine semantics into location on device in range 0..15 (note - semantics mapping to the
		same location cannot be used at the same time) organized in a way that ATTR0-ATTR7 do not
		overlap with common important semantics.
	**/
	static final semanticToLocation : Dynamic;
	static function shFromCubemap(device:Dynamic, source:Dynamic, dontFlipX:Dynamic):js.lib.Float32Array;
	static final shaderChunks : Dynamic;
	/**
		map of engine SHADOW__*** to a string representation
	**/
	static final shadowTypeToString : Dynamic;
	/**
		Extended typeof() function, returns the type of the object.
	**/
	static function type(obj:Dynamic):String;
	static final typedArrayIndexFormats : Array<ts.AnyOf3<js.lib.Uint8ArrayConstructor, js.lib.Uint16ArrayConstructor, js.lib.Uint32ArrayConstructor>>;
	static final typedArrayIndexFormatsByteSize : Array<Float>;
	static final typedArrayTypes : Array<ts.AnyOf7<js.lib.Int8ArrayConstructor, js.lib.Uint8ArrayConstructor, js.lib.Int16ArrayConstructor, js.lib.Uint16ArrayConstructor, js.lib.Int32ArrayConstructor, js.lib.Uint32ArrayConstructor, js.lib.Float32ArrayConstructor>>;
	static final typedArrayTypesByteSize : Array<Float>;
	static final uniformTypeToName : Array<String>;
	static final version : String;
	static final vertexTypesNames : Array<String>;
}