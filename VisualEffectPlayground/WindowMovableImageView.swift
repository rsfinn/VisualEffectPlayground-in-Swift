//
//  WindowMovableImageView.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 The Spruce Hill Group. All rights reserved.
//

import Cocoa

class WindowMovableImageView: NSView {
    
    override var mouseDownCanMoveWindow : Bool {
        get {
            return true
        }
    }

}
