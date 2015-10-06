// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* this is a multiline set of code.
I can even press return to another line and keep commenting.
How awesome is that? */

// Type string
"this is a string"
"5"

// Type integers (whole numbers)
5

// Decimals/fractions are known as Floats and Doubles. Doubles are more precise
// Default is a double if type is not specified
5.25
5.234231

// Type Boolean: true false values
true
false

// spaces don't matter
var    hello = "world"


// Operations/ Operators are things like + - * /
5 + 5
25 * 48372
34.5 * 10

// modulous for the remainder
10 % 3

// to say something is not something use the ! operator
!true
!false

// var variable is a reference where the value can change, but the type cannot. So you can't make a string an integer.
// interpreted variable (string)
var name = "Christie"
name = "Jason Bourne"

// interpreted Integer
var num = 5
num = 10

// typed variable
var loc: String = "General Assembly"
var numberOfLife: Int = 42

var complexNum: Float = 3.154243425384

// Constants don't change and you implement them with let
let neverChanging = 54

// press esc to leave autocomplete
// press tab to go to the right of " when typing a string

// print with /n
print("hello world")

// print without /n in xCode 7
print ("hello with no new line", terminator: "")

// use Interpolation - insert computed value in string. Use a \(var) format
print("hello \(name)")

// Interpolation -
print("example sum \(5+5)")

// Concatination - combines things together
"hello" + " " + "world"

/* Control flow - 
1. Check statements conditionally. Compare values against other values.  if something is true/false, then execute something. If name = Tedi, print drink.  
2. Loop keeps executing until condition becomes true. */

// Conditional statements
var age = 21
if age < 21 {
    print("You cannot party!")
}else if (age >= 21) && (age < 55) {
    print("You are good to go, but you get no discounts!")
}else {
    print("Drink until you drop!")
}
// curly brackets are when you're doing things together - a block of code

// Loops - walk until you hit the wall. Keep checking the array until you find something.
var x = 0
while x < 10 {
    print("counting number \(x)")
    if x == 5 {
        print("We are at the 5th count")
        // Break exits the loop.
        break
    }
    x++
}
print(x)

// open range operator y..<x

var y = 0
x = 5
for o in y..<x {
    print("We're counting \(o)")

}


















