//
//  FiboAdderClass.swift
//  Lesson02
//
//  Created by Cobo, Javier on 10/18/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation

/*
TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/

class fiboAdderClass {
    
    var fibo1: Int
    var fibo2: Int
    var fibFinal: Int
    var indexNum: Int
    
    init( fibo1: Int, fibo2: Int, fiboFinal: Int, indexNumb: Int){
        
        self.fibo1 = 0
        self.fibo2 = 1
        self.fibFinal = 0
        self.indexNum = 0
    }
    
    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) ->Int
    
    
    {for _ in 2...indexNum {
        fibo1+fibo2 == fibFinal
        fibo1 = fibo2
        fibo2 = fibFinal
        }
        return fibFinal
        
        
    }
    
    }
    

