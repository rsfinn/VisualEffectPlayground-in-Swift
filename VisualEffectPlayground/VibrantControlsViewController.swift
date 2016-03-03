//
//  VibrantControlsViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 The Spruce Hill Group. All rights reserved.
//

import Cocoa

class VibrantControlsViewController: NSViewController {
    @IBOutlet weak var topImageView: NSImageView?

    init() {
        super.init(nibName: nil, bundle: nil)!
    }
    
    init(nibName: String) {
        super.init(nibName: nibName, bundle: nil)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        if let topImageView = topImageView {
            topImageView.image = NSImage(contentsOfFile: "/Library/Desktop Pictures/Elephant.jpg")
        }
    }
    
}
