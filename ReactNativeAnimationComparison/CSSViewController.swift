//
//  CSSViewController.swift
//  ReactNativeAnimationComparison
//
//  Created by Bryce Pavey on 7/01/2016.
//  Copyright © 2016 Bryce Pavey. All rights reserved.
//

import UIKit

class CSSViewController: UIViewController {

    @IBOutlet weak var animationView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myProjectBundle:NSBundle = NSBundle.mainBundle();
        
        let filePath:String = myProjectBundle.pathForResource("cssAnimation", ofType: "html")!
        
        let myURL = NSURL(string: filePath);
        let myURLRequest:NSURLRequest = NSURLRequest(URL: myURL!);
        
        animationView.loadRequest(myURLRequest)
        
        
        animationView.opaque = false
        animationView.backgroundColor = UIColor.clearColor()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
