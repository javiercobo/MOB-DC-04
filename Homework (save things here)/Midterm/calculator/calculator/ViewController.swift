//
//  ViewController.swift
//  calculator
//
//  Created by Cobo, Javier on 11/1/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberDisplay: UILabel!
    
    var isTyping = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(sender: AnyObject) {
        var number = sender.currentTitle
        if isTyping {
            
            numberDisplay.text = numberDisplay.text + number
            
        }
        
    }
    
    @IBAction func equalsPressed(sender: AnyObject) {
    }
    
    @IBAction func operatorPressed(sender: AnyObject) {
    }
}

