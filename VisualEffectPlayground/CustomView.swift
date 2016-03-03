//
//  CustomView.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 Russell Finn. All rights reserved.
//

import Cocoa

class CustomView: NSView {
    
    override var allowsVibrancy: Bool {
        get {
            return true
        }
    }
    
    override var flipped: Bool {
        get {
            return true
        }
    }

    override func drawRect(dirtyRect: NSRect) {
        /*
        * Things look good no matter where the view is located; either a vibrant appearance or
        * a non-vibrant appearance. Since the view says YES to allowsVibrancy, everything drawn in
        * drawRect will be vibrant; all colors, images, etc.
        */
        
        NSColor(deviceWhite: 0, alpha: 0.85).set()
        var path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 5, dy: 5))
        path.lineWidth = 5
        path.stroke()
        
        NSColor(deviceWhite: 0, alpha: 0.48).set()
        path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 10, dy: 10))
        path.fill()
    }
}


class CustomView2: NSView {
    
    override var allowsVibrancy: Bool {
        get {
            return true
        }
    }
    
    override var flipped: Bool {
        get {
            return true
        }
    }
    
    override func drawRect(dirtyRect: NSRect) {
        // Vibrant drawing codepath.
        if (effectiveAppearance.allowsVibrancy) {
            NSColor.labelColor().set()
            var path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 5, dy: 5))
            path.lineWidth = 5
            path.stroke()
            
            NSColor.secondaryLabelColor().set()
            path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 10, dy: 10))
            path.fill()
        } else {
            NSColor.redColor().set()
            var path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 5, dy: 5))
            path.lineWidth = 5
            path.stroke()
            
            NSColor.purpleColor().set()
            path = NSBezierPath(ovalInRect: bounds.insetBy(dx: 10, dy: 10))
            path.fill()
        }
    }
}
