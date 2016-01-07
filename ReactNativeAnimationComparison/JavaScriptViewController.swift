//
//  JavaScriptViewController.swift
//  ReactNativeAnimationComparison
//
//  Created by Bryce Pavey on 6/01/2016.
//  Copyright © 2016 Bryce Pavey. All rights reserved.
//

import UIKit

class JavaScriptViewController: UIViewController {
    @IBOutlet weak var animationView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myProjectBundle:NSBundle = NSBundle.mainBundle();
        
        let filePath:String = myProjectBundle.pathForResource("jsAnimation", ofType: "html")!
        
        let myURL = NSURL(string: filePath);
        let myURLRequest:NSURLRequest = NSURLRequest(URL: myURL!);
        
        animationView.loadRequest(myURLRequest)
        
        
        animationView.opaque = false
        animationView.backgroundColor = UIColor.clearColor()

        
        
        
        
//        
//        let url = NSURL [NSBundle .mainBundle() .pathForResource("JavaScriptComponents/jsAnimation.html", ofType: "html")];
//
//        let requestObj = NSURLRequest(URL: url!);
//        animationView.loadRequest(requestObj);
//        
//        animationView.opaque = false
//        animationView.backgroundColor = UIColor.clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
