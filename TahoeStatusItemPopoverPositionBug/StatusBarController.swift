import SwiftUI


class StatusBarController: NSObject, NSMenuDelegate {

    var statusItem: NSStatusItem!
    var subscriptionPopover: NSPopover!
    
    override init() {
        super.init()
        
        setUpStatusItem()
        setUpStatusItemMenu()
        setUpSubscriptionPopover()
    }
    
    
    private func setUpStatusItem() {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        statusItem.button?.image = NSImage(systemSymbolName: "menubar.arrow.up.rectangle", accessibilityDescription: "hehe")
    }
    
    private func setUpStatusItemMenu() {
        let menu = NSMenu()

        let quitMenuItem = menu.addItem(withTitle: "Quit", action: #selector(quit), keyEquivalent: "q")
        quitMenuItem.target = self

        menu.delegate = self
        statusItem.menu = menu
    }
    
    private func setUpSubscriptionPopover() {
        subscriptionPopover = NSPopover()
        subscriptionPopover.behavior = .transient
        subscriptionPopover.animates = true
        subscriptionPopover.contentViewController = NSViewController()
        subscriptionPopover.contentViewController?.view = NSHostingView(rootView: BedtimePopoverView(sentence: "hello"))
    }

    @objc func quit() {
        NSApplication.shared.terminate(self)
    }
        
}
