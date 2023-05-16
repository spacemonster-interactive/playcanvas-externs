package playcanvas;

/**
	Store, access and delete instances of the various ComponentSystems.
**/
@:jsRequire("playcanvas", "ComponentSystemRegistry") extern class ComponentSystemRegistry extends EventHandler {
	/**
		Gets the {@link AnimComponentSystem} from the registry.
	**/
	final anim : Null<AnimComponentSystem>;
	/**
		Gets the {@link AnimationComponentSystem} from the registry.
	**/
	final animation : Null<AnimationComponentSystem>;
	/**
		Gets the {@link AudioListenerComponentSystem} from the registry.
	**/
	final audiolistener : Null<AudioListenerComponentSystem>;
	/**
		Gets the {@link AudioSourceComponentSystem} from the registry.
	**/
	final audiosource : Null<AudioSourceComponentSystem>;
	/**
		Gets the {@link ButtonComponentSystem} from the registry.
	**/
	final button : Null<ButtonComponentSystem>;
	/**
		Gets the {@link CameraComponentSystem} from the registry.
	**/
	final camera : Null<CameraComponentSystem>;
	/**
		Gets the {@link CollisionComponentSystem} from the registry.
	**/
	final collision : Null<CollisionComponentSystem>;
	/**
		Gets the {@link ElementComponentSystem} from the registry.
	**/
	final element : Null<ElementComponentSystem>;
	/**
		Gets the {@link JointComponentSystem} from the registry.
	**/
	final joint : Null<JointComponentSystem>;
	/**
		Gets the {@link LayoutChildComponentSystem} from the registry.
	**/
	final layoutchild : Null<LayoutChildComponentSystem>;
	/**
		Gets the {@link LayoutGroupComponentSystem} from the registry.
	**/
	final layoutgroup : Null<LayoutGroupComponentSystem>;
	/**
		Gets the {@link LightComponentSystem} from the registry.
	**/
	final light : Null<LightComponentSystem>;
	/**
		Gets the {@link ModelComponentSystem} from the registry.
	**/
	final model : Null<ModelComponentSystem>;
	/**
		Gets the {@link ParticleSystemComponentSystem} from the registry.
	**/
	final particlesystem : Null<ParticleSystemComponentSystem>;
	/**
		Gets the {@link RenderComponentSystem} from the registry.
	**/
	final render : Null<RenderComponentSystem>;
	/**
		Gets the {@link RigidBodyComponentSystem} from the registry.
	**/
	final rigidbody : Null<RigidBodyComponentSystem>;
	/**
		Gets the {@link ScreenComponentSystem} from the registry.
	**/
	final screen : Null<ScreenComponentSystem>;
	/**
		Gets the {@link ScriptComponentSystem} from the registry.
	**/
	final script : Null<ScriptComponentSystem>;
	/**
		Gets the {@link ScrollbarComponentSystem} from the registry.
	**/
	final scrollbar : Null<ScrollbarComponentSystem>;
	/**
		Gets the {@link ScrollViewComponentSystem} from the registry.
	**/
	final scrollview : Null<ScrollViewComponentSystem>;
	/**
		Gets the {@link SoundComponentSystem} from the registry.
	**/
	final sound : Null<SoundComponentSystem>;
	/**
		Gets the {@link SpriteComponentSystem} from the registry.
	**/
	final sprite : Null<SpriteComponentSystem>;
	/**
		Gets the {@link ZoneComponentSystem} from the registry.
	**/
	final zone : Null<ZoneComponentSystem>;
	var list : Array<Dynamic>;
	/**
		Add a component system to the registry.
	**/
	function add(system:Dynamic):Void;
	/**
		Remove a component system from the registry.
	**/
	function remove(system:Dynamic):Void;
	function destroy():Void;
	static var prototype : ComponentSystemRegistry;
}