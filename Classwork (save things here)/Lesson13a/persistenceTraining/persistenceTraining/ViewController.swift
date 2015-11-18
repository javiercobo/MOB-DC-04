//
//  ViewController.swift
//  persistenceTraining
//
//  Created by Cobo, Javier on 11/9/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var displayData: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let myTodos = NSBundle.mainBundle().pathForResource("ToDos", ofType: "plist")
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        print(toDosArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveData(sender: AnyObject) {
        var myNewToDo: NSMutableArray?
        
        if let path = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist") {
            myNewToDo = NSMutableArray(contentsOfFile: path)
            
            myNewToDo?.addObject(userInput.text!)
            
            myNewToDo?.writeToFile(path, atomically: true)
            //having atomically set to true, it will put the text put in to a temp file so the user doesn't lose it.
            
            loadData()
        }
        }
        
        func loadData() {
            let myTodos = NSBundle.mainBundle().pathForResource("ToDos", ofType: "plist")
            let toDosArray = NSArray(contentsOfFile: myTodos!)
            print(toDosArray)
        }
    }


