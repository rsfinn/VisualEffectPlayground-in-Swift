//
//  TestLauncherViewController.swift
//  VisualEffectPlayground
//
//  Created by Russell Finn on 3/3/16.
//  Copyright © 2016 The Spruce Hill Group. All rights reserved.
//

import Cocoa

class TestLauncherViewController: NSViewController {

    init() {
        super.init(nibName: nil, bundle: nil)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
}
