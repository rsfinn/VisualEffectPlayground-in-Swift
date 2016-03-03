//
//  AppDelegate.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 Russell Finn. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindow: MyKeyWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        mainWindow = MyKeyWindow(contentRect: NSRect.zero, styleMask: 0, backing: NSBackingStoreType.Buffered, `defer`: false, screen: nil)
        mainWindow.opaque = false
        mainWindow.movable = true
        mainWindow.movableByWindowBackground = true
        mainWindow.releasedWhenClosed = false
        mainWindow.backgroundColor = NSColor.clearColor()
        mainWindow.contentViewController = TestLauncherViewController()
        
        mainWindow.center()
        mainWindow.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

