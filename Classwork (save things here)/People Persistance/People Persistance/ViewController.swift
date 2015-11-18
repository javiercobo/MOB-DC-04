//
//  ViewController.swift
//  People Persistance
//
//  Created by Cobo, Javier on 11/16/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var genderField: UITextField!
    
    @IBOutlet weak var searchFilterField: UITextField!
    
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveData(sender: AnyObject) {
        let moc = appDelegate.managedObjectContext
        let person = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: moc) as! Person
        
        person.name = nameField.text!
        person.age = Int32(ageField.text!)!
        person.gender = genderField.text!
        
        do {
            try moc.save()
        } catch _ {
            print("Could not save")
        }
    }
    
    @IBAction func loadData(sender: AnyObject) {
        let moc = appDelegate.managedObjectContext
        let fetch = NSFetchRequest(entityName: "Person")
        let nameFilter = NSPredicate(format: "name contains %@", self.searchFilterField.text!)
        // nameFilter is a Predicate is a filter mechanism
        let sortByAge = NSSortDescriptor(key: "age", ascending: true)
        fetch.sortDescriptors = [sortByAge]
        
        fetch.predicate = nameFilter
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person]{
            for person in people {
                print("\(person.name), \(person.age), \(person.gender)")
            }
        }
        
    }


}

