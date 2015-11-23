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
    var clearWasTyped = false
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var operation = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func drawDisplay(){

        self.numberDisplay.translatesAutoresizingMaskIntoConstraints = false
        
        _ = NSLayoutConstraint(
            item: self.numberDisplay,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.25,
            constant: 0)
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
        clearWasTyped = false
      
        }
        
    @IBAction func equalsPressed(sender: AnyObject) {
        var result: Double = 0
        secondNumber = Double(self.numberDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        }
        if operation == "-" {
            result = firstNumber - secondNumber
        }
        if operation == "*" {
            result = firstNumber * secondNumber
        }
        if operation == "/" {
            result = firstNumber / secondNumber
        }
        self.firstNumber = result
        self.numberDisplay.text = String(result)
    }
    
    @IBAction func clear(sender: AnyObject) {
        calc.displayedValue = "0"
        self.numberDisplay.text = calc.displayedValue
        clearWasTyped = true
    }
    
    
    @IBAction func AC(sender: AnyObject) {
        firstNumber = 0
        calc.displayedValue = "0"
        self.numberDisplay.text = calc.displayedValue
    }
    
    @IBAction func percent(sender: AnyObject) {
        let percentNumber: Double = Double(self.numberDisplay.text!)!/100
        self.numberDisplay.text = String(percentNumber)
        
    }
    
    @IBAction func inverter(sender: AnyObject) {
        let invert: Double = -(Double(self.numberDisplay.text!)!)
        self.numberDisplay.text = String(invert)
    }
    
    @IBAction func operatorPressed(sender: AnyObject) {
        if self.clearWasTyped == false {
            firstNumber = Double(self.numberDisplay.text!)!
            operatorWasTyped = true
            self.operation = sender.currentTitle!!
            self.calc.displayedValue = ""
        }else {
            self.numberDisplay.text = String(firstNumber)
            operatorWasTyped = true
            self.operation = sender.currentTitle!!
            self.calc.displayedValue = ""
            clearWasTyped = false
    }



}
}
