//
//  ViewController.swift
//  Programmatic Views
//
//  Created by Cobo, Javier on 10/28/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let yellowBox = UIView()
        yellowBox.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        
        yellowBox.backgroundColor = UIColor.yellowColor()
        // doesn't show up because it doesn't match up to the main view
        self.view.addSubview(yellowBox)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

