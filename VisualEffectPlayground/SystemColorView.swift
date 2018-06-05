//
//  SystemColorView.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

class SystemColorView: NSView {
    
    // Mark these properties "dynamic" to make them KVC-compliant
    // (so they can be set from within Interface Builder).
    dynamic var drawTitles: Bool = false    // You can easily tweak this option to always show titles
    dynamic var drawColors: Bool = true

    override func draw(_ dirtyRect: NSRect) {
        guard let colors = NSColorList(named: "System") else { return }
        var rect = bounds
        rect.size.height = 12
        let style = NSParagraphStyle.default().mutableCopy() as! NSMutableParagraphStyle
        style.alignment = .right
        let attrs = [
            NSFontAttributeName : NSFont.systemFont(ofSize: 8),
            NSForegroundColorAttributeName : NSColor.labelColor,
            NSParagraphStyleAttributeName : style
        ]
        
        for key in colors.allKeys {
            if drawColors {
                if let color = colors.color(withKey: key) {
                    color.set()
                    NSRectFill(rect)
                }
            }
            
            if drawTitles {
                key.draw(in: rect, withAttributes: attrs)
            }
            
            rect.origin.y += 12
        }
    }
    
}
