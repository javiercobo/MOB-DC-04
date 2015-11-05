//
//  ViewController.swift
//  ProgrammaticConstraints
//
//  Created by Cobo, Javier on 11/2/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var head: UIView!
    var body = UIView()
    var leftArm = UIView()
    var rightArm = UIView()
    var leftLeg = UIView()
    var rightLeg = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        drawBody()
        drawLeftArm()
        drawRightArm()
        drawLeftLeg()
        drawRightLeg()
        
        UIView.animateWithDuration(1) { () -> Void in self.view.layoutIfNeeded()
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Create Body
    func drawBody(){
        self.body.backgroundColor = UIColor.blueColor()
        self.view.addSubview(self.body)
        self.body.translatesAutoresizingMaskIntoConstraints = false
        
        let bodyWidth = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0)
  /*
        let bodyBottomPos = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
*/

        let bodyVerticalPos = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let bodyHorizontalPos = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: self.head.frame.width/4)
        
        self.view.addConstraints([bodyWidth, bodyVerticalPos, bodyHorizontalPos])
        
    }
    // MARK: Create Body
    func drawLeftArm() {
        self.leftArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.leftArm)
        self.leftArm.translatesAutoresizingMaskIntoConstraints = false
        
        let leftArmLeading = NSLayoutConstraint(
            item: self.leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)

        let leftArmTrailing = NSLayoutConstraint(
            item: self.leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        let leftArmTopPos = NSLayoutConstraint(
            item: self.leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
  
        let leftArmHeight = NSLayoutConstraint(
            item: self.leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.25,
            constant: 0)
        
        self.view.addConstraints([leftArmLeading, leftArmTrailing, leftArmTopPos, leftArmHeight])
        
    }
    
    
    
    func drawRightArm() {
        
        self.rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.rightArm)
        self.rightArm.translatesAutoresizingMaskIntoConstraints = false
        
        let rightArmLeading = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: -20)
        
        let rightArmTrailing = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        let rightArmTopPos = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightArmHeight = NSLayoutConstraint(
            item: self.rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.25,
            constant: 0)
        
        self.view.addConstraints([rightArmLeading, rightArmTrailing, rightArmTopPos, rightArmHeight])
        

        
    }
    
    func drawLeftLeg() {
       
        self.leftLeg.backgroundColor = UIColor.greenColor()
        self.view.addSubview(self.leftLeg)
        self.leftLeg.translatesAutoresizingMaskIntoConstraints = false
        
        let leftLegBottom = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let leftLegWidth = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.5,
            constant: 0)
        
        let leftLegPos = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        let leftLegHeight = NSLayoutConstraint(
            item: self.leftLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.2,
            constant: 0)
        
        self.view.addConstraints([leftLegBottom, leftLegWidth, leftLegPos, leftLegHeight])
        

    }
    
    func drawRightLeg() {
        
        self.rightLeg.backgroundColor = UIColor.greenColor()
        self.view.addSubview(self.rightLeg)
        self.rightLeg.translatesAutoresizingMaskIntoConstraints = false
        
        let rightLegBottom = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightLegWidth = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.leftLeg,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let rightLegPos = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        let rightLegHeight = NSLayoutConstraint(
            item: self.rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.leftLeg,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([rightLegBottom, rightLegWidth, rightLegPos, rightLegHeight])
        
                        updateBodyOnLeg()
        

    }
    
    func updateBodyOnLeg() {
        let bodyBottomPos = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.rightLeg,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(bodyBottomPos)
        
        
    }
    

}

