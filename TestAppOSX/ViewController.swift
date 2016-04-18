//
//  ViewController.swift
//  TestAppOSX
//
//  Created by Michal Stachanczyk on 18.04.2016.
//  Copyright © 2016 Michal Stachanczyk. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    
    @IBOutlet weak var webView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string: "https://todo-micstach.rhcloud.com/login");
        let requestObj = NSURLRequest(URL: url!);
        
        webView.customUserAgent = "desktop client";
        webView.mainFrame.loadRequest(requestObj);
    
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

