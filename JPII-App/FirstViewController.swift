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
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    
    //FUNC

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "http://beapanther.com"
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reloadPage(sender: UIBarButtonItem) {
        webView.reload()
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
    }

}

