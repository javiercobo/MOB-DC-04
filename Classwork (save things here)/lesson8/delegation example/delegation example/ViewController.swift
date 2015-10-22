//
//  ViewController.swift
//  delegation example
//
//  Created by Cobo, Javier on 10/21/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UpdateUsernameDelegate {

    // put the protocol you entered in delegating object into the delegate.
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUsername(name:String){
        self.usernameLabel.text = name
    }
    
    @IBAction func editName(sender: AnyObject) {
        var secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as!
        ViewController2
        secondVC.delegate = self
        self.presentViewController(secondVC, animated: true, completion: nil)
    }

}

