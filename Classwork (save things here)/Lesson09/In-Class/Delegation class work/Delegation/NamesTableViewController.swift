//
//  NamesTableViewController.swift
//  Delegation
//
//  Created by Tedi Konda on 10/26/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class NamesTableViewController: UITableViewController, UpdateTableCellDelegate {
    
    // Keep track of all names in this array
    var names = [String]()

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("namecell", forIndexPath: indexPath) 
        
        // Fill out the user textLabel of the row by grabbing the student's name
        let studentName = names[indexPath.row]
        cell.textLabel?.text = studentName

        return cell
    }
    
    
    func updateTableCell(name: String) {
        names.append(name)
        self.tableView.reloadData()
        
    }

    @IBAction func addNameSegue(sender: AnyObject) {
        let secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("addNameScreen") as!
        AddViewController
        secondVC.delegate = self
        self.presentViewController(secondVC, animated: true, completion: nil)

    }
    
    /*
    func updateTable() {
        var addName = self.storyboard?.instantiateInitialViewController("addNameSegue") as! AddViewController
        addName.delegate = self.presentViewController(addName, animated: true, completion: nil)
        
    }

    */
    

}