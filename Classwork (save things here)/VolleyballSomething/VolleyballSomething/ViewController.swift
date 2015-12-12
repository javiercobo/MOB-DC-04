//
//  ViewController.swift
//  VolleyballSomething
//
//  Created by Cobo, Javier on 12/2/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit
import pop

class ViewController: UIViewController, POPAnimationDelegate {

    @IBOutlet weak var ball: UIImageView!
    
    @IBOutlet weak var volleyball: UIImageView!
    
    var volleyballAnimation: POPBasicAnimation?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        volleyball.userInteractionEnabled = true
        volleyball.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "ballPanned:"))
        
        let volleyballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter)
        volleyballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 250, y: 410))
        volleyballAnimation.duration = 3
        volleyballAnimation.delegate = self
        volleyball.pop_addAnimation(volleyballAnimation, forKey: nil)

    }
    func pop_animationDidStop(anim: POPAnimation!, finished: Bool) {
        print("Animation stopped")
    }
    
    func pop_animationDidStart(anim: POPAnimation!) {
        print("animationA started")
    }
    
    func pop_animationDidApply(anim: POPAnimation!) {
        print("animation applied")
    }
    
    func animateBall() {
        let volleyballAnimation = POPSpringAnimation(propertyNamed: kPOPViewCenter)
        volleyballAnimation.fromValue = NSValue(CGPoint: CGPoint(x: 250, y: 410))
            // (CGPoint: ball.center)
        volleyballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 250, y: 410))
//        volleyballAnimation.duration = 3
        volleyballAnimation.delegate = self
//        volleyballAnimation.velocity = NSValue(CGPoint: 100)
        volleyballAnimation.springBounciness = 10
        volleyball.pop_addAnimation(volleyballAnimation, forKey: nil)
        
    }
    
    func ballPanned(pan: UIPanGestureRecognizer) {
        print("panning")
        switch pan.state {
        case .Began:
            print("Began panning")
            volleyball.pop_removeAllAnimations()
        case .Changed:
            volleyball.center = pan.locationInView(view)
            print(ball.center)
        case .Ended:
            print("Stopped panning")
            animateBall()
            
        default: break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

