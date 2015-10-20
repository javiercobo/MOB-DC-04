//
//  ViewController2.swift
//  tripBuilderv1
//
//  Created by Cobo, Javier on 10/19/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    /*
    [
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Memphis, TN (MEM)",
    "avgRTFlightCost": 350,
    "imageURL": "http://i.imgur.com/0AHXIj0.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Cleveland, OH (CLE)",
    "avgRTFlightCost": 250,
    "imageURL": "http://i.imgur.com/15lUIip.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "London, England (LON)",
    "avgRTFlightCost": 1000,
    "imageURL": "http://i.imgur.com/3pu4ZxC.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Barcelona, Spain (BCN)",
    "avgRTFlightCost": 900,
    "imageURL": "http://i.imgur.com/9iNvoY3.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Cape Town, South Africa (CPT)",
    "avgRTFlightCost": 1350,
    "imageURL": "http://i.imgur.com/AbPy32G.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Cartagena, Colombia (CTG)",
    "avgRTFlightCost": 550,
    "imageURL": "http://i.imgur.com/ao1nFbm.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "San Francisco, CA (SFO)",
    "avgRTFlightCost": 550,
    "imageURL": "http://i.imgur.com/cAyKJIj.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Orlando, FL (MCO)",
    "avgRTFlightCost": 300,
    "imageURL": "http://i.imgur.com/eDGQlBP.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Miami, FL (MIA)",
    "avgRTFlightCost": 400,
    "imageURL": "http://i.imgur.com/fD75c68.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Austin, TX (AUS)",
    "avgRTFlightCost": 350,
    "imageURL": "http://i.imgur.com/FVXghd4.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Manilla, Philippines (MNL)",
    "avgRTFlightCost": 1430,
    "imageURL": "http://i.imgur.com/laQtmbv.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Dallas, TX (QFW)",
    "avgRTFlightCost": 200,
    "imageURL": "http://i.imgur.com/LkVePsy.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Aspen, CO (ASE)",
    "avgRTFlightCost": 675,
    "imageURL": "http://i.imgur.com/M43W9wp.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Maui, HI (OGG)",
    "avgRTFlightCost": 1000,
    "imageURL": "http://i.imgur.com/m8ARo1G.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Atlanta, GA (ATL)",
    "avgRTFlightCost": 275,
    "imageURL": "http://i.imgur.com/MykmKOJ.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "New York, NY (NYC)",
    "avgRTFlightCost": 225,
    "imageURL": "http://i.imgur.com/mzGpRtn.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Bangkok, Thailand (BKK)",
    "avgRTFlightCost": 1500,
    "imageURL": "http://i.imgur.com/NkYW7Hb.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Rome, Italy (ROM)",
    "avgRTFlightCost": 925,
    "imageURL": "http://i.imgur.com/otN06aO.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Berlin, Germany (BER)",
    "avgRTFlightCost": 925,
    "imageURL": "http://i.imgur.com/Sc0f9pC.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Tokyo, Japan (TYO)",
    "avgRTFlightCost": 1480,
    "imageURL": "http://i.imgur.com/tiIEiey.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Boston, MA (BOS)",
    "avgRTFlightCost": 375,
    "imageURL": "http://i.imgur.com/Um1XScX.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Charlestown, SC (CHS)",
    "avgRTFlightCost": 250,
    "imageURL": "http://i.imgur.com/UujBSCM.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Hong Kong, China (HKG)",
    "avgRTFlightCost": 1350,
    "imageURL": "http://i.imgur.com/vBn95M7.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Rio de Janeiro, Brazil (GIG, SDU)",
    "avgRTFlightCost": 800,
    "imageURL": "http://i.imgur.com/VKhEcy8.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Buenos Aires, Argentina (BUE)",
    "avgRTFlightCost": 1300,
    "imageURL": "http://i.imgur.com/VYZVc9I.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Chicago, IL (ORD)",
    "avgRTFlightCost": 175,
    "imageURL": "http://i.imgur.com/XeGphSu.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Sydney, Australia (SYD)",
    "avgRTFlightCost": 2180,
    "imageURL": "http://i.imgur.com/XgZzWoW.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Athens, Greece (ATH)",
    "avgRTFlightCost": 875,
    "imageURL": "http://i.imgur.com/XJIlTjP.jpg"
    },
    {
    "depCity": "Washington, DC (WAS)",
    "arrivalCity": "Jackson Hole, WY (JAC)",
    "avgRTFlightCost": 675,
    "imageURL": "http://i.imgur.com/Y7cL5eE.jpg"
    }
    ]
*/

    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var depCity: UILabel!
    @IBOutlet weak var arrivalCity: UILabel!
    @IBOutlet weak var avgRTFlightCost: UILabel!
    @IBOutlet weak var monthsToGoal: UILabel!
    @IBOutlet weak var estimatedArrivalMonth: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
