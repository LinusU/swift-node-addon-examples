import NAPI

func runCallback(env: OpaquePointer, fn: Function) throws -> Void {
    try fn.call(env, "hello world")
}

@_cdecl("_init_callbacks")
func initCallbacks(env: OpaquePointer, exports: OpaquePointer) -> OpaquePointer? {
    return try! Function(named: "", runCallback).napiValue(env)
}
