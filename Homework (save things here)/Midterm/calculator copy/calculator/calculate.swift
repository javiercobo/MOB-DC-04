//
//  calculate.swift
//  calculator
//
//  Created by Cobo, Javier on 11/1/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import Foundation

class Calculate {
    
    var displayedValue = String()
    var savedValue = Float()
    var math = String()

    func numberPressed(number: String) -> String {
        
        
        
        if displayedValue == String(0) {
            displayedValue = String(number)
        }
        else {
            
            displayedValue = displayedValue + String(number)
        }
        return displayedValue
        
    }
    
    func equation(oper: String) -> String {
        return "hello"
    }



}