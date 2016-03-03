//
//  BasicVibrantView.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 Russell Finn. All rights reserved.
//

import Cocoa

class BasicVibrantView: NSView {
    
    override var allowsVibrancy : Bool {
        get {
            return true
        }
    }

    override func drawRect(dirtyRect: NSRect) {
        NSColor.secondaryLabelColor().set()
        NSFrameRectWithWidth(bounds, 10)
    }
    
}
