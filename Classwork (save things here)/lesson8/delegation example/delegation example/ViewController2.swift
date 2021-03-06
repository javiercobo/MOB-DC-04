//
//  ViewController2.swift
//  delegation example
//
//  Created by Cobo, Javier on 10/21/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
// 

// This screen is passing information to the other screen. Input here, appear there.  This screen is the delegating object.

import UIKit

protocol UpdateUsernameDelegate {
    func updateUsername(name: String)
}

class ViewController2: UIViewController {

    @IBOutlet weak var newNameField: UITextField!
    
    var delegate: UpdateUsernameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveNewName(sender: AnyObject) { self.delegate?.updateUsername(self.newNameField.text!)
    self.dismissViewControllerAnimated(true, completion: nil)
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
