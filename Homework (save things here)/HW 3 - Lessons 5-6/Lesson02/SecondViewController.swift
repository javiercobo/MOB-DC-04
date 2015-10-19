//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var numberResult: UILabel!
    
    

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBAction func addButton(sender: AnyObject) {
        if let addedNumber = Int(self.enterNumber.text!)
        {
        self.numberResult.text = String( Int(numberResult.text!)! + addedNumber)
        }
        
    }
    
}