//
//  ViewController.swift
//  tripBuilderv1
//
//  Created by Cobo, Javier on 10/19/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var earnRateInput: UITextField!
    
    @IBOutlet weak var monthlySpendInput: UITextField!
    
    @IBOutlet weak var existingMilesInput: UITextField!
    
    @IBOutlet weak var calcDollarValue: UILabel!
    
    @IBOutlet weak var calcResults: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcButton(sender: AnyObject) {
        let addedEarn = Double(self.earnRateInput.text!)
        let addedSpend = Double(self.monthlySpendInput.text!)
        let addedExistingMiles = Double(self.existingMilesInput.text!)
        
        self.calcResults.text = String(12 * Int(addedEarn! * addedSpend!) + Int(addedExistingMiles!))
        
        let calcDollars = Double(self.calcResults.text!)
        
        self.calcDollarValue.text =
           String(calcDollars! / 100.00)
    }
    
    
    @IBAction func displayGoal(sender: AnyObject) {
        self.performSegueWithIdentifier("displayGoalSegue", sender: sender)
    }
    

    
}

