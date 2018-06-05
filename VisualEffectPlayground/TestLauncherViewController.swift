//
//  TestLauncherViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016, 2018 Russell Finn. All rights reserved.
//

import Cocoa

class TestLauncherViewController: NSViewController {

    convenience init() {
        self.init(nibName: nil, bundle: nil)!
    }
    
    
    @IBAction
    func btnClickBasicSidebarPlusText (_ sender: NSButton) {
        let viewController = BasicSidebarViewController()
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusImages (_ sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerImageDemo")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusCustomViews (_ sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerCustomVibrancyDemo")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnClickBasicSidebarPlusCustomViews2 (_ sender: NSButton) {
        let viewController = BasicSidebarViewController(nibName: "BasicSidebarViewControllerCustomVibrancyDemo2")
        presentViewControllerAsModalWindow(viewController)
    }
    
    
    @IBAction
    func btnVibrantControlsClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController()
        presentViewControllerAsModalWindow(viewController)
    }

    @IBAction
    func btnVibrantColorsClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantColorsViewController")
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnVibrantControlsCaveatsClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantControlsCaveatsInWindow")
        viewController.title = "Caveats In Window"
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnVibrantControlsCaveatsBehindWindowClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "VibrantControlsCaveatsBehindWindow")
        viewController.title = "Caveats Behind Window"
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnMaskImageWindowClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "MaskExampleViewController")
        viewController.title = "Masks"
        presentViewControllerAsModalWindow(viewController)
    }
    
    @IBAction
    func btnPerformanceExampleClicked (_ sender: NSButton) {
        let viewController = VibrantControlsViewController(nibName: "PerformanceExampleViewController")
        viewController.title = "Performance Example"
        presentViewControllerAsModalWindow(viewController)
    }
    
    
    @IBAction
    func btnSampleMapsClicked (_ sender: NSButton) {
        let wc = SampleMapsWindowController()
        wc.showWindow(nil)
    }
    
    @IBAction
    func btnDemoFacetimeClicked (_ sender: NSButton) {
        let wc = DemoFaceTimeWindowController()
        wc.showWindow(nil)
    }
}
