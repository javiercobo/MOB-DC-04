//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//func info(name: String?, age: Int) -> String {
//    
//    if let name = name {
//    return "Your name is \(name) and you are \(age) years old."
//    }
//    else {
//        return "I don't know your name, but you are \(age) years old."
//    }
//}

func info(name: String?, age: Int) -> String {
    guard let name = name else {
    return "I don't know your name, but you are \(age) years old."
}
    return "I don't know your name, but you are \(age) years old."
}