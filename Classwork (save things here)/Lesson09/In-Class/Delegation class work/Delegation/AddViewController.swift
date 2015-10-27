//
//  AddViewController.swift
//  Delegation
//
//  Created by Tedi Konda on 10/26/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol UpdateTableCellDelegate {
    func updateTableCell(name: String)
}

class AddViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    
    var delegate: UpdateTableCellDelegate?

    /*
    You will create a to do app. The app will have two main screens:
    1. Main screen: this will be a TableViewController listing all the tasks
    2. Add screen: this will be a UIViewController that will add a to-do task
    and pass it back to the main screen
    3. Make the background of the text boxes in the second view controller
    blue when the keyboard comes up, and red when it goes down. Start
    with UIKeyboardWillShowNotification and NSNotificationCenter.
    4. Bonus: add the ability to complete/delete tasks
    5. Bonus 2: add the ability
    */
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Little hack
        // Add a tap gesture to the screen
        // In the screenTapped method, end editing on the view and the keyboard will disappear
        let tapGesture = UITapGestureRecognizer(target: self, action: "screenTapped")
        self.view.addGestureRecognizer(tapGesture)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "makeBackgroundBlue:",
            // you have to have a colon after the selector name
            name: UIKeyboardWillShowNotification,
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "makeBackgroundRed:",
            name: UIKeyboardWillHideNotification,
            object: nil)
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        
        // Try commenting this line out and dismissing the add modal when the keyboard is present
        // It will only disappear if the modal is gone completely
        // This resignFirstResponder on the textfield makes sure the editign is done too
        nameField.resignFirstResponder()
    }
    
    func makeBackgroundBlue(notification: NSNotification) {
            self.nameField.backgroundColor = UIColor.blueColor()
            self.nameField.textColor = UIColor.whiteColor()
    }
    
    func makeBackgroundRed(notification: NSNotification) {
            self.nameField.backgroundColor = UIColor.redColor()
            self.nameField.textColor = UIColor.whiteColor()
    }
    func screenTapped() {
        view.endEditing(true)
    }
    
    
    
    @IBAction func save(sender: UIButton) {
        self.delegate?.updateTableCell(self.nameField.text!)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    func dismiss() {
        // The users decided to go back, dismiss this modal
        dismissViewControllerAnimated(true, completion: nil)
    }

}
