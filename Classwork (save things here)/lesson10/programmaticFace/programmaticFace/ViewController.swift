//
//  ViewController.swift
//  programmaticFace
//
//  Created by Cobo, Javier on 10/28/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let face = UIView()
    let eye1 = UIView()
    let eye2 = UIView()
    let mouth = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawFace()
        drawMouth()
        drawEyes()
    }
    
    func drawFace() {
        self.face.frame = CGRectMake(self.view.frame.width / 2 - 100, self.view.frame.height / 2 - 100, 200, 200 )
        face.backgroundColor = UIColor.grayColor()
        self.view.addSubview(face)
        
    }
    
    func drawMouth() {
        self.mouth.frame = CGRectMake(self.face.frame.width/2 - self.face.frame.width*3/8, self.face.frame.height / 2 + self.face.frame.height*1/4, self.face.frame.width * 3/4 , self.face.frame.height / 8)
        mouth.backgroundColor = UIColor.redColor()
        self.face.addSubview(mouth)
    }
    
    func drawEyes() {
        self.eye1.frame = CGRectMake(self.face.frame.width/2 - self.face.frame.width*5/16, self.face.frame.height / 2 - self.face.frame.height*1/4, self.face.frame.width / 4, self.face.frame.width / 4)
        eye1.backgroundColor = UIColor.blueColor()
        self.face.addSubview(eye1)
        
        self.eye2.frame = CGRectMake(self.face.frame.width/2 + self.face.frame.width*1/16, self.face.frame.height / 2 - self.face.frame.height*1/4, self.face.frame.width / 4, self.face.frame.width / 4)
        eye2.backgroundColor = UIColor.blueColor()
        self.face.addSubview(eye2)
    }
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fullScreenFace(sender: AnyObject) {
        UIView.animateWithDuration(1) { () -> Void in
            self.face.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
            self.eye1.frame = CGRectMake(self.face.frame.origin.x + 100, self.face.frame.origin.y + 100, self.face.frame.width / 8, self.face.frame.width / 8)
            self.drawMouth()
            self.drawEyes()

    }

}
}