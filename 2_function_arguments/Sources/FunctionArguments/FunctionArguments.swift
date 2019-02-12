import NAPI

func add(a: Double, b: Double) -> Double {
    return a + b
}

@_cdecl("_init_function_arguments")
func initFunctionArguments(env: OpaquePointer, exports: OpaquePointer) -> OpaquePointer? {
    return initModule(env, exports, [
        .function("add", add)
    ])
}
