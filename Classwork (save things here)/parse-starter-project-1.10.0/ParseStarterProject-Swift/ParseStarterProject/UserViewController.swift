//
//  UserViewController.swift
//  ParseStarterProject-Swift
//
//  Created by Cobo, Javier on 11/25/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class UserViewController: UIViewController {
    
    @IBOutlet weak var usernameOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!

    @IBOutlet weak var emailOutlet: UITextField!
    
 //   @IBOutlet weak var phoneNumberOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        var user = PFUser()
        user.username = self.usernameOutlet.text!
        user.password = self.passwordOutlet.text!
        user.email = self.emailOutlet.text!
        // other fields can be set just like with PFObject
//        user["phone"] = "415-392-0202"
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
                print(errorString)
            
            } else {
                
                print("Hooray! Let them use the app now.")
            }
        }
    }

    @IBAction func loginButton(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground("myname", password:"mypass") {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
            }
        }
    }
    
    @IBAction func signOutButton(sender: AnyObject) {
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
