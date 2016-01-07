//
//  NativeViewController.swift
//  ReactNativeAnimationComparison
//
//  Created by Bryce Pavey on 5/01/2016.
//  Copyright © 2016 Bryce Pavey. All rights reserved.
//

import UIKit

class NativeViewController: UIViewController {

    @IBOutlet var trailing: NSLayoutConstraint!
    @IBOutlet var leading: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trailing.active = false
        leading.constant = 20
        self.view.layoutIfNeeded()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.forward()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func forward(){

        if(leading.active == true){
            leading.active  = false
            trailing.active = true
            trailing.constant = 20
        } else {
            trailing.active = false
            leading.active  = true
            leading.constant = 20
        }
        
        
        UIView.animateWithDuration(0.7, animations: {
            self.view.layoutIfNeeded()
            })
            {(value: Bool) -> Void in
//                self.backward()
                self.forward()
            }
    }
    
//    func backward(){
//        trailing.active = false
//        leading.active = true
//        leading.constant = 20
//        
//        UIView.animateWithDuration(0.7, animations: {
//            self.view.layoutIfNeeded()
//            })
//            {(value: Bool) -> Void in
//                self.forward()
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
