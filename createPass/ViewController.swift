//
//  ViewController.swift
//  createPass
//
//  Created by Connor Guy on 11/9/17.
//  Copyright © 2017 Connor Guy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var websiteName: NSTextField!
    @IBOutlet weak var userPass: NSSecureTextField!
    @IBOutlet weak var generate: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.wantsLayer = true

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func awakeFromNib() {
        if self.view.layer != nil {
            let color : CGColor = CGColor.init(red: 0.4902, green: 0.7451, blue: 0.6471, alpha: 1) /* #7dbea5 */
            self.view.layer?.backgroundColor = color
        }
    }
    
    func sha256(data : Data) -> Data {
        var hash = [UInt8](repeating: 0,  count: Int(CC_SHA256_DIGEST_LENGTH))
        data.withUnsafeBytes {
            _ = CC_SHA256($0, CC_LONG(data.count), &hash)
        }
        return Data(bytes: hash)
    }


}

