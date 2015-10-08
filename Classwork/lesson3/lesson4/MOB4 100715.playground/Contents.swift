//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name: String?

name = "tedi"

if name != nil {
    print("your name is \(name!)")
}else {
    print("I don't know your name yet!")
}


if name == nil {
    print("I don't know your name yet!")
}else {
    print("your name is \(name!)")
}

if let myname = name {
    print("Your name is \(myname)")
}else {
    print("Does not exist")
}

func sayHello() {
    print("hello world")
}

// Pass parameters into functions
func sayHelloName(name: String) {
    print("hello \(name)")
}

// sayHelloName("Tedi")
sayHelloName("Javi")

// Pass multiple parameters to functions
func sayHelloNameAndLastName(firstName: String, lastName: String) {
print("your first name is \(firstName)")
print("your last name is \(lastName)")
}

sayHelloNameAndLastName("Tedi","Konda")

// Function that prints out the area of a square/rectangle
// Function should print "The area is ..."

func getArea(width: Double, height: Double) -> Double{
    var area = width * height
    print("The area is \(area)")
    return area
}



getArea(25, 25)


var mySquare = getArea(25, 25)
var myRectangle = getArea(25,55)

func displayArea(area: Double) {
    print("The area is \(area)")
}

displayArea(mySquare)

mySquare

// for a return statment, you need to define -> String & you need to return something (actual value type)























