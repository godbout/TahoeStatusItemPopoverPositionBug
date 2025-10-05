//
//  ContentView.swift
//  TahoeStatusItemPopoverPositionBug
//
//  Created by Guillaume Leclerc on 05/10/2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack {
            Button("show popover") {
                let subscriptionPopover = AppDelegate.statusBarController.subscriptionPopover
                
                let rootView = AnyView(BedtimePopoverView(sentence: "hello"))                
                subscriptionPopover?.contentViewController?.view = NSHostingView(rootView: rootView)
                                                  
                let statusItemButton = AppDelegate.statusBarController.statusItem.button
                subscriptionPopover?.show(relativeTo: statusItemButton!.bounds, of: statusItemButton!, preferredEdge: NSRectEdge.minY)
                
                // shift the popover to the left so that it doesn't get off screen
                subscriptionPopover?.contentViewController?.view.window?.setFrameOrigin(NSPoint(x: ((subscriptionPopover?.contentViewController?.view.window?.frame.origin.x ?? 0) - 128), y: (subscriptionPopover?.contentViewController?.view.window?.frame.origin.y ?? 0)))
                subscriptionPopover?.contentViewController?.view.window?.makeKey()
            }
        }
        .padding()
    }

}
