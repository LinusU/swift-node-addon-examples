import NAPI

func hello() -> String {
    return "world"
}

@_cdecl("_init_hello_world")
func initHelloWorld(env: OpaquePointer, exports: OpaquePointer) -> OpaquePointer? {
    return initModule(env, exports, [
        .function("hello", hello)
    ])
}
