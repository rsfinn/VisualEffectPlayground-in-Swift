//
//  BasicSidebarViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

class BasicSidebarViewController: NSViewController {
    @IBOutlet weak var topImageView: NSImageView?
    @IBOutlet weak var sideImageView: NSImageView?
    
    // not used in code, but present in some or all nib files:
    @IBOutlet weak var sideVisualEffectView: NSVisualEffectView?
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    convenience init(nibName: String) {
        self.init(nibName: NSNib.Name(nibName), bundle: nil)
    }
    
    override func awakeFromNib() {
        // This image will appear non-vibrant by virtue of it NOT being a template image. If it is a template image it will be vibrant.
        if let topImageView = topImageView {
            topImageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
        
        if let sideImageView = sideImageView {
            sideImageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
    }
    
}
