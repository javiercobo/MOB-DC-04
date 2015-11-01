//
//  NewViewController.swift
//  Programmatic Views
//
//  Created by Cobo, Javier on 10/28/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
        let yellowBox = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()



        yellowBox.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        
        yellowBox.backgroundColor = UIColor.yellowColor()
        // doesn't show up because it doesn't match up to the main view
        self.view.addSubview(yellowBox)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
