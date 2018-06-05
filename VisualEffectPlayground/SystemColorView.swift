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
    @objc dynamic var drawTitles: Bool = false    // You can easily tweak this option to always show titles
    @objc dynamic var drawColors: Bool = true

    override func draw(_ dirtyRect: NSRect) {
        guard let colors = NSColorList(named: NSColorList.Name("System")) else { return }
        var rect = bounds
        rect.size.height = 12
        let style = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        style.alignment = .right
        let attrs = [
            NSAttributedStringKey.font : NSFont.systemFont(ofSize: 8),
            NSAttributedStringKey.foregroundColor : NSColor.labelColor,
            NSAttributedStringKey.paragraphStyle : style
        ]
        
        for key in colors.allKeys {
            if drawColors {
                if let color = colors.color(withKey: key) {
                    color.set()
                    rect.fill()
                }
            }
            
            if drawTitles {
                key.rawValue.draw(in: rect, withAttributes: attrs)
            }
            
            rect.origin.y += 12
        }
    }
    
}
