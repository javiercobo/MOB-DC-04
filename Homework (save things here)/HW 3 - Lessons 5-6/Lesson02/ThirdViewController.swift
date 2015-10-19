//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var numberInput: UITextField!
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    

    @IBAction func calcButton(sender: AnyObject) {
        
        
        
        if let inputNumber = Int(self.numberInput.text!)
        {
        if inputNumber == 0 {
self.labelOutlet.text = "This is neither odd nor even."
        }
        else if inputNumber % 2 == 0
        {
            self.labelOutlet.text = "This number is even."
        }
        else if (inputNumber % 2 != 0)
        {
            self.labelOutlet.text = "This number is odd."
        }
        
        }
    }
    
    
}
