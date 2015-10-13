//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Class best practices
// - each class has its own file
// - class names should always start with a capital letter

class Car {
    // class properties always defined at the top
    var doors: Int
    var engine: String
    var speed: Float
    var used: Bool
    var wheels: Int
    var milesDriven: Float
    var operational: Bool
    
    // at this point it says Car has no initializers.  Because we don't have values. Unit init function to initialize - what the users should input whenever you create a new instance of this class.
    
    init(doors: Int, engine: String, speed: Float, used: Bool, wheels: Int, milesDriven: Float = 0, operational: Bool = true){
        
        // you must repeat the types because you might not want the user to input what the final thing is.
        // Initializer: what the user inputs when creating an instance of the class, and/or setting the class defaults
        // you must have what the user input as the defaults otherwise you get an error here.
        // self.doors references doors at top of class and doors references user input
        
        self.doors = doors
        self.engine = engine
        self.speed = speed
        self.used = used
        self.wheels = wheels
        self.milesDriven = milesDriven
        self.operational = operational
    }
    
        
/*
first, you define the variables in the class (Car)
        Second, you either Init that they user will input them or define defaults
        Last, you tie the things
*/
     func upgradeSpeed(newSpeed: Float) {
            self.speed = newSpeed
            print("Your car's speed has been upgraded to \(newSpeed) mph")
    }
    func drive(distance: Float) {
        if self.operational == true{
        self.milesDriven += distance
        }else {
            print("You can't drive. Your car is not operational.")
        }
    }
    
    func flatTire() {
        self.operational = false
    }
    
    func carStatus() -> String {
        let operationalStatement = self.operational ? "" : "not"
        return "Your car is \(operationalStatement) operational and has driven \(self.milesDriven) miles"
    }
}

    var tedisCar: Car = Car(doors: 4, engine: "6 cylinders", speed: 400, used: true, wheels: 4)

// lamborghini should inherit from car class. Subclass: Superclass
// when creating new class, you must 1) define new variables 2) initialize and do self 3) define Superclass properities
class lamborghini: Car {
    var turboMode: Bool
    
    init(turboMode: Bool = false, wheels: Int) {
        self.turboMode = turboMode
        super.init(doors: 2, engine: "8 cylinders", speed: 500, used: false, wheels: wheels)
    }
}

var diablo = lamborghini(turboMode: false, wheels: 5)

diablo.engine
diablo.wheels



tedisCar.upgradeSpeed(600)
tedisCar.speed

tedisCar.milesDriven
tedisCar.drive(210)
tedisCar.milesDriven

tedisCar.carStatus()




// I'm referencing the class - tedisCar - and looking for what speed equals

var patsCar = Car (doors: 4, engine: "4 cylinders", speed: 200, used: false, wheels: 4)

//patsCar.used

var hazCar = tedisCar
hazCar.milesDriven
hazCar.milesDriven = 100

tedisCar.milesDriven


var myFirstArray = [2,5,10,15]
var mySecondArray: Array = [2,5,10,15]
myFirstArray.count
myFirstArray.append(25)

var myEmptyArray: [String] = []
myFirstArray[4]

for i in myFirstArray {
    print("Current value is \(i)")
    
}










