//
//  ViewController.swift
//  persistance
//
//  Created by Cobo, Javier on 11/4/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hello: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let currentTheme = NSUserDefaults.standardUserDefaults().objectForKey("theme")

        if String(currentTheme!) == "light" {
            changeViewToLight()
        }else {
            changeViewToDark()
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeViewToDark() {
        self.view.backgroundColor = UIColor.blackColor()
        self.hello.textColor = UIColor.whiteColor()
    }
    
    func changeViewToLight() {
        self.view.backgroundColor = UIColor.whiteColor()
        self.hello.textColor = UIColor.blackColor()
        
    }

    @IBAction func lightThemeButton(sender: AnyObject) {
        changeViewToLight()
        NSUserDefaults.standardUserDefaults().setObject("light", forKey: "theme")
    }

    @IBAction func darkThemeButton(sender: AnyObject) {
        changeViewToLight()
        NSUserDefaults.standardUserDefaults().setObject("dark", forKey: "theme")
    }
}

