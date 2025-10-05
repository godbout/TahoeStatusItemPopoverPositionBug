import SwiftUI


class AppDelegate: NSObject, NSApplicationDelegate {
    
    static var statusBarController: StatusBarController!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        Self.statusBarController = StatusBarController()
    }
    
}
