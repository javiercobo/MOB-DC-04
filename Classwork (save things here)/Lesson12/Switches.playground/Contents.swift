//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var animal = "dog"

switch animal {
    case "dog", "wolf":
    print("You belong to the canine class")
    case "cat", "tiger":
    print("you belong to the feline class")
    case "human":
    print("You belong to the homosapien class")
    //if you want to stop checking you use "break
    break
default:
    print("I don't know what you are")
}

enum GACampus {
    case DC
    case NY
    case SF
    case LA
    case HK
    case TX
}

var myCampus = GACampus.DC

switch myCampus {
case .NY:
    print("You go to NY.")
case .DC:
    print("you are in the best mobile class ever")
default:
    print("I don't know where you are")
}


