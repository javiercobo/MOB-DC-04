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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcButton(sender: AnyObject) {
        
        self.earnRateInput * self.monthlySpendInput 
    }
    
}

