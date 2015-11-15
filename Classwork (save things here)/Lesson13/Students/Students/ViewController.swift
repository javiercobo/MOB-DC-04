//
//  ViewController.swift
//  Students
//
//  Created by Cobo, Javier on 11/9/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyField: UITextField!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var labelOutput: UILabel!
    
    @IBOutlet weak var storyText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let studentAttributes = NSBundle.mainBundle().pathForResource("studentsDictionary", ofType: "plist")
        let studentsDic = NSDictionary(contentsOfFile: studentAttributes!)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveStory(sender: AnyObject) {
    }
    
    @IBAction func loadStory(sender: AnyObject) {
        let path = NSTemporaryDirectory() + "mystory.txt"
//        let myStory: NSString? = NSString(contentsOfFile: path, encoding: <#T##UInt#>)
    }
    
    
    @IBAction func sendData(sender: AnyObject) {
        
        var newStudentData: NSMutableDictionary?
        
        if self.keyField.text == "age" {
            
            if let path = NSBundle.mainBundle().pathForResource("studentsDictionary", ofType: "plist") {
                newStudentData = NSMutableDictionary(contentsOfFile: path)
                
                newStudentData?.setValue(textInput.text, forKey: keyField.text!)
                
                newStudentData?.writeToFile(path, atomically: true)
                //having atomically set to true, it will put the text put in to a temp file so the user doesn't lose it.
                
                 self.labelOutput.text = String(newStudentData!)
            }
            
        }else if self.keyField.text == "gender" {
            
        }else if self.keyField.text == "height" {
            
        }else {
            self.labelOutput.text = "ERROR! DOES NOT COMPUTE!"
        }
        
            
    }



}