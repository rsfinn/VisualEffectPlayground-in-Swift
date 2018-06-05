//
//  MyKeyWindow.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

class MyKeyWindow : NSWindow
{
    override var canBecomeKey : Bool {
        get {
            return true      // Borderless windows normally can't become key
        }
    }
}
