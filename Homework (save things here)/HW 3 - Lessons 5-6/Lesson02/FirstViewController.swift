//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’ */
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBAction func generateTextButton(sender: AnyObject) {
        self.labelOutlet.text = "Hello, World!"
        
    }
    

    /*
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!” */
    
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var ageOutlet: UITextField!
    @IBOutlet weak var helloPersonOutlet: UILabel!
    
    // button works when you touch up outside the button
    
    @IBAction func helloPersonButton(sender: AnyObject) {
 
        let nameResult = self.nameOutlet.text
        let ageResult = self.ageOutlet.text

        self.labelOutlet.text = "Hello \(nameResult!), you are \(ageResult!) years old."
        
        /*
        TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
        */
        
        if Int(ageResult!) > 21 {
            self.helloPersonOutlet.text = "You can drink."
        }
        else if Int(ageResult!) > 18 {
            self.helloPersonOutlet.text = "You can vote."
        }
        else if Int(ageResult!) > 16 {
            self.helloPersonOutlet.text = "You can drive."
        }
        
       }
    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”
    */
    
    // This action only works when you press and hold the button.
  
    @IBAction func multipleTexts(sender: AnyObject) {
        
        let ageResult = self.ageOutlet.text
        
        if Int(ageResult!) > 21 {
            self.helloPersonOutlet.text = "You can drive, vote and drink (but not at the same time!"
        }
        else if Int(ageResult!) > 18 {
            self.helloPersonOutlet.text = "You can drive and vote."
        }
        else if Int(ageResult!) > 16 {
            self.helloPersonOutlet.text = "You can drive."
        }
        
    }
    
    
 
    
    
    
}
