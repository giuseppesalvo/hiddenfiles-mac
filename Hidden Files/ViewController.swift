//
//  ViewController.swift
//  Hidden Files
//
//  Created by Ampelio on 26/07/15.
//  Copyright (c) 2015 Giuseppe Salvo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    // - - - - - - - - - - - - -
    // MARK: Parameters
    // - - - - - - - - - - - - -
    
    //Commands
    let showComm = "defaults write com.apple.finder AppleShowAllFiles YES && Killall Finder"
    let hideComm = "defaults write com.apple.finder AppleShowAllFiles NO && Killall Finder"
    
    // Classes
    let Interface = InterfaceController()
    
    // - - - - - - - - - - - - -
    // MARK: App load
    // - - - - - - - - - - - - -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // - - - - - - - - - - - - -
    // MARK: On Appear
    // - - - - - - - - - - - - -
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        //Get current window
        var window : NSWindow? = self.view.window
        Interface.window( window! )
    }

    @IBAction func showFiles(sender: AnyObject) {
        
        system( showComm )
    
    }
    
    @IBAction func hideFiles(sender: AnyObject) {
    
        system( hideComm )
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

