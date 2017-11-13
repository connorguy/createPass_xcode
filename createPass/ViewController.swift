//
//  ViewController.swift
//  createPass
//
//  Created by Connor Guy on 11/9/17.
//  Copyright © 2017 Connor Guy. All rights reserved.
//

import Cocoa
import CryptoSwift


class ViewController: NSViewController {

    @IBOutlet weak var websiteName: NSTextField!
    @IBOutlet weak var userPass: NSSecureTextField!
    @IBOutlet weak var newPass: NSTextField!
    @IBOutlet weak var outputPass: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a new layer for the background fill
        self.view.wantsLayer = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func awakeFromNib() {
        if self.view.layer != nil {
            // Set background color
            let color : CGColor = CGColor.init(red: 0.4902, green: 0.7451, blue: 0.6471, alpha: 1) /* #7dbea5 */
            self.view.layer?.backgroundColor = color
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        // Get user input from the text feilds
        let userWeb = String(websiteName.stringValue)
        let userPassword = String(userPass.stringValue)
        
        // Concatonate the two strings
        let prehashPassword = String(userPassword + userWeb)
     
        // Call the she256 alg on the string
        var hashPassword = prehashPassword.sha256().uppercased()
        hashPassword = hashPassword.sha256()
        
        // Shorten string legnth to 16
        // In future verion I want an option to chose length
        let newPassword = hashPassword[0..<16]
        
        // Output the new password onto the screen
        outputPass.stringValue = "New password has been copied!"
        newPass.stringValue = newPassword
        
        // Copy the new password to the clipboard
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(newPassword, forType: NSPasteboard.PasteboardType.string)
        
    }

    
}

