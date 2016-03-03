//
//  TestLauncherViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 The Spruce Hill Group. All rights reserved.
//

import Cocoa

class TestLauncherViewController: NSViewController {

    convenience init() {
        self.init(nibName: nil, bundle: nil)!
    }
    
    
    @IBAction
    func btnClickBasicSidebarPlusText (sender: NSButton) {
        let viewController = BasicSidebarViewController()
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusImages (sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerImageDemo")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusCustomViews (sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerCustomVibrancyDemo")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusCustomViews2 (sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerCustomVibrancyDemo2")
        presentViewControllerAsModalWindow(viewController)
    }
    
    
    @IBAction
    func btnVibrantControlsClicked (sender: NSButton) {
        let viewController = VibrantControlsViewController()
        presentViewControllerAsModalWindow(viewController)
    }

    @IBAction
    func btnVibrantColorsClicked (sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantColorsViewController")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnVibrantControlsCaveatsClicked (sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantControlsCaveatsInWindow")
        viewController.title = "Caveats In Window"
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnVibrantControlsCaveatsBehindWindowClicked (sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantControlsCaveatsBehindWindow")
        viewController.title = "Caveats Behind Window"
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnMaskImageWindowClicked (sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "MaskExampleViewController")
        viewController.title = "Masks"
        presentViewControllerAsModalWindow(viewController)
    }
    
    
    @IBAction
    func btnSampleMapsClicked (sender: NSButton) {
        let wc = SampleMapsWindowController()
        wc.showWindow(nil)
    }
}
