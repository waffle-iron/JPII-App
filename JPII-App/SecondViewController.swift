//
//  SecondViewController.swift
//  JPII-App
//
//  Created by Andrew Augustine on 5/4/16.
//  Copyright © 2016 Andrew Augustine. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https:www.google.com/calendar/embed?showTitle=0&height=900&wkst=1&bgcolor=%23FFFFFF&src=0jl2nl7idpblo0ubm8nbfav3jc%40group.calendar.google.com&color=%231B887A&src=brd9v8vce4f5903g0deju4vitk%40group.calendar.google.com&color=%236B3304&src=f7i0odmfp24e8n6n3604o5jh7o%40group.calendar.google.com&color=%238D6F47&src=7h24ob7bm8opujqlkmk2mbh958%40group.calendar.google.com&color=%23691426&src=7snpsntk9ojv1mugp182756tss%40group.calendar.google.com&color=%235F6B02&src=8tmjbf1mtkmrb1h280587u4864%40group.calendar.google.com&color=%230F4B38&src=mvpk1mr0fiiti9pcoeaa908snc%40group.calendar.google.com&color=%2328754E&src=46ojhtnjmfe0slr3br4n9jrik4%40group.calendar.google.com&color=%23AB8B00&src=4mpss5alvnpa0k08qvjfuitrgg@group.calendar.google.com&color=%232952A3&src=dkfcpqtpv88sa8ren26ih235r0%40group.calendar.google.com&color=%23060D5E&src=t85gk1veddapipu04dal8vbr2c%40group.calendar.google.com&color=%23711616&src=lmpcvb4s77an0i8a58nc30i8mo%40group.calendar.google.com&color=%23182C57&src=m8kr68mbri251fajeloqh6uris%40group.calendar.google.com&color=%23FFFFFF&src=1fpnfn2vmr4jno50kmmedp918g%40group.calendar.google.com&color=%238C500B&src=en.usa%23holiday%40group.v.calendar.google.com&color=%232952A3&ctz=America%2FNew_York"
        // Jesus Christ, that's a long link!
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reloadPage(sender: UIBarButtonItem) {
        webView.reload()
    }

    override func viewWillAppear(animated: Bool) {
        
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
    }
    
}

