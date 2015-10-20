//
//  ViewController.swift
//  secretPlaybook
//
//  Created by Cobo, Javier on 10/19/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func secretViewSegue(sender: AnyObject) {
    }
    
    
    @IBAction func openTableView(sender: AnyObject) {
        self.performSegueWithIdentifier("myTrans", sender: sender)
        
    }
   
    /*
    You will create a secret playbook. The app will have three screens:
    1. Main screen. The main screen will have a button that will take the user
    to a table view controller.
    2. Table view controller that will display all of the player roster.
    3. Secret notes view. There will be no link to this view from the main view
    controller, however when the player swipes left, this view controller will
    display modally.
    4. Bonus: Error view. If the player swipes right instead of left, display a
    view controller (modally) that flashes red. This will lock out the user for
    a bad attempt. The user will only be able to dismiss this view controller
    by swiping up.
    
    */


}

