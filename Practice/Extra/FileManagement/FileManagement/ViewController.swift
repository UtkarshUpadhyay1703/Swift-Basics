//
//  ViewController.swift
//  FileManagement
//
//  Created by admin on 9/7/23.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var textOutlet: NSTextField!
    
    @IBAction func deleteFolder(_ sender: Any) {
        textOutlet.stringValue = LocalFileManager.instance.deleteFolder()
    }
    @IBAction func createFolder(_ sender: Any) {
        textOutlet.stringValue = LocalFileManager.instance.createFolderIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

