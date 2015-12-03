//
//  ViewController.swift
//  Maps and Locations
//
//  Created by Cobo, Javier on 11/30/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapOutlet: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapOutlet.mapType = MKMapType.Hybrid
        
        let initialLocation = CLLocation(latitude: 38.9048540, longitude: -77.0338120)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

