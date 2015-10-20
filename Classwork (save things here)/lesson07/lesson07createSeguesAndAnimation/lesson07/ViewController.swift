//
//  ViewController.swift
//  lesson07
//
//  Created by Cobo, Javier on 10/19/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.


//  Learning how things animate

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var permissionField: UITextField!
    
    @IBOutlet weak var colorBox: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func swipeGestureColorBox(sender: AnyObject) {
    self.view.backgroundColor = UIColor.blueColor()
       
        
    }
    
    @IBAction func swipeLeftColorBox(sender: AnyObject) {
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
    
    // we can create an animation by wrapping things with functions that Swift gives us
    
    
    
    @IBAction func changeViewBackgroundColor(sender: AnyObject) {
        
        UIView.animateWithDuration(5) { () -> Void in self.colorBox.backgroundColor = UIColor.blueColor()
            self.colorBox.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
            
        }
        
        if self.permissionField.text == "yes" {
            self.performSegueWithIdentifier("popUpSecondViewSegue", sender: sender)
        
    }

}

}

