import NAPI

@_cdecl("_init_notifications")
func initNotifications(env: OpaquePointer, exports: OpaquePointer) -> OpaquePointer? {
    func subscribeToDidActivateApplicationNotification(fn: Function) throws -> Void {
        try fn.call(env, "starting subscription \(Thread.current.isMainThread)")
        NSWorkspace.shared.notificationCenter.addObserver(
            forName: NSWorkspace.didActivateApplicationNotification,
            object: nil,
            queue: nil
        ) { notification in
            if let application = notification.userInfo?["NSWorkspaceApplicationKey"] as? NSRunningApplication,
                let bundleIdentifier = application.bundleIdentifier {
                do {
                    NSLog("\(bundleIdentifier) fn:\(fn) env:\(env) main:\(Thread.current.isMainThread)")
                    try fn.call(env, bundleIdentifier)
                }
                catch let error {
                    NSLog("\(error)")
                }
            }
        }
    }
    return NAPI.initModule(env, exports, [
        .function("subscribeToDidActivateApplicationNotification", subscribeToDidActivateApplicationNotification),
    ]
}
