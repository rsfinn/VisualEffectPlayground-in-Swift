//
//  SystemColorView.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 The Spruce Hill Group. All rights reserved.
//

import Cocoa

class SystemColorView: NSView {
    
    // You can easily tweak this option to always show titles
    var drawTitles: Bool = false
    var drawColors: Bool = true

    override func drawRect(dirtyRect: NSRect) {
        guard let colors = NSColorList(named: "System") else { return }
        var rect = bounds
        rect.size.height = 12
        let style = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        style.alignment = .Right
        let attrs = [
            NSFontAttributeName : NSFont.systemFontOfSize(8),
            NSForegroundColorAttributeName : NSColor.labelColor(),
            NSParagraphStyleAttributeName : style
        ]
        
        for key in colors.allKeys {
            if drawColors {
                if let color = colors.colorWithKey(key) {
                    color.set()
                    NSRectFill(rect)
                }
            }
            
            if drawTitles {
                key.drawInRect(rect, withAttributes: attrs)
            }
            
            rect.origin.y += 12
        }
    }
    
}
