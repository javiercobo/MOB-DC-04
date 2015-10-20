//
//  CalcGoal2.swift
//  tripBuilderv1
//
//  Created by Cobo, Javier on 10/20/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import Foundation

class calcGoalClass {
    
    var depCity: String
    var arrivalCity: String
    var avgRTFlightCost: Int
    var imageURL: String
    
    init(depCity: String, arrivalCity: String, avgRTFlightCost: Int, imageURL: String){
    
    self.depCity = "Home"
    self.arrivalCity =  "Destination"
    self.avgRTFlightCost = 0
    self.imageURL = "http://www.capitalone.com"

}
    
    func calcGoal() {
        
    }
}