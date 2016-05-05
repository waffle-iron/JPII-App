//
//  FirstViewController.swift
//  JPII-App
//
//  Created by Andrew Augustine on 5/4/16.
//  Copyright © 2016 Andrew Augustine. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //VARS
    
    @IBOutlet weak var webView: UIWebView!
    
    //FUNC

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "http://beapanther.com"
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

