//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Animal {
    var name: String {get}
    //when you're first defining a protocol, you might be able to change
    var fur: Bool { get }
    func makeNoise() -> String
}

protocol Hunter {
    var vegetarian: Bool {get}
    var hasClaws: Bool {get}
}

// you can extend protocols to add more info

extension Animal where Self: Hunter {
    var hasClaws: Bool { return true }
    var vegetarian: Bool { return false }
    func makeNoise() -> String {
        return "RAAAAWR"
    }
}

struct Tiger: Animal, Hunter {
    var name: String
    var fur: Bool = true
    
}

var simba = Tiger(name: "Simba", fur: true)

simba.vegetarian
simba.hasClaws


protocol Bird {
    var name: String {get}
    var feathers: Bool {get}
}

protocol Nighttime {
    var bigEyes: Bool {get}
    var canFly: Bool {get}
}

extension Bird where Self: Nighttime  {
    var feathers: Bool { return true }
    var bigEyes: Bool { return true }

}

struct Owl: Bird, Nighttime {
    var name: String
    var canFly: Bool = true
}

var hooty = Owl(name: "Hooty", canFly: true)










