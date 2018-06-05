//
//  DemoFaceTimeWindowController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

class DemoFaceTimeWindowController: NSWindowController {
    @IBOutlet weak var imageView: WindowMovableImageView?

    convenience init() {
        self.init(windowNibName: NSNib.Name("DemoFaceTimeWindowController"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        if let window = window {
            window.appearance = NSAppearance(named: .vibrantDark)
            window.styleMask.insert(.fullSizeContentView)
            window.titleVisibility = .hidden
            window.isMovableByWindowBackground = true
        }
        
        if let imageView = imageView {
            imageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
    }

}
