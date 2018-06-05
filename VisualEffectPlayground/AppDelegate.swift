//
//  AppDelegate.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindow: MyKeyWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        mainWindow = MyKeyWindow(contentRect: NSRect.zero, styleMask: [], backing: .buffered, defer: false, screen: nil)
        mainWindow.isOpaque = false
        mainWindow.isMovable = true
        mainWindow.isMovableByWindowBackground = true
        mainWindow.isReleasedWhenClosed = false
        mainWindow.backgroundColor = NSColor.clear
        mainWindow.contentViewController = TestLauncherViewController()
        
        mainWindow.center()
        mainWindow.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

