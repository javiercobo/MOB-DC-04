//
//  ViewController.swift
//  lesson5Project
//
//  Created by Cobo, Javier on 10/12/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewControllerMain: UIViewController {

    @IBOutlet weak var IBOutlet: UILabel!
    
    @IBAction func mainButtonForSomething(sender: AnyObject) {
        self.IBOutlet.text = "CHANGED YO!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.IBOutlet.text = "Hello world"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

