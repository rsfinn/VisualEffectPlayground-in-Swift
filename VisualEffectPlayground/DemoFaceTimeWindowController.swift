//
//  DemoFaceTimeWindowController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 Russell Finn. All rights reserved.
//

import Cocoa

class DemoFaceTimeWindowController: NSWindowController {
    @IBOutlet weak var imageView: WindowMovableImageView?

    convenience init() {
        self.init(windowNibName: "DemoFaceTimeWindowController")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        if let window = window {
            window.appearance = NSAppearance(named: NSAppearanceNameVibrantDark)
            window.styleMask |= NSFullSizeContentViewWindowMask
            window.titleVisibility = .Hidden
            window.movableByWindowBackground = true
        }
        
        if let imageView = imageView {
            imageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
    }

}
