//
//  VibrantControlsViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 Russell Finn. All rights reserved.
//

import Cocoa

class VibrantControlsViewController: NSViewController {
    @IBOutlet weak var topImageView: NSImageView?

    convenience init() {
        self.init(nibName: nil, bundle: nil)!
    }
    
    convenience init(nibName: String) {
        self.init(nibName: nibName, bundle: nil)!
    }
    
    override func awakeFromNib() {
        if let topImageView = topImageView {
            topImageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
    }
    
}
