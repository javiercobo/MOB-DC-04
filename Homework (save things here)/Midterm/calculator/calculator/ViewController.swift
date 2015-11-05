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
    
    var calc = Calculate()
    var operatorWasTyped = false
    var firstNumber: Int? = 0
    var secondNumber: Int? = 0
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
        if operatorWasTyped == true {
            let secondNumber = calc.numberPressed(sender.currentTitle!!)
            self.numberDisplay.text = String(secondNumber)
            operatorWasTyped = false
        }else {
            let monkey: String? = sender.currentTitle
            
            self.numberDisplay.text = calc.numberPressed(monkey!)
        }
      
        }
        
        
            
    @IBAction func operatorPressed(sender: AnyObject) {
        firstNumber = Int(self.numberDisplay.text!)!
        operatorWasTyped = true
        self.operation = sender.currentTitle!!
        self.calc.displayedValue = ""


    }

    
    

    @IBAction func equalsPressed(sender: AnyObject) {
        var result = 0
        secondNumber = Int(self.numberDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber! + secondNumber!
        }
        if operation == "-" {
            result = firstNumber! - secondNumber!
        }
        if operation == "*" {
            result = firstNumber! * secondNumber!
        }
        if operation == "/" {
            result = firstNumber! / secondNumber!
        }
        self.firstNumber = result
        self.numberDisplay.text = String(result)
    }
    

}

